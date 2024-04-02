#!/usr/bin/env python
# -*- coding: UTF-8 -*-
import importlib
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
import tf2_ros
import geometry_msgs.msg
import traceback
import random
import math

from PIL import Image
# from PIL import Image,ImageDraw
# import numpy as np 
# from bolt_detector import BoltDetector
from rigid_transform_3D import rigid_transform_3D
from mir_base import TrueBase

class TrueAimTarget(TrueBase):
    # 每轮卡尔曼之后，因为螺栓的坐标有更新，所以会重新建立一个新的real_bolt_frame（旧的是bolt_frame），这个操作是在base里定义的。
    # 新的系依旧会被发布到tf中，并在aimtarget中使用get_tgt_pose_in_world_frame计算得到滤波后的螺栓真pose
    def get_tgt_pose_in_world_frame(self,all_info):

        # 这里的偏移量是为了让相机正对着螺栓，这两个补偿跟相机的参数（镜头位置）有关系。
        tgt_pose_in_real_frame = geometry_msgs.msg.Pose()
        tgt_pose_in_real_frame.position.x = -self.x_shift
        tgt_pose_in_real_frame.position.y = -self.y_shift + 0.065
        tgt_pose_in_real_frame.position.z = -self.z_shift - 0.09

        # q = tf.transformations.quaternion_from_euler(0, 0, 0.1*math.pi)
        q = tf.transformations.quaternion_from_euler(0, 0, 0)        
        tgt_pose_in_real_frame.orientation.x = q[0]
        tgt_pose_in_real_frame.orientation.y = q[1]
        tgt_pose_in_real_frame.orientation.z = q[2]
        tgt_pose_in_real_frame.orientation.w = q[3]
        tgt_pose_in_world_frame = self.transform_pose("real_bolt_frame",
                                                      "base_footprint",
                                                      tgt_pose_in_real_frame,
                                                      all_info['bolt_ts'] )
        # self.print_pose(tgt_pose_in_world_frame, 'tgt_pose_in_world_frame')
        print (tgt_pose_in_world_frame)
        (r, p, y) = tf.transformations.euler_from_quaternion([tgt_pose_in_world_frame.orientation.x, tgt_pose_in_world_frame.orientation.y, tgt_pose_in_world_frame.orientation.z, tgt_pose_in_world_frame.orientation.w])
        print(r,p,y)
        return tgt_pose_in_world_frame
    
    # 这个函数用于在视野里什么都没识别到，要纯随机一个位置 ，然后再次尝试
    def adjust_pose_in_world_frame(self):
        tgt_pose_in_effector_frame = geometry_msgs.msg.Pose()
        tgt_pose_in_effector_frame.position.x = 0.005*(random.random()-0.5)
        tgt_pose_in_effector_frame.position.y = 0.005*(random.random()-0.5)
        tgt_pose_in_effector_frame.position.z = 0.005*(random.random()-0.5)
        q = tf.transformations.quaternion_from_euler(0, 0, 0)
        tgt_pose_in_effector_frame.orientation.x = q[0]
        tgt_pose_in_effector_frame.orientation.y = q[1]
        tgt_pose_in_effector_frame.orientation.z = q[2]
        tgt_pose_in_effector_frame.orientation.w = q[3]
        tgt_pose_in_world_frame = self.transform_pose(self.effector,
                                                        "base_footprint",
                                                        tgt_pose_in_effector_frame,
                                                        rospy.Time.now()) 
        return tgt_pose_in_world_frame
    
    # 这个函数没有使用，也是为了在视野里什么都没识别到时进行保障
    def set_global_position(self):
        global_position = geometry_msgs.msg.Pose()
        global_position.position.x = -0.059
        global_position.position.y = 0.379
        global_position.position.z = 0.57
        q = tf.transformations.quaternion_from_euler(-math.pi, 0, -0.5*math.pi)
        global_position.orientation.x = q[0]
        global_position.orientation.y = q[1]
        global_position.orientation.z = q[2]
        global_position.orientation.w = q[3] 
        return global_position

    def action(self, all_info, pre_result_dict,kalman,yolo,bolt_is_dis_old):
        for param in self.action_params:
            if not param in all_info.keys():
                print(param, 'must give')
                return False
        print("param satified, start to mate")
        planner = all_info['planner_handler']
        np_collected=False

        # 用于存放已经拆过的螺栓坐标（存入的应该是当前机械臂坐标下的螺栓坐标，
        # 因此需要把bolt_is_dis_old（世界坐标系下的历史记忆螺栓坐标）转到base_footprint下）
        bolt_is_dis=[]
        for i in range(len(bolt_is_dis_old)):
            target = self.transform_pose("map",
                                    "base_footprint",
                                    bolt_is_dis_old[i],
                                    rospy.Time(0) )
            bolt_is_dis.append(target)
        print("bolt_is_dis:",bolt_is_dis,"!!!!!!!!")

        # 这里开始卡尔曼前的一些准备工作
        while not kalman.finished:
            rospy.sleep(0.2)
            latest_infos = planner.get_latest_infos()
            # print (latest_infos.keys())        
            raw_img=latest_infos['rgb_img']
            height=raw_img.shape[0]
            width =raw_img.shape[1]
            r_height=540
            r_width =960
            # print(height,width)
            crop_img= cv2.copyMakeBorder(raw_img,int((r_height-height)/2),int((r_height-height)/2),int((r_width-width)/2),int((r_width-width)/2),cv2.BORDER_CONSTANT,value=0)
            # crop_img=raw_img[int(0.25*height):int(0.75*height),int(0.5*(width-0.5*height)):int(0.5*(width+0.5*height))]
            # crop_img=raw_img[:,int(0.5*(width-height)):int(0.5*(width+height))]
            detect_ret=yolo.finish_YOLO_detect(crop_img)

            # 卡尔曼计数器
            s=kalman.itr_sum

            if detect_ret: #如果yolo返回的有值
                circlesbox=[]
                # for bolt in detect_ret[1].keys():
                if 'bolt' in detect_ret[1].keys():
                        print('bolt center success')
                        circlesbox.extend(detect_ret[1]['bolt'])
                # if 'screw' in detect_ret[1].keys():
                #     print('screw success')
                #     circlesbox.extend(detect_ret[1]["screw"])
                # if 'nut' in detect_ret[1].keys():
                #     print('nut success')
                #     circlesbox.extend(detect_ret[1]["nut"])                
                #circle = self.findBestMatchCircle(circles)

                # x = circle[1]+int(0.5*(width-0.5*height))
                # y = circle[0]+int(0.25*height)
                # x=circle[1]+int(0.5*(width-height))
                # y=circle[0]
                if (s==0):
                    # circle = self.findBestMatchCircle(circles) 
                    min_dist=100
                    is_dis_bolt=False
                    curr_pose= self.group.get_current_pose(self.effector).pose #拿到当前末端执行器的pose，用来找哪个螺栓距离tool_0最近，哪个近优先拆哪个
                    conv_pose=None
                    for screw in circlesbox:
                        # self.add_bolt_frame(screw[0]-(r_width-width)/2,screw[1]-(r_height-height)/2, latest_infos)
                        screw[0] = screw[0]-(r_width-width)/2
                        screw[2] = screw[2]-(r_width-width)/2
                        screw[1] = screw[1]-(r_height-height)/2
                        screw[3] = screw[3]-(r_height-height)/2                        
                        self.add_bolt_frameV2(screw, latest_infos)
                        bolt_pose=self.get_bolt_pose_in_world_frame(latest_infos)
                        for is_dis in bolt_is_dis:
                                dis_diff=math.sqrt(pow(bolt_pose.position.x - is_dis.position.x ,2)+pow(bolt_pose.position.y - is_dis.position.y ,2))
                                print("dis_diff",dis_diff)

                                # 世界坐标系下，看看距离是否小于0.021，小的话认为这颗是拆过的。
                                if dis_diff < 0.021:
                                    is_dis_bolt=True
                                print("is_dis_bolt",is_dis_bolt)

                        # 如果是没有拆过的，那么算一下哪个螺栓距离tool_0最近，哪个近优先拆哪个
                        if is_dis_bolt==False:
                            temp_dist=math.sqrt(pow(bolt_pose.position.x - curr_pose.position.x ,2)+pow(bolt_pose.position.y - curr_pose.position.y ,2))            
                            if (temp_dist<min_dist):
                                min_dist=temp_dist

                                conv_pose = bolt_pose 
                                # 如果这里报错，逻辑是因为，第一次滤波，如果拍照后YOLO只识别到了第n颗，没有识别到第n+1颗，
                                # 那么拆完第n后，视野里的全部是已经拆过的，没有bolt_pose可以赋值给conv_pose了，那么直接送进卡尔曼就会报错。

                        is_dis_bolt=False
                    if conv_pose==None:
                        conv_pose=curr_pose
                        conv_pose.position.x+=0.02
                        

                    real_pose=kalman.iteration(conv_pose)

                    # 按照卡尔曼的结果real_pose，调整一下螺栓坐标系
                    self.adjust_bolt_frame(real_pose,latest_infos)
                    ee_pose=self.get_tgt_pose_in_world_frame(latest_infos)

                    # 下一次滤波的点，就在ee_pose这里了，直接移过去。
                    if not self.set_arm_pose(self.group, ee_pose, self.effector):
                        print("failed")
                        print(curr_pose)
                
                # 第二次往后的滤波都在此处
                else:
                    min_diff=100
                    coarse_pose_list=[]
                    temp_diff_list=[]
                    is_dis_bolt=False
                    print("bolt_is_dis",bolt_is_dis)
                    for screw in circlesbox:
                        # self.add_bolt_frame(screw[0]-(r_width-width)/2,screw[1]-(r_height-height)/2, latest_infos)
                        screw[0] = screw[0]-(r_width-width)/2
                        screw[2] = screw[2]-(r_width-width)/2
                        screw[1] = screw[1]-(r_height-height)/2
                        screw[3] = screw[3]-(r_height-height)/2
                        self.add_bolt_frameV2(screw, latest_infos)
                        bolt_pose=self.get_bolt_pose_in_world_frame(latest_infos)
                        former_pose=kalman.get_former_pose()
                        # temp_diff=math.sqrt(pow(screw_pose.position.x - former_pose.position.x ,2)+pow(screw_pose.position.y - former_pose.position.y ,2)+pow(screw_pose.position.z- former_pose.position.z,2))
                        temp_diff=math.sqrt(pow(bolt_pose.position.x - former_pose.position.x ,2)+pow(bolt_pose.position.y - former_pose.position.y ,2))                              
                        
                        # find self position again
                        if (temp_diff<min_diff):
                            min_diff=temp_diff

                            # 先把第一次滤波的世界坐标系下的坐标存下来，方便后续对当前这一颗的滤波
                            near_pose=bolt_pose

                        # Screws recognized by the camera, (except for yourself) first calculate all distances, write the distances in a list, and subsequently find the closest one that hasn't been disassembled
                        # 这里第二次滤波开始时，先判断视野里面所有的螺栓（除了自己以外的，滤自己的距离temp_diff 不会大于 0.02）哪些是没拆过的，距离又是如何
                        # 这样做的目的是为了在第二次开始时就确定下一颗的坐标。

                        if (temp_diff > 0.02):
                            for is_dis in bolt_is_dis:
                                dis_diff=math.sqrt(pow(bolt_pose.position.x - is_dis.position.x ,2)+pow(bolt_pose.position.y - is_dis.position.y ,2))
                                print("dis_diff",dis_diff)
                                
                                if dis_diff < 0.021:
                                    is_dis_bolt=True
                                print("is_dis_bolt",is_dis_bolt)
                            if is_dis_bolt==False:
                                coarse_pose_list.append(bolt_pose)
                                temp_diff_list.append(temp_diff)
                        is_dis_bolt=False

                    # 如果np_collected==False表明还没找到下一颗，temp_diff_list不为空就表明第一次YOLO识别到了除自己以外的有可能的下一颗，那就找下一颗吧
                    if  np_collected==False and (not temp_diff_list==[]):
                        # print("coarse_pose_list:",coarse_pose_list)
                        # print("temp_diff_list:",temp_diff_list)

                        # print(temp_diff_list)
                        # print(coarse_pose_list)
                        # print(temp_diff_list.index(min(temp_diff_list)))
                        # print(coarse_pose_list[temp_diff_list.index(min(temp_diff_list))])


                        coarse_pose = geometry_msgs.msg.Pose()
                        # if  bolt_pose.position.x >0 and  bolt_pose.position.x <0.02 :
                        #     coarse_pose.position.x=0.08
                               
                        # coarse_pose.position.x = bolt_pose.position.x-0.02
                        # coarse_pose.position.y = bolt_pose.position.y-0.02
                        coarse_pose.position.x = coarse_pose_list[temp_diff_list.index(min(temp_diff_list))].position.x
                        coarse_pose.position.y = coarse_pose_list[temp_diff_list.index(min(temp_diff_list))].position.y
                        coarse_pose.position.z = 1.15
                        print("coarse_pose_list:!!!!!!!!!!!!!!!!!",coarse_pose_list)
                        print("temp_diff_list:!!!!!!!!!!!!!!!!!",temp_diff_list)

                        # q = tf.transformations.quaternion_from_euler(-math.pi, 0, 0.5*math.pi)
                        q = tf.transformations.quaternion_from_euler(-math.pi, 0, -0.5*math.pi)
                        coarse_pose.orientation.x = q[0]
                        coarse_pose.orientation.y = q[1]
                        coarse_pose.orientation.z = q[2]
                        coarse_pose.orientation.w = q[3]

                        planner.next_pose=coarse_pose
                        print("next_pose",coarse_pose)
                        # rospy.sleep(30)
                        np_collected=True

                        # if (temp_diff > 0.02) and (temp_diff < 0.15) and (np_collected==False):
                        #     coarse_pose = geometry_msgs.msg.Pose()
                        #     # if  bolt_pose.position.x >0 and  bolt_pose.position.x <0.02 :
                        #     #     coarse_pose.position.x=0.08
                               
                        #     # coarse_pose.position.x = bolt_pose.position.x-0.02
                        #     # coarse_pose.position.y = bolt_pose.position.y-0.02
                        #     coarse_pose.position.x = bolt_pose.position.x-0.065
                        #     coarse_pose.position.y = bolt_pose.position.y
                        #     coarse_pose.position.z = 0.65

                        #     # q = tf.transformations.quaternion_from_euler(-math.pi, 0, 0.5*math.pi)
                        #     q = tf.transformations.quaternion_from_euler(-math.pi, 0, -0.5*math.pi)
                        #     coarse_pose.orientation.x = q[0]
                        #     coarse_pose.orientation.y = q[1]
                        #     coarse_pose.orientation.z = q[2]
                        #     coarse_pose.orientation.w = q[3]

                        #     planner.next_pose=coarse_pose
                        #     np_collected=True
                        # if (temp_diff > 0.03) and (np_collected==False):
                        #     coarse_pose = geometry_msgs.msg.Pose()
                        #     # if  bolt_pose.position.x >0 and  bolt_pose.position.x <0.02 :
                        #     #     coarse_pose.position.x=0.08
                               
                        #     # coarse_pose.position.x = bolt_pose.position.x-0.02
                        #     # coarse_pose.position.y = bolt_pose.position.y-0.02
                        #     coarse_pose.position.x = bolt_pose.position.x-0.065
                        #     coarse_pose.position.y = bolt_pose.position.y         
                        #     coarse_pose.position.z = 0.65

                        #     # q = tf.transformations.quaternion_from_euler(-math.pi, 0, 0.5*math.pi)
                        #     q = tf.transformations.quaternion_from_euler(-math.pi, 0, -0.5*math.pi)
                        #     coarse_pose.orientation.x = q[0]
                        #     coarse_pose.orientation.y = q[1]
                        #     coarse_pose.orientation.z = q[2]
                        #     coarse_pose.orientation.w = q[3]

                        #     planner.next_pose=coarse_pose
                        #     np_collected=True
                    if  np_collected==False and (temp_diff_list==[]):
                        try_new_pose=self.adjust_pose_in_world_frame()
                        planner.next_pose=try_new_pose
                        np_collected=True

                    # 如果min_diff < 0.015，证明是滤波滤的自己，那就接着滤波
                    if (min_diff < 0.015):
                        real_pose=kalman.iteration(near_pose)
                        self.adjust_bolt_frame(real_pose,latest_infos)
                        ee_pose=self.get_tgt_pose_in_world_frame(latest_infos)
                        curr_pose= self.group.get_current_pose(self.effector).pose
                        if not self.set_arm_pose(self.group, ee_pose, self.effector):
                            print("failed")
                            print(curr_pose)
                    else:
                        if not self.set_arm_pose(self.group, curr_pose, self.effector):
                            print("recovery failed")
            else:
                if (s==0):
                    curr_pose= self.group.get_current_pose(self.effector).pose
                try_new_pose=self.adjust_pose_in_world_frame()
                if not self.set_arm_pose(self.group, try_new_pose, self.effector):
                    print("recovery failed")
                    # curr_pose= self.group.get_current_pose(self.effector).pose
                    # print(curr_pose)                
        if not real_pose is None:
            print('real pose')
            print(real_pose)
            (r, p, y) = tf.transformations.euler_from_quaternion([real_pose.orientation.x, real_pose.orientation.y, real_pose.orientation.z, real_pose.orientation.w])
            print(r,p,y)
            
            return {'success': True, 'bolt_pose': real_pose}            
        else:
            print ('location failed')
            return {'success': False}