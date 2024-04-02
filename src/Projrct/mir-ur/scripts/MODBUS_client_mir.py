#!/usr/bin/env python
# -*- coding: UTF-8 -*-
import socket
import pickle
import struct
import cv2
import numpy as np
from cv_bridge import CvBridge, CvBridgeError
from YOLO_client import YOLO_SendImg
import math
import rospy
from modbus_wrapper_client import ModbusWrapperClient 
from std_msgs.msg import Int32MultiArray as HoldingRegister
import time


class MODBUS_control():
    # plc是103，先连上
    def __init__(self, host = "192.168.12.103", port = 502):
        self.host = host
        self.port = port

        # 这里记录的是不同的角度对应的plc中的数值，输入这些数值就代表了希望变化的角度
        self.sleeve_ang2reg = {"45.0":16948,"-315.0":16948,
        "90.0":17076,"-270.0":17076,
        "270.0":17287,"-90.0":17287,
        "135.0":17159,"-225.0":17159,
        "225.0":17249,"-135.0":17249,
        "180.0":17204,"-180.0":17204,
        "0.0":0,"360.0":0,
        "43.0":16940,"21.0":16808,
        "30.0":16880,"60.0":17008,
        "120.0":17136,"150.0":17174
        }

        # 给内外圈编编号
        self.in_sleeve_loc={"hex_bolt_10":0,"in_bolt_1":1,"hex_bolt_12":2,
                            "hex_bolt_13":3,"hex_bolt_14":4,"in_bolt_5":5,
                            "hex_bolt_17":6,"hex_bolt_19":7}
        self.out_sleeve_loc={"out_bolt_0":0,"hex_bolt_8":1,"out_bolt_2":2,
                             "out_bolt_3":3,"out_bolt_4":4,"out_bolt_5":5,
                             "out_bolt_6":6,"out_bolt_7":7,"out_bolt_8":8,
                             "out_bolt_9":9,"out_bolt_10":10,"out_bolt_11":11}
        
        self.loc=0
        self.bolt="hex_bolt_14"
        self.NUM_REGISTERS = 3
        self.ADDRESS_READ_START = 0
        self.ADDRESS_WRITE_START = 150
        self.modclient = ModbusWrapperClient(self.host,port=self.port,rate=50,reset_registers=False,sub_topic="modbus_wrapper/output",pub_topic="modbus_wrapper/input")
        self.modclient.setReadingRegisters(self.ADDRESS_READ_START,self.NUM_REGISTERS)
        self.modclient.setWritingRegisters(self.ADDRESS_WRITE_START,self.NUM_REGISTERS)
        # 上边是plc启动的一些东西，固定用法，不管他

    # 设置正转（俯视顺时针）角度
    def set_sleeve_angle_pos(self,angle):
        register = 172 #寄存器地址
        value = angle  #寄存器地址处更改值
        self.modclient.setOutput(register,value,0)
        register = 166 #寄存器地址
        value = 256    #寄存器地址处更改转向为正转
        self.modclient.setOutput(register,value,0)

    # 设置反转（俯视逆时针）角度
    def set_sleeve_angle_neg(self,angle):
        register = 170 #寄存器地址
        value = angle  #寄存器地址处更改值
        self.modclient.setOutput(register,value,0)
        register = 166 #寄存器地址
        value = 0      #寄存器地址处更改转向为反转
        self.modclient.setOutput(register,value,0)

    # 设置开始转
    def set_sleeve_rotation(self):
        register = 152
        value = 256
        self.modclient.setOutput(register,value,0.1)

    #设置末端执行器正转（应该是拧紧）
    def set_effector_star_pos(self,speed):
        # 有异常时先停掉
        register = 154
        value = 256
        self.modclient.setOutput(register,value,0.1)
        time.sleep(0.5)

        # 设置正转
        register = 106
        value = 256
        self.modclient.setOutput(register,value,0.1)

        # 设置转速
        register = 111
        value = speed
        self.modclient.setOutput(register,value,0.1)

        # 开始转
        register = 156
        value = 256
        self.modclient.setOutput(register,value,0.1)

    def set_effector_star_neg(self,speed):
        register = 154
        value = 256
        self.modclient.setOutput(register,value,0.1)
        time.sleep(0.5)
        register = 106
        value = 0
        self.modclient.setOutput(register,value,0.1)
        register = 109
        value = speed
        self.modclient.setOutput(register,value,0.1)
        register = 156
        value = 256
        self.modclient.setOutput(register,value,0.1)

    def set_effector_stop(self):
        register = 154
        value = 256
        self.modclient.setOutput(register,value,0)

    def read_effector_speed(self):
        register = 158
        value = 256
        self.modclient.setOutput(register,value,0)
        print("speed:",self.modclient.readRegisters(103,2))

    def read_effector_state(self):
        register = 160
        value = 256
        self.modclient.setOutput(register,value,0)
        print("state:",self.modclient.readRegisters(105,1))

# ------------------------------------------------旋转角度的8函数说明（开始线）-------------------------------------------------
# 从这里往下的8个函数，是（内圈/外圈）*（安装/拆卸）*（把他转过来转到口下边/回零位的角度）共8种情况的8个函数。
# 想象一个钟表，6点钟是0位置loc=0（开孔在这里），逆时针依次是1，2，3号等位置，所以要换哪个就要把他传过来转到零位
    def in_attach(self,bolt):
        bolt=bolt
        loc=0
        aim=self.in_sleeve_loc[bolt]
        # print(type(str(aim*45.0)))
        if aim < 4:
            value = self.sleeve_ang2reg[str(aim*45.0)]
            self.set_sleeve_angle_pos(value)
        else:
            value = self.sleeve_ang2reg[str((8-aim)*45.0)]
            self.set_sleeve_angle_neg(value)
        print("angle:",self.modclient.readRegisters(150,1))
        print("rotation:",self.modclient.readRegisters(152,1))
        self.set_sleeve_rotation()
        print("rotation:",self.modclient.readRegisters(152,1))
        loc=aim
        print("attach_loc:",loc)
        time.sleep(2)
    def in_attach_return(self,bolt):
        aim=self.in_sleeve_loc[bolt]
        if aim < 4:
            value = self.sleeve_ang2reg[str(aim*45.0)]
            self.set_sleeve_angle_neg(value)
        else:
            value = self.sleeve_ang2reg[str((8-aim)*45.0)]
            self.set_sleeve_angle_pos(value)
        self.set_sleeve_rotation()
        print("return the staring position")
        time.sleep(2)

# 拆卸孔和安装孔是面对面，也就是拆卸孔在12点，四号位置处，因此要写算法把不同位置往4号口下转
    def in_detach(self,bolt):
        bolt=bolt
        aim=self.in_sleeve_loc[bolt]
        if (aim-4) < 4 and (aim-4) >= 0:
            value = self.sleeve_ang2reg[str((aim-4)*45.0)]
            self.set_sleeve_angle_pos(value)
        else:
            value = self.sleeve_ang2reg[str((4-aim)*45.0)]
            self.set_sleeve_angle_neg(value)
        self.set_sleeve_rotation()
        print("detach_loc:",aim)
        time.sleep(2)
    def in_detach_return(self,bolt):
        aim=self.in_sleeve_loc[bolt]
        loc=aim
        if (aim-4) < 4 and (aim-4) >= 0:
            value = self.sleeve_ang2reg[str((aim-4)*45.0)]
            self.set_sleeve_angle_neg(value)
        else:
            value = self.sleeve_ang2reg[str((4-aim)*45.0)]
            self.set_sleeve_angle_pos(value)
        self.set_sleeve_rotation()
        print("return the staring position")
        time.sleep(2)
    
    def out_attach(self,bolt):
        bolt=bolt
        loc=0
        aim=self.out_sleeve_loc[bolt]
        # print(type(str(aim*45.0)))
        if aim < 6:
            value = self.sleeve_ang2reg[str(aim*30.0)]
            self.set_sleeve_angle_pos(value)
        else:
            value = self.sleeve_ang2reg[str((12-aim)*30.0)]
            self.set_sleeve_angle_neg(value)
        print("angle:",self.modclient.readRegisters(150,1))
        print("rotation:",self.modclient.readRegisters(152,1))
        self.set_sleeve_rotation()
        print("rotation:",self.modclient.readRegisters(152,1))
        loc=aim
        print("attach_loc:",loc)
        time.sleep(2)
    def out_attach_return(self,bolt):
        aim=self.out_sleeve_loc[bolt]
        if aim < 6:
            value = self.sleeve_ang2reg[str(aim*30.0)]
            self.set_sleeve_angle_neg(value)
        else:
            value = self.sleeve_ang2reg[str((12-aim)*30.0)]
            self.set_sleeve_angle_pos(value)
        self.set_sleeve_rotation()
        print("return the staring position")
        time.sleep(2)

    def out_detach(self,bolt):
        bolt=bolt
        aim=self.out_sleeve_loc[bolt]
        if (aim-6) < 6 and (aim-6) >= 0:
            value = self.sleeve_ang2reg[str((aim-6)*30.0)]
            self.set_sleeve_angle_pos(value)
        else:
            value = self.sleeve_ang2reg[str((6-aim)*30.0)]
            self.set_sleeve_angle_neg(value)
        self.set_sleeve_rotation()
        print("detach_loc:",aim)
        time.sleep(2)
    def out_detach_return(self,bolt):
        aim=self.out_sleeve_loc[bolt]
        loc=aim
        if (aim-6) < 6 and (aim-6) >= 0:
            value = self.sleeve_ang2reg[str((aim-6)*30.0)]
            self.set_sleeve_angle_neg(value)
        else:
            value = self.sleeve_ang2reg[str((6-aim)*30.0)]
            self.set_sleeve_angle_pos(value)
        self.set_sleeve_rotation()
        print("return the staring position")
        time.sleep(2)
# ------------------------------------------------旋转角度的8函数说明（结束线）-------------------------------------------------


# ------------------------------------------------变刹车距离的回零位函数说明（开始线）-------------------------------------------------
# 连续拆解工作会导致上边的回零位误差会累计，
# 所以必须有两个函数set_return_zero_in、set_return_zero_out，
# 他们的功能就是让内圈/外圈在上边8个函数中的4个回零位后，单独转一下，但后根据霍尔传感器的信号刹停，再转回原位


# 由于不同快换盘霍尔传感器安装位置不一样，每次从0位开始转到霍尔传感器的速度是变化的，因此刹停后的刹车距离也是变化的，
# 所以就算回了0位，也要再多补偿一个刹车距离。这个刹车距离只能靠调试：self.set_sleeve_angle_neg(17204)，
# 这个值大概一次加减1-10，观察是否回零位回的准确。

# 有现在的解决方法是让他转的慢一点，这样不管霍尔传感安装在哪里，都能有一个相对固定的刹车距离，方便补偿

# set_return_zero_begin这个函数睡眠时间长，因为他是转一整圈，plc前一个动作执行完才会执行下一个动作的，防止干涉
# 因此，前两个函数只能在刚开始运行时归零（没开电源的时候已经手动大致归零过了，因此这时归零时间短），运行中间从其他位置归零时，就要用set_return_zero_begin！！！！！！！！！！！！！
    def set_return_zero_in(self):
        register = 162
        value = 256
        self.modclient.setOutput(register,value,0)
        print("return_zero")
        time.sleep(5)
        self.set_sleeve_angle_neg(17204)
        self.set_sleeve_rotation()
        time.sleep(1)

    def set_return_zero_out(self):
        register = 162
        value = 256
        self.modclient.setOutput(register,value,0)
        print("return_zero")
        time.sleep(5)
        self.set_sleeve_angle_neg(17103)
        self.set_sleeve_rotation()
        time.sleep(1)
    def set_return_zero_begin(self):
        register = 162
        value = 256
        self.modclient.setOutput(register,value,0)
        print("return_zero")
        time.sleep(20)
        self.set_sleeve_angle_neg(17204)
        self.set_sleeve_rotation()
        time.sleep(1)
# ------------------------------------------------变刹车距离的回零位函数说明（结束线）-----------------------------------------------


if __name__ == '__main__':
    rospy.init_node('plc', anonymous=True)
    plc_control=MODBUS_control()
    bolt=plc_control.bolt
    loc=plc_control.loc
    # plc_control.set_return_zero_begin()
    # # plc_control.in_attach(bolt)
    # # plc_control.in_attach_return(bolt)
    # plc_control.set_return_zero_out()
    # plc_control.set_return_zero_in()
    # plc_control.out_attach(bolt)
    # plc_control.out_attach_return(bolt)

    # time.sleep(3)

    # if loc==1:
    #     self.set_sleeve_angle(17204)
    #     self.set_sleeve_rotation()      
    #     time.sleep(3)
    #     self.set_sleeve_angle(17159)
    #     self.set_sleeve_rotation()
    # elif loc==0:
    #     print("in the staring position")
    # else:
    #     value = self.sleeve_ang2reg[str((8-loc)*45.0)]
    #     self.set_sleeve_angle(value)
    #     self.set_sleeve_rotation()
    # print("return the staring position")

    # plc_control.set_effector_star_pos(4000)
    # time.sleep(2)
    # plc_control.read_effector_speed()
    # plc_control.read_effector_state()
    # time.sleep(2)
    # plc_control.read_effector_speed()
    # plc_control.read_effector_state()
    # time.sleep(10)
    plc_control.set_effector_stop()
