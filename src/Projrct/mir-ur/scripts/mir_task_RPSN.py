#!/usr/bin/env python
# -*- coding: UTF-8 -*-
import os
import threading

import tf
import sys
import cv2
import time
import rospy
import random
import pprint
import image_geometry
import message_filters
import numpy as np
from itertools import chain
from visualization_msgs.msg import Marker
from cv_bridge import CvBridge, CvBridgeError
from sensor_msgs.msg import Image, CameraInfo
from tf import TransformListener, transformations
# from  bolt_position_detector
import copy
import moveit_commander
import math
from geometry_msgs.msg import WrenchStamped, Pose,TransformStamped
import sys
# sys.path.append("/path/to/my_project")
# from my_project.utils.module import MyClass

# from PIL import Image,ImageDraw
# import numpy as np
from mir_aim_target import TrueAimTarget
from mir_move import TrueMove
from mir_clear_obstacle import TrueClearObstacle
from mir_recognition import TrueRecognition
from mir_ur_change import TrueChange

# from adjust_and_insert import TrueInsert
from mir_insert import TrueInsert

from mir_disassemble import TrueDisassemble
from mir_action import PrimAction
from kalman import Kalman
from YOLO_client_vino import YOLO_SendImg
from VAE_client import VAE_SendImg
from sensor_msgs.msg import JointState

import tf2_ros
import geometry_msgs.msg
#  新增import
import math
from queue import Queue
import select, termios, tty
import socket
import pickle
import struct
from MODBUS_client_mir import MODBUS_control
import traceback

class TSTPlanner:
    def __init__(self, camera_name, rgb_topic, depth_topic, camera_info_topic):

        self.camera_name = camera_name
        self.rgb_topic = rgb_topic
        self.depth_topic = depth_topic
        self.camera_info_topic = camera_info_topic
        self.bolt_trans_topic = '/NSPlanner/bolt_trans'

        #末端执行器
        # self.effector= sys.argv[1] if len(sys.argv) > 1 else 'tool0'
        

        self.pose = None

        self.marker_pub = rospy.Publisher('visualization_marker', Marker, queue_size=10)


        # cv2.namedWindow("Image window", cv2.WINDOW_NORMAL)
        # cv2.setMouseCallback("Image window", self.mouse_callback)

        self.br = tf2_ros.TransformBroadcaster()

        # Have we recieved camera_info and image yet?
        self.ready_ = False

        self.bridge = CvBridge()

        self.camera_model = image_geometry.PinholeCameraModel()
        rospy.loginfo(
            'Camera {} initialised, {}, , {}'.format(self.camera_name, rgb_topic, depth_topic, camera_info_topic))
        print('')

        q = 1
        self.sub_rgb = message_filters.Subscriber(rgb_topic, Image, queue_size=q)
        self.sub_depth = message_filters.Subscriber(depth_topic, Image, queue_size=q)
        self.sub_camera_info = rospy.Subscriber(camera_info_topic, CameraInfo, self.cam_info_cb)
        self.camera_model_ready = False
        self.tss = message_filters.ApproximateTimeSynchronizer([self.sub_rgb, self.sub_depth],
                                                               queue_size=30, slop=0.2)

        self.tss.registerCallback(self.callback)


        moveit_commander.roscpp_initialize(sys.argv)
        self.group = moveit_commander.MoveGroupCommander("manipulator")
        self.effector = self.group.get_end_effector_link()
        print("self.effector:",self.effector)
        self.group.set_planner_id("RRTConnectkConfigDefault")

        self.bolt_detector=YOLO_SendImg()

        self.plc_control=MODBUS_control()

        self.bolt_type_detector=VAE_SendImg()
        self.tf_listener = tf.TransformListener()

        self.stage={'have_coarse_pose':False, 'above_bolt':False,'target_aim':False, 'target_clear':True,'above_center_c':False,'target_match':False,'cramped':False,'disassembled':False}

        #初始化stage
        self.move_prim=TrueMove(self.group)
        self.aim_target_prim = TrueAimTarget(self.group)
        self.clear_obstacle_prim=TrueClearObstacle(self.group)
        self.recognition_prim = TrueRecognition(self.group)
        self.change_prim=TrueChange(self.group)
        self.insert_prim=TrueInsert(self.group)
        self.disassemble_prim=TrueDisassemble(self.group)
        self.prims = {'mate': self.aim_target_prim,
                      'push': self.clear_obstacle_prim,
                      'recognition': self.recognition_prim,
                      'change': self.change_prim,
                      'insert': self.insert_prim,
                      'move': self.move_prim,
                      'disassemble':self.disassemble_prim}
        self.action = 'sleep'
        self.all_infos = {}
        self.ret_dict = {}
        self.bolt_pose = None
        self.next_pose = None
        self.all_infos_lock = threading.Lock()
        self.prim_thread = threading.Thread(target=self.do_action)
        self.prim_execution = True
        self.shut_down = False
        self.prim_thread.start()

        # socket_client
        ip_port = ('127.0.0.1', 5051)
        self.sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.sock.connect(ip_port)

        # self.sleeve_type=None
        self.sleeve_type="hex_bolt_13"
        self.aim_bolt_type=None
        self.bolt_is_disassemble=[]
        self.move_point=[]
        self.box_center=[18.6, 5.0]
    
    # 编码图片
    def pack_image(self, frame):
        # encode_param = [int(cv2.IMWRITE_JPEG_QUALITY), 90]
        # result, frame = cv2.imencode('.jpg', frame, encode_param)
        data = pickle.dumps(frame, 0)
        size = len(data)
        packed = struct.pack(">L", size) + data
        return packed, data, size
    
    # 接收socket服务端消息
    def get_predicate_result(self):
        data = self.sock.recv(4096)
        result = pickle.loads(data)
        return result
    
    # 根据消息改变当前谓词状态
    def call_edge_predicate(self, all_info):
        action_params = ['rgb_img', 'depth_img', 'camera_model', 'timestamp']
        for param in action_params:
            if not param in all_info.keys():
                print(param, 'must give')
                return False
        packed, data, size = self.pack_image(all_info['rgb_img'])
        self.sock.sendall(packed)
        print("prim send all finished")
        result=(self.get_predicate_result())[0]
        print(result)
        # if result[0].item() > 0.8:
        #     self.stage['target_aim']=True
        #     self.stage['target_clear']=False
        if result[0].item() > 0.8:
            self.stage['target_aim']=True
            self.stage['target_clear']=True
        elif  result[1].item() > 0.8:  
            self.stage['target_aim']=True
            self.stage['target_clear']=True
        # elif  result[2].item() > 0.8:
        #     self.stage['target_aim']=False
        #     self.stage['target_clear']=False
        elif  result[2].item() > 0.8:
            self.stage['target_aim']=False
            self.stage['target_clear']=True
        elif  result[3].item() > 0.8:
            self.stage['target_aim']=False
            self.stage['target_clear']=True
        else:
            joint_states = rospy.wait_for_message("joint_states",JointState)
            joint_pose = joint_states.position
            joints = {}
            joints["elbow_joint"] = joint_pose[0]
            joints["shoulder_lift_joint"] = joint_pose[1]
            joints["shoulder_pan_joint"] = joint_pose[2]
            joints["wrist_1_joint"] = joint_pose[3]
            joints["wrist_2_joint"] = joint_pose[4]
            if (joint_pose[5] > math.pi):             
                joints["wrist_3_joint"] = joint_pose[5]-2.5*math.pi
            else:                
                joints["wrist_3_joint"] = joint_pose[5]+0.5*math.pi

            self.group.set_joint_value_target(joints)
            # plan = self.group.plan()
            plan_success, plan, planning_time, error_code = self.group.plan()
            if len(plan.joint_trajectory.points) > 0:
                self.group.execute(plan, wait=True)
                print('hand adjusted')
            else:
                print('no plan result')
            return False
        return True

    def auto_plan(self,original_stage):
        print ('start to plan')
        ori_stage=original_stage

        #建立动作原语集
        move=PrimAction('move')
        mate=PrimAction('mate')
        push=PrimAction('push')
        recognition=PrimAction('recognition')
        change=PrimAction('change')
        insert=PrimAction('insert')
        disassemble=PrimAction('disassemble')
        prim_list=(move,mate,push,insert,recognition,change,disassemble)

        #基于FIFO的规划生成方法
        pathQueue=Queue(0)
        pathQueue.put([ori_stage,[]])
        plan_is_end=False
        while not plan_is_end:
            tmp_pair=pathQueue.get()
            tmp_stage=tmp_pair[0]
            tmp_path=tmp_pair[1]
            if tmp_stage['disassembled']==True:
                pathQueue.put(tmp_pair)
                plan_is_end=True
            else:
                for primi in prim_list:
                    if primi.able(tmp_stage)==True:
                        new_stage=primi.action(tmp_stage)
                        new_path=[]
                        for n in tmp_path:
                            new_path.append(n)
                        new_path.append(primi.prim)
                        pathQueue.put([new_stage,new_path])
        path_list=[]
        while not pathQueue.empty():
            path=pathQueue.get()
            path_list.append(path[1])        

        #筛选出所有最短步数的规划方案
        min_step=100
        for path in path_list:
            if len(path)<min_step:
                min_step=len(path)
        path_list=[i for i in path_list if len(i)==min_step]
        print (path_list[0])
        return path_list[0]

    def start(self,  pose):
        # self.plc_control.set_return_zero()
        if self.action != 'sleep':
            print("Please start after previous task was done!")
            return False
        else:
            self.ret_dict['coarse_pose'] = pose
            self.stage['have_coarse_pose']= True
            self.action = 'start'
            self.bolt_pose = pose
            print ('start, coarse pose:')
            self.print_pose(pose)
            return True

    def do_action(self):
        #执行动作
        filter=Kalman(20)
        move=PrimAction('move')
        mate=PrimAction('mate')
        push=PrimAction('push')
        recognition=PrimAction('recognition')
        change=PrimAction('change')
        insert=PrimAction('insert')
        disassemble=PrimAction('disassemble')
        prim_dict={'move':move,'mate':mate,'push':push,'recognition':recognition,'change':change,'insert':insert,'disassemble':disassemble}
        
        
        while self.prim_execution:
            if self.action== 'sleep':
                rospy.sleep(1)
                continue
            else:
                if self.action == 'start':
                    print('action==start do auto_plan')
                    step_list = self.auto_plan(self.stage)
                    i = 0
                    self.action = step_list[i]
                    # self.action = 'insert'
                    print(self.action)
                if self.all_infos_lock.acquire():
                    infos = copy.deepcopy(self.all_infos)
                    self.all_infos.clear()
                    # print('clear in prim')
                    self.all_infos_lock.release()
                    if self.action in prim_dict.keys():
                        #检测pre是否满足
                        if self.action in ['move','disassemble']:
                            pre_is_ok=True
                        else:
                            rospy.sleep(0.1)
                            # pre_is_ok=self.call_edge_predicate(infos)
                            pre_is_ok=True
                        for pre in (prim_dict[self.action]).pre:
                            if not self.stage[pre]==(prim_dict[self.action].pre)[pre]:
                                pre_is_ok=False
                                break
                        if pre_is_ok==True:
                            prim = self.prims[self.action]
                            #execute primitive       
                            infos['planner_handler']=self
                            if self.action=='change':
                                self.aim_bolt_type="out_hex_bolt_8"
                                self.ret_dict = prim.action(infos, self.ret_dict,filter,self.bolt_detector,self.plc_control,self.sleeve_type,self.aim_bolt_type)
                            elif self.action=='recognition':
                                self.ret_dict = prim.action(infos, self.ret_dict,filter,self.bolt_detector,self.bolt_type_detector)
                                self.aim_bolt_type="out_hex_bolt_8"
                            elif self.action=='disassemble':
                                self.ret_dict = prim.action(infos, self.ret_dict,filter,self.bolt_detector,self.plc_control)
                            elif self.action=='insert':
                                self.ret_dict = prim.action(infos, self.ret_dict,filter,self.bolt_detector,self.plc_control,self.sleeve_type)
                            elif self.action=='mate':
                                self.ret_dict = prim.action(infos, self.ret_dict,filter,self.bolt_detector,self.bolt_is_disassemble)
                            elif self.action=='move':
                                # self.ret_dict = prim.action(infos, self.ret_dict,filter,self.bolt_detector,self.move_point,self.box_center)
                                self.ret_dict = prim.action(infos, self.ret_dict,filter,self.bolt_detector)

                            else:
                                self.ret_dict = prim.action(infos, self.ret_dict,filter,self.bolt_detector)
                            print(self.action+"_is_finished")
                            print ("iterated %d times"%(filter.itr_time))
                            filter.plot()
                            filter.reset()
                            if 'bolt_pose' in self.ret_dict.keys():
                                self.bolt_pose = self.ret_dict['bolt_pose']
                            if 'bolt_type' in self.ret_dict.keys():
                                self.aim_bolt_type=self.ret_dict['bolt_type']
                                if self.ret_dict['bolt_type']==self.sleeve_type:
                                    self.stage['target_match']=True
                            if 'sleeve_type' in self.ret_dict.keys():
                                self.sleeve_type=self.ret_dict['sleeve_type']
                            #update effect
                            for eff in (prim_dict[self.action]).eff:
                                self.stage[eff]=(prim_dict[self.action].eff)[eff]
                            i = i + 1
                            if self.action=='disassemble':
                                bolt_is_disassemble_target = self.transform_pose("base_footprint",
                                    "map",
                                    self.bolt_pose,
                                    rospy.Time(0) )
                                self.bolt_is_disassemble.append(bolt_is_disassemble_target)
                                filter.release()
                                filter=Kalman(20)
                                self.stage={'have_coarse_pose':True, 'above_bolt':False,'target_aim':False, 'target_clear':True,'above_center_c':False,'target_match':False,'cramped':False,'disassembled':False}
                                if not self.next_pose is None:
                                    self.ret_dict['coarse_pose']=self.next_pose
                                    print('next pose')
                                    print(self.next_pose)
                                else:
                                    print("No next pose")
                                print('reaction==start do auto_plan')
                                step_list = self.auto_plan(self.stage)
                                i = 0
                            self.action=step_list[i]
                        else:
                            #若pre不满足，重新生成规划方案
                            step_list=self.auto_plan(self.stage)
                            i=0
                            self.action=step_list[i]
                    rospy.sleep(1)

    def get_latest_infos(self):
        print('get_latest_infos')
        rospy.sleep(0.1)
        if self.all_infos_lock.acquire():
            infos = copy.deepcopy(self.all_infos)
            #print(self.all_infos.keys())
            self.all_infos.clear()
            #print('clear in get latest')
            self.all_infos_lock.release()
            #print(infos)
            return infos
        else:
            return None

    def cam_info_cb(self, msg):
        self.camera_model.fromCameraInfo(msg)
        self.camera_model_ready = True
        self.sub_camera_info.unregister()

    def callback(self, rgb_msg, depth_msg):
        try:
            if not self.camera_model_ready:
                print("camera info is not ready")
                return
            img = self.bridge.imgmsg_to_cv2(rgb_msg, "bgr8")
            depth_img = self.bridge.imgmsg_to_cv2(depth_msg, '16UC1')
            ts = rospy.Time.now()
            # rospy.loginfo('receiving image')
            if self.all_infos_lock.acquire():
                # print("lock")
                self.all_infos = {'rgb_img': img, 'depth_img': depth_img,
                                  'camera_model': self.camera_model, 'timestamp': ts}
                #print(self.all_infos.keys())
                self.all_infos_lock.release()

        except Exception as err:
            print("exception happen in message call back:", err)

    def __del__(self):
        self.prim_execution = False
        self.prim_thread.join()
    
    def print_pose(self,pose):
        q = (pose.orientation.x, pose.orientation.y, pose.orientation.z, pose.orientation.w)
        rpy = tf.transformations.euler_from_quaternion(q)
        print ('%s: position (%.2f %.2f %.2f) orientation (%.2f %.2f %.2f %.2f) RPY (%.2f %.2f %.2f)' % \
            (self.effector, pose.position.x, pose.position.y, pose.position.z, \
            pose.orientation.x, pose.orientation.y, pose.orientation.z, pose.orientation.w, \
            rpy[0], rpy[1], rpy[2]))

    def reset_arm(self):
        joints = {}
        joints["elbow_joint"] = math.pi/4.
        joints["shoulder_lift_joint"] = -math.pi/2.
        joints["shoulder_pan_joint"] = math.pi/2.
        joints["wrist_1_joint"] = -math.pi/4.
        joints["wrist_2_joint"] = -math.pi/2.
        joints["wrist_3_joint"] = 0.
        self.group.set_joint_value_target(joints)
        # plan = self.group.plan()
        plan_success, plan, planning_time, error_code = self.group.plan()
        if len(plan.joint_trajectory.points) > 0:
            self.group.execute(plan, wait=True)
            self.print_pose(self.group.get_current_pose(self.effector).pose)
            return True
        else:
            return False
    
    def transform_pose(self, src_frame, tgt_frame, pose_pt, ts):
        '''
        transform pose of give point from 'src_frame' to 'tgt_frame'
        '''
        ps_src = geometry_msgs.msg.PoseStamped()
        try:
            # print ('transform pose') 
            # print (ts)
            self.tf_listener.waitForTransform(tgt_frame, src_frame, ts, rospy.Duration(3))
            ps_src.header.frame_id = src_frame
            ps_src.header.stamp = ts
            ps_src.pose = pose_pt

            ps_tgt = self.tf_listener.transformPose(tgt_frame, ps_src)
            # print('success')
            return ps_tgt.pose
        except:
            traceback.print_exc()
            return None
    
    def move_point_make(self,x,y):
        ex=[[-0.45,-1.0],[-0.225,-1.0],[0,-1.0],[0.225,-1.0],[0.45,-1.0],
            [-0.45,1.0],[-0.225,1.0],[0,1.0],[0.225,1.0],[0.45,1.0]]
        for i in range(len(ex)):
            self.move_point.append([x+ex[i][0],y+ex[i][1]])

if __name__ == '__main__':

    try:
        rospy.init_node('tstplanner-moveit', anonymous=True)

        planner = TSTPlanner('camera', '/camera/color/image_raw', '/camera/aligned_depth_to_color/image_raw', '/camera/color/camera_info')
        # quat = tf.transformations.quaternion_from_euler(-math.pi, 0, 0.5*math.pi)
        # planner.box_center=[18.6, 5.0]
        # planner.move_point_make(planner.box_center[0],planner.box_center[1])
        quat = tf.transformations.quaternion_from_euler(-math.pi, 0, -0.5*math.pi)
        pose_target = geometry_msgs.msg.Pose()


        # # zuijin jiao
        # pose_target.position.x = 17.85
        # pose_target.position.y = 4.42

        # zuijin jiao2
        pose_target.position.x = 17.95
        pose_target.position.y = 4.37

        # zuiyuan jiao        
        # pose_target.position.x = 19.1
        # pose_target.position.y = 5.6

        # paishe jiao        
        # pose_target.position.x = 17.95
        # pose_target.position.y = 5.6

        
        pose_target.position.z = 1.1423



        pose_target.orientation.x = quat[0]
        pose_target.orientation.y = quat[1]
        pose_target.orientation.z = quat[2]
        pose_target.orientation.w = quat[3]
        planner.sleeve_type="hex_bolt_8"
        pose_target = planner.transform_pose("map",
                                    "base_footprint",
                                    pose_target,
                                    rospy.Time(0) )
        print("pose_target:",pose_target)
        planner.start(pose_target)

        while not rospy.is_shutdown():
            rospy.spin()
        
        del planner
        
    except rospy.ROSInterruptException:
        print("Shutting down")
        cv2.destroyAllWindows()