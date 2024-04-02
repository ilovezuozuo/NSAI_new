#!/usr/bin/env python
# -*- coding: UTF-8 -*-
import importlib
import os
import threading

from torch import detach

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
from bolt_detector import BoltDetector
from rigid_transform_3D import rigid_transform_3D
from mir_base import TrueBase
from modbus_wrapper_client import ModbusWrapperClient 
from std_msgs.msg import Int32MultiArray as HoldingRegister
import time


class TrueChange(TrueBase):
    def __init__(self, group_):
        super(TrueChange, self).__init__(group_)
        # 内圈的套筒类型
        self.in_sleeve=["hex_bolt_10","in_bolt_1","hex_bolt_12",
                            "hex_bolt_13","hex_bolt_14","in_bolt_5",
                            "hex_bolt_17","hex_bolt_19"]
        # 外圈的套筒类型
        self.out_sleeve=["out_bolt_0","hex_bolt_8","out_bolt_2",
                             "out_bolt_3","out_bolt_4","out_bolt_5",
                             "out_bolt_6","out_bolt_7","out_bolt_8",
                             "out_bolt_9","out_bolt_10","out_bolt_11"]
        
        # 相对于机械臂坐标系的四个口的位置,注意，这里的z是法兰盘相对于base的高度，我们规划的也是set_arm_pose，
        # 所以这里的z是套上套筒（最低点）时，法兰盘相对于base高出的高度
        self.in_attach_target_pose=[0.03585,-0.38645,0.396]
        self.in_detach_target_pose=[-0.03066,-0.31866,0.4]
        self.out_attach_target_pose=[0.01286,-0.44521,0.396]
        self.out_detach_target_pose=[-0.00968,-0.26040,0.395]

        # 不同的螺栓对应的套筒的类型
        self.bolt2sleeve={"cross_hex_bolt_13":"hex_bolt_13",
                          "out_hex_bolt_13":"hex_bolt_13",
                          "cross_hex_bolt_8":"hex_bolt_8",
                          "out_hex_bolt_8":"hex_bolt_8",
                          "cross_hex_bolt_10":"hex_bolt_10",
                          "out_hex_bolt_10":"hex_bolt_10"}
        
    # 四个同类型函数
    # 内圈拆卸套筒
    def in_detach_sleeve(self,plc):
        quat = tf.transformations.quaternion_from_euler(-math.pi, 0,-0.5*math.pi)
        target_pose = geometry_msgs.msg.Pose()
        xx = self.in_detach_target_pose[0]
        yy = self.in_detach_target_pose[1]
        zz = self.in_detach_target_pose[2]

        # 最低位置
        target_pose.position.x = xx
        target_pose.position.y = yy
        target_pose.position.z = zz+0.005
        target_pose.orientation.x = quat[0]
        target_pose.orientation.y = quat[1]
        target_pose.orientation.z = quat[2]
        target_pose.orientation.w = quat[3]

        # 中间位置（没有转，还没对上，此时弹簧有一定的压缩）
        target_z_pose = geometry_msgs.msg.Pose()
        target_z_pose.position.x = xx
        target_z_pose.position.y = yy
        target_z_pose.position.z = zz+0.01
        target_z_pose.orientation.x = quat[0]
        target_z_pose.orientation.y = quat[1]
        target_z_pose.orientation.z = quat[2]
        target_z_pose.orientation.w = quat[3]

        # 最高位置（在口上，还没进去）
        target_pre_pose = geometry_msgs.msg.Pose()
        target_pre_pose.position.x = xx
        target_pre_pose.position.y = yy
        target_pre_pose.position.z = zz+0.12
        target_pre_pose.orientation.x = quat[0]
        target_pre_pose.orientation.y = quat[1]
        target_pre_pose.orientation.z = quat[2]
        target_pre_pose.orientation.w = quat[3]
        # target_y1_pose = geometry_msgs.msg.Pose()
        # target_y1_pose.position.x = xx
        # target_y1_pose.position.y = yy-0.002
        # target_y1_pose.position.z = zz+0.015
        # target_y1_pose.orientation.x = quat[0]
        # target_y1_pose.orientation.y = quat[1]
        # target_y1_pose.orientation.z = quat[2]
        # target_y1_pose.orientation.w = quat[3]
        # target_y2_pose = geometry_msgs.msg.Pose()
        # target_y2_pose.position.x = xx
        # target_y2_pose.position.y = yy-0.002
        # target_y2_pose.position.z = zz+0.005
        # target_y2_pose.orientation.x = quat[0]
        # target_y2_pose.orientation.y = quat[1]
        # target_y2_pose.orientation.z = quat[2]
        # target_y2_pose.orientation.w = quat[3]
        # print("target_pre_pose",target_pre_pose,"\ntarget_y1_pose",target_y1_pose,"\ntarget_y2_pose",target_y2_pose)
        while True:
            if self.set_arm_pose(self.group, target_pre_pose, self.effector):
                if self.set_arm_pose(self.group, target_z_pose, self.effector):
                    # if self.set_arm_pose(self.group, target_y1_pose, self.effector):
                            # if self.set_arm_pose(self.group, target_z_pose, self.effector):
                                    # 末端执行器开始转，电机转速150（减速器有减速比，所以真实的比较慢，大概每分钟20转左右）
                                    plc.set_effector_star_pos(150)
                                    time.sleep(3)
                                    plc.set_effector_stop()
                                    if self.set_arm_pose(self.group, target_pose, self.effector):# 往下压得更大一些，这样方便爪子扣住最上沿
                                        # if self.set_arm_pose(self.group, target_y2_pose, self.effector):
                                            break
            rospy.sleep(1)
        while True:
            # 拔出来
            if self.set_arm_pose(self.group, target_pre_pose, self.effector):
                            # plc.set_effector_star(100)
                            # time.sleep(5)
                            # plc.set_effector_stop()
                            ee_pose = self.group.get_current_pose(self.effector).pose
                            print (ee_pose)
                            (r, p, y) = tf.transformations.euler_from_quaternion([ee_pose.orientation.x, ee_pose.orientation.y, ee_pose.orientation.z, ee_pose.orientation.w])
                            print(r,p,y)
                            break
        return True
    
    # 内圈安装套筒
    def in_attach_sleeve(self,plc):
        quat = tf.transformations.quaternion_from_euler(-math.pi, 0,-0.5*math.pi)
        target_pose = geometry_msgs.msg.Pose()
        xx = self.in_attach_target_pose[0]
        yy = self.in_attach_target_pose[1]
        zz = self.in_attach_target_pose[2]
        target_pose.position.x = xx
        target_pose.position.y = yy
        target_pose.position.z = zz
        target_pose.orientation.x = quat[0]
        target_pose.orientation.y = quat[1]
        target_pose.orientation.z = quat[2]
        target_pose.orientation.w = quat[3]

        target_z_pose = geometry_msgs.msg.Pose()
        target_z_pose.position.x = xx
        target_z_pose.position.y = yy
        target_z_pose.position.z = zz+0.02
        target_z_pose.orientation.x = quat[0]
        target_z_pose.orientation.y = quat[1]
        target_z_pose.orientation.z = quat[2]
        target_z_pose.orientation.w = quat[3]

        target_pre_pose = geometry_msgs.msg.Pose()
        target_pre_pose.position.x = xx
        target_pre_pose.position.y = yy
        target_pre_pose.position.z = zz+0.12
        target_pre_pose.orientation.x = quat[0]
        target_pre_pose.orientation.y = quat[1]
        target_pre_pose.orientation.z = quat[2]
        target_pre_pose.orientation.w = quat[3]
        # target_y1_pose = geometry_msgs.msg.Pose()
        # target_y1_pose.position.x = xx
        # target_y1_pose.position.y = yy-0.001
        # target_y1_pose.position.z = zz
        # target_y1_pose.orientation.x = quat[0]
        # target_y1_pose.orientation.y = quat[1]
        # target_y1_pose.orientation.z = quat[2]
        # target_y1_pose.orientation.w = quat[3]
        # target_y2_pose = geometry_msgs.msg.Pose()
        # target_y2_pose.position.x = xx
        # target_y2_pose.position.y = yy+0.001
        # target_y2_pose.position.z = zz
        # target_y2_pose.orientation.x = quat[0]
        # target_y2_pose.orientation.y = quat[1]
        # target_y2_pose.orientation.z = quat[2]
        # target_y2_pose.orientation.w = quat[3]
        print(target_pre_pose)
        print(target_pose)

        while True:
            if self.set_arm_pose(self.group, target_pre_pose, self.effector):
                if self.set_arm_pose(self.group, target_z_pose, self.effector):
                    plc.set_effector_star_pos(200)
                    time.sleep(3)
                    plc.set_effector_stop()
                    if self.set_arm_pose(self.group, target_pose, self.effector):
                        # if self.set_arm_pose(self.group, target_y1_pose, self.effector):
                        #     if self.set_arm_pose(self.group, target_y2_pose, self.effector):
                        #         if self.set_arm_pose(self.group, target_pose, self.effector):
                                    # plc.set_effector_star(100)
                                    # time.sleep(3)
                                    # plc.set_effector_stop()
                                    break
            rospy.sleep(1)
        time.sleep(1)
        while True:
            if self.set_arm_pose(self.group, target_pre_pose, self.effector):
                            # plc.set_effector_star(100)
                            # time.sleep(5)
                            # plc.set_effector_stop()
                            break
        return True
    def out_detach_sleeve(self,plc):
        quat = tf.transformations.quaternion_from_euler(-math.pi, 0,-0.5*math.pi)
        target_pose = geometry_msgs.msg.Pose()
        xx = self.out_detach_target_pose[0]
        yy = self.out_detach_target_pose[1]
        zz = self.out_detach_target_pose[2]
        target_pose.position.x = xx
        target_pose.position.y = yy
        target_pose.position.z = zz+0.005
        target_pose.orientation.x = quat[0]
        target_pose.orientation.y = quat[1]
        target_pose.orientation.z = quat[2]
        target_pose.orientation.w = quat[3]
        target_z_pose = geometry_msgs.msg.Pose()
        target_z_pose.position.x = xx
        target_z_pose.position.y = yy
        target_z_pose.position.z = zz+0.015
        target_z_pose.orientation.x = quat[0]
        target_z_pose.orientation.y = quat[1]
        target_z_pose.orientation.z = quat[2]
        target_z_pose.orientation.w = quat[3]
        target_pre_pose = geometry_msgs.msg.Pose()
        target_pre_pose.position.x = xx
        target_pre_pose.position.y = yy
        target_pre_pose.position.z = zz+0.12
        target_pre_pose.orientation.x = quat[0]
        target_pre_pose.orientation.y = quat[1]
        target_pre_pose.orientation.z = quat[2]
        target_pre_pose.orientation.w = quat[3]
        # target_y1_pose = geometry_msgs.msg.Pose()
        # target_y1_pose.position.x = xx
        # target_y1_pose.position.y = yy-0.002
        # target_y1_pose.position.z = zz+0.015
        # target_y1_pose.orientation.x = quat[0]
        # target_y1_pose.orientation.y = quat[1]
        # target_y1_pose.orientation.z = quat[2]
        # target_y1_pose.orientation.w = quat[3]
        # target_y2_pose = geometry_msgs.msg.Pose()
        # target_y2_pose.position.x = xx
        # target_y2_pose.position.y = yy-0.002
        # target_y2_pose.position.z = zz+0.005
        # target_y2_pose.orientation.x = quat[0]
        # target_y2_pose.orientation.y = quat[1]
        # target_y2_pose.orientation.z = quat[2]
        # target_y2_pose.orientation.w = quat[3]
        # print("target_pre_pose",target_pre_pose,"\ntarget_y1_pose",target_y1_pose,"\ntarget_y2_pose",target_y2_pose)
        while True:
            if self.set_arm_pose(self.group, target_pre_pose, self.effector):
                if self.set_arm_pose(self.group, target_z_pose, self.effector):
                    # if self.set_arm_pose(self.group, target_y1_pose, self.effector):
                            # if self.set_arm_pose(self.group, target_z_pose, self.effector):
                                    # plc.set_effector_star_pos(150)
                                    # time.sleep(3)
                                    # plc.set_effector_stop()
                                    if self.set_arm_pose(self.group, target_pose, self.effector):
                                        # if self.set_arm_pose(self.group, target_y2_pose, self.effector):
                                            break
            rospy.sleep(1)
        while True:
            if self.set_arm_pose(self.group, target_pre_pose, self.effector):
                            # plc.set_effector_star(100)
                            # time.sleep(5)
                            # plc.set_effector_stop()
                            ee_pose = self.group.get_current_pose(self.effector).pose
                            print (ee_pose)
                            (r, p, y) = tf.transformations.euler_from_quaternion([ee_pose.orientation.x, ee_pose.orientation.y, ee_pose.orientation.z, ee_pose.orientation.w])
                            print(r,p,y)
                            break
        return True
    def out_attach_sleeve(self,plc):
        quat = tf.transformations.quaternion_from_euler(-math.pi, 0,-0.5*math.pi)
        target_pose = geometry_msgs.msg.Pose()
        xx = self.out_attach_target_pose[0]
        yy = self.out_attach_target_pose[1]
        zz = self.out_attach_target_pose[2]
        target_pose.position.x = xx
        target_pose.position.y = yy
        target_pose.position.z = zz+0.002
        target_pose.orientation.x = quat[0]
        target_pose.orientation.y = quat[1]
        target_pose.orientation.z = quat[2]
        target_pose.orientation.w = quat[3]
        target_z_pose = geometry_msgs.msg.Pose()
        target_z_pose.position.x = xx
        target_z_pose.position.y = yy
        target_z_pose.position.z = zz+0.013
        target_z_pose.orientation.x = quat[0]
        target_z_pose.orientation.y = quat[1]
        target_z_pose.orientation.z = quat[2]
        target_z_pose.orientation.w = quat[3]
        target_pre_pose = geometry_msgs.msg.Pose()
        target_pre_pose.position.x = xx
        target_pre_pose.position.y = yy
        target_pre_pose.position.z = zz+0.12
        target_pre_pose.orientation.x = quat[0]
        target_pre_pose.orientation.y = quat[1]
        target_pre_pose.orientation.z = quat[2]
        target_pre_pose.orientation.w = quat[3]
        target_y1_pose = geometry_msgs.msg.Pose()
        target_y1_pose.position.x = xx
        target_y1_pose.position.y = yy-0.001
        target_y1_pose.position.z = zz+0.005
        target_y1_pose.orientation.x = quat[0]
        target_y1_pose.orientation.y = quat[1]
        target_y1_pose.orientation.z = quat[2]
        target_y1_pose.orientation.w = quat[3]
        target_y2_pose = geometry_msgs.msg.Pose()
        target_y2_pose.position.x = xx
        target_y2_pose.position.y = yy+0.001
        target_y2_pose.position.z = zz+0.005
        target_y2_pose.orientation.x = quat[0]
        target_y2_pose.orientation.y = quat[1]
        target_y2_pose.orientation.z = quat[2]
        target_y2_pose.orientation.w = quat[3]
        print(target_pre_pose)
        print(target_pose)

        while True:
            if self.set_arm_pose(self.group, target_pre_pose, self.effector):
                if self.set_arm_pose(self.group, target_z_pose, self.effector):
                    plc.set_effector_star_pos(200)
                    time.sleep(3)
                    plc.set_effector_stop()
                    if self.set_arm_pose(self.group, target_pose, self.effector):
                        # if self.set_arm_pose(self.group, target_y1_pose, self.effector):
                        #     if self.set_arm_pose(self.group, target_y2_pose, self.effector):
                                if self.set_arm_pose(self.group, target_pose, self.effector):
                                    # plc.set_effector_star(100)
                                    # time.sleep(3)
                                    # plc.set_effector_stop()
                                    break
            rospy.sleep(1)
        time.sleep(1)
        while True:
            if self.set_arm_pose(self.group, target_pre_pose, self.effector):
                            # plc.set_effector_star(100)
                            # time.sleep(5)
                            # plc.set_effector_stop()
                            break
        return True
    def action(self, all_info, pre_result_dict,kalman,yolo,plc,sleeve_type,bolt_type):
        for param in self.action_params:
            if not param in all_info.keys():
                print(param, 'must give')
                return False
        print("param satified, start to do insert")
        print("sleeve_type",sleeve_type)
        print("bolt_type",bolt_type)
        print("bolt2sleeve",self.bolt2sleeve[bolt_type])
        orgin_pose = self.group.get_current_pose(self.effector).pose
        while True:
            # 如果发现一致螺栓和套筒一致，就不用换了
            if self.bolt2sleeve[bolt_type]==sleeve_type:
                return {'success': True,'sleeve_type': self.bolt2sleeve[bolt_type]}
            
            # 如果不一致，就要先卸掉再安装。由于快换盘内圈和外圈零位不一样，所以要分不同的情况.如果安装时是内对外或者外对内，就要初始化以下plc内外圈的零位set_return_zero_out
            else:
                if not sleeve_type is None:
                    if sleeve_type in self.in_sleeve:                            # 脱内圈
                        plc.in_detach(sleeve_type)
                        while True:
                            if self.in_detach_sleeve(plc):
                                break
                        plc.in_detach_return(sleeve_type)
                    else:                                                        # 脱外圈
                        plc.set_return_zero_out()      
                        plc.out_detach(sleeve_type)
                        while True:
                            if self.out_detach_sleeve(plc):
                                break
                        plc.out_detach_return(sleeve_type)
                if self.bolt2sleeve[bolt_type] in self.in_sleeve:                # 安装的在内圈
                    if sleeve_type in self.in_sleeve:                            # 安装的在内圈（刚刚脱的在内圈）内对内
                        plc.in_attach(self.bolt2sleeve[bolt_type])
                        while True:
                            if self.in_attach_sleeve(plc):
                                break
                        plc.in_attach_return(self.bolt2sleeve[bolt_type])
                    else:                                                        # 安装的在内圈（刚刚脱的在外圈）内对外
                        plc.set_return_zero_in()
                        plc.in_attach(self.bolt2sleeve[bolt_type])
                        while True:
                            if self.in_attach_sleeve(plc):
                                break
                        plc.in_attach_return(self.bolt2sleeve[bolt_type])
                else:                                                            # 安装的在外圈
                    if sleeve_type in self.in_sleeve or (sleeve_type is None):   # 安装的在外圈（刚刚脱的在内圈）外对内
                        plc.set_return_zero_out()
                        plc.out_attach(self.bolt2sleeve[bolt_type])
                        while True:
                            if self.out_attach_sleeve(plc):
                                break
                        plc.out_attach_return(self.bolt2sleeve[bolt_type])
                        plc.set_return_zero_in()
                    else:                                                        # 安装的在外圈（刚刚脱的在外圈）外对外
                        plc.out_attach(self.bolt2sleeve[bolt_type])
                        while True:
                            if self.out_attach_sleeve(plc):
                                break
                        plc.out_attach_return(self.bolt2sleeve[bolt_type])
                        plc.set_return_zero_in()                                 # 默认内圈初始化，所以要回来
        # while True:
        #     if self.bolt2sleeve[bolt_type]==sleeve_type:
        #         return {'success': True,'sleeve_type': self.bolt2sleeve[bolt_type]}
        #     else:
        #         if not sleeve_type is None:
        #             plc.detach(sleeve_type)
        #             while True:
        #                 if self.detach_sleeve(plc):
        #                     break
        #                 rospy.sleep(1)
        #             plc.detach_return(sleeve_type)
        #         rospy.sleep(1)
        #         plc.attach(self.bolt2sleeve[bolt_type])
        #         while True:
        #             if self.attach_sleeve(plc):
        #                 break
        #             rospy.sleep(1)
        #         plc.attach_return(self.bolt2sleeve[bolt_type])
        #         # plc.set_return_zero()

                # 换完要回到原位，就是刚刚recognition的地方
                while True:
                    if self.set_arm_pose(self.group, orgin_pose, self.effector):
                        break
                return {'success': True,'sleeve_type': self.bolt2sleeve[bolt_type]}