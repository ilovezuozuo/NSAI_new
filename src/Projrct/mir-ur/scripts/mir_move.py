#!/usr/bin/env python
# -*- coding: UTF-8 -*-
from mir_base import TrueBase
import math
import geometry_msgs.msg
import tf
import rospy
import torch
from mir_control import mirControler


class TrueMove(TrueBase):
    def __init__(self, group_):
        super(TrueMove, self).__init__(group_)
        self.request_params = ['coarse_pose']

    def action(self, all_info, pre_result_dict, kalman,yolo,move_point,box_center):
        for param in self.request_params:
            if not param in pre_result_dict.keys():
                print(param, 'must give')
                return False
        print("param satified, start to do move")
        # planner = all_info['planner_handler']
        # latest_infos = planner.get_latest_infos()
        target = pre_result_dict["coarse_pose"]
        
        tgt_pose_in_map = self.transform_pose("base_footprint",
                                                      "map",
                                                      target,
                                                      rospy.Time(0))
        # print("diyici_target:!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",tgt_pose_in_map)
        min_move_point=0
        min_dis=100
        rz=0
        for i in range(len(move_point)):
            distance = torch.sqrt((torch.sum(torch.square(torch.tensor([move_point[i][0],move_point[i][1]])-torch.tensor([tgt_pose_in_map.position.x,tgt_pose_in_map.position.y])))))
            print(distance)
            if distance<min_dis:
                min_dis=distance
                min_move_point=i
        mir = mirControler()
        if move_point[min_move_point][0]-box_center[0]==1.05:
            rz=90
        elif move_point[min_move_point][0]-box_center[0]==-1.15:
            rz=270
        if move_point[min_move_point][1]-box_center[1]==1.0:
            rz=180
        elif move_point[min_move_point][1]-box_center[1]==-1.0:
            rz=0
        print(move_point[min_move_point][0], move_point[min_move_point][1],box_center,rz)
        mir.MIR_move(move_point[min_move_point][0], move_point[min_move_point][1], rz)
        target = self.transform_pose("map",
                                    "base_footprint",
                                    tgt_pose_in_map,
                                    rospy.Time(0))
        # tgt_pose_in_effector_frame = geometry_msgs.msg.Pose()
        # tgt_pose_in_effector_frame.position.x = 0
        # tgt_pose_in_effector_frame.position.y = 0
        # tgt_pose_in_effector_frame.position.z = 0
        # q = tf.transformations.quaternion_from_euler(0, 0, 0)
        # tgt_pose_in_effector_frame.orientation.x = q[0]
        # tgt_pose_in_effector_frame.orientation.y = q[1]
        # tgt_pose_in_effector_frame.orientation.z = q[2]
        # tgt_pose_in_effector_frame.orientation.w = q[3]
        # tgt_pose_in_world_frame = self.transform_pose("base_footprint",
        #                                                 "map",
        #                                                 tgt_pose_in_effector_frame,
        #                                                 rospy.Time(0)) 
        # print("base_footprint?????????????????????",tgt_pose_in_world_frame)
        target.position.z = target.position.z+0.04
        # target.position.x = target.position.x - 0.065
        while True:
            if self.set_arm_pose(self.group, target, self.effector):
                # return {'success': False}
                break
        return {'success': True}