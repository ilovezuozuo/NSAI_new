#!/usr/bin/python
# -*- coding: UTF-8 -*-
import matplotlib.pyplot as plt
import numpy as np
import torch
import random
import torch
import torch.nn as nn
import time
from torch.utils.data import Dataset, DataLoader, TensorDataset
import math
import numpy as np
from torchviz import make_dot
import os
import random
import numpy as np
from mir_control import mirControler
import rospy
import tf


global final_result, inputs_of_final_result,outputs_of_MLP
inputs_of_final_result = []
final_result = []
outputs_of_MLP = []


def cos(a):
    return torch.cos(a)



def sin(a):
    return torch.sin(a)



# class MLP_self(nn.Module):
#
#     def __init__(self, num_i, num_h, num_o):
#         super(MLP_self, self).__init__()
#
#         self.linear1 = torch.nn.Linear(num_i, num_h)
#         self.relu = torch.nn.ReLU()
#         self.linear2 = torch.nn.Linear(num_h, num_h)
#         self.relu2 = torch.nn.ReLU()
#         self.linear3 = torch.nn.Linear(num_h, num_o)
#
#     def forward(self, input):
#         x = self.linear1(input)
#         x = self.relu(x)
#         x = self.linear2(x)
#         x = self.relu2(x)
#         x = self.linear3(x)
#         return x
class MLP_self(nn.Module):

    def __init__(self, num_i, num_h, num_o, dropout_prob=0.5):
        super(MLP_self, self).__init__()

        self.linear1 = nn.Linear(num_i, num_h)
        self.relu = nn.ReLU()
        self.dropout1 = nn.Dropout(p=dropout_prob)  
        self.linear2 = nn.Linear(num_h, num_h)
        self.relu2 = nn.ReLU()
        self.linear3 = nn.Linear(num_h, num_o)

    def forward(self, input):
        x = self.linear1(input)
        x = self.relu(x)
        x = self.dropout1(x)  
        x = self.linear2(x)
        x = self.relu2(x)
        x = self.linear3(x)
        return x

def transpose(x):
    a = x[0][:3]
    b = x[1][:3]
    c = x[2][:3]
    result = torch.stack([a, b, c], 0)
    # print(result)

    d = x[0][3]
    e = x[1][3]
    f = x[2][3]
    D = torch.stack([d, e, f], dim=0)
    D = D.unsqueeze(1)

    result_trans = torch.t(result)
    result_mul = torch.mm(-result_trans, D)
    # print(torch.t(result_mul))

    # T_Transpose0 = torch.stack([result_trans, result_mul], 0)
    T_Transpose0 = torch.cat([torch.t(result_trans), torch.t(result_mul)], 0)

    P = torch.tensor([0, 0, 0, 1])
    P = P.unsqueeze(0)

    T_Transpose = torch.cat([torch.t(T_Transpose0), P], 0)

    return T_Transpose


class Atan2Function(torch.autograd.Function):
    @staticmethod
    def forward(ctx, y, x):
        result = math.atan2(y, x)
        ctx.save_for_backward(x, y)
        return torch.tensor(result, requires_grad=True)

    @staticmethod
    def backward(ctx, grad_output):
        x, y = ctx.saved_tensors
        grad_y = x / (x ** 2 + y ** 2)
        grad_x = -y / (x ** 2 + y ** 2)
        return grad_output * grad_y, grad_output * grad_x
atan2 = Atan2Function.apply


grads = {}
def save_grad(name):
    def hook(grad):
        grads[name] = grad
    return hook


def calculate_IK(input_tar, MLP_output_base, a, d, alpha):
    global save_what_caused_Error2_as_Nan
    global the_NANLOSS_of_illegal_solution_with_num_and_Nan
    save_what_caused_Error2_as_Nan = []
    the_NANLOSS_of_illegal_solution_with_num_and_Nan = torch.tensor([0.0], requires_grad=True)

    TT = torch.mm(transpose(MLP_output_base), input_tar)
    # print("MLP_output_base: ", MLP_output_base)
    # print('TT: ', TT)



    # transpose(MLP_output_base).register_hook(save_grad('transpose(MLP_output_base)'))
    # MLP_output_base.register_hook(save_grad('MLP_output_base'))
    # TT.register_hook(save_grad('TT'))

    nx = TT[0, 0]
    ny = TT[1, 0]
    nz = TT[2, 0]
    ox = TT[0, 1]
    oy = TT[1, 1]
    oz = TT[2, 1]
    ax = TT[0, 2]
    ay = TT[1, 2]
    az = TT[2, 2]
    px = TT[0, 3]
    py = TT[1, 3]
    pz = TT[2, 3]

    m = d[5] * ay - py
    n = ax * d[5] - px
    # print(m ** 2 + n ** 2 - (d[3]) ** 2, '!!!!!!!!!!!!!!!!!!!!!!!')
    if m ** 2 + n ** 2 - (d[3]) ** 2 >= 0:
        theta11 = atan2(m, n) - atan2(d[3], torch.sqrt((m ** 2 + n ** 2 - (d[3]) ** 2)))
        theta12 = atan2(m, n) - atan2(d[3], -torch.sqrt((m ** 2 + n ** 2 - (d[3]) ** 2)))

        t1 = torch.cat([theta11.repeat(4), theta12.repeat(4)], dim=0)

    else:
        angle_solution = torch.unsqueeze(((d[3]) ** 2 - m ** 2 - n ** 2), 0)
  

        global num_Error1
        num_Error1 = num_Error1 + 1

        return angle_solution

    theta51 = torch.acos(ax * sin(theta11) - ay * cos(theta11))
    theta52 = -torch.acos(ax * sin(theta11) - ay * cos(theta11))
    theta53 = torch.acos(ax * sin(theta12) - ay * cos(theta12))
    theta54 = -torch.acos(ax * sin(theta12) - ay * cos(theta12))
    t5 = torch.stack([theta51, theta51, theta52, theta52, theta53, theta53, theta54, theta54], 0)


    mm = nx * sin(t1[0]) - ny * cos(t1[0])
    nn = ox * sin(t1[0]) - oy * cos(t1[0])
    # print(sin(t5[0]),">>>>>>>>>>>>>>>>>>")
    t61 = atan2(mm, nn) - atan2(sin(t5[0]), torch.tensor(0.0))

    mm = nx * sin(t1[1]) - ny * cos(t1[1])
    nn = ox * sin(t1[1]) - oy * cos(t1[1])
    t62 = atan2(mm, nn) - atan2(sin(t5[1]), torch.tensor(0.0))

    mm = nx * sin(t1[2]) - ny * cos(t1[2])
    nn = ox * sin(t1[2]) - oy * cos(t1[2])
    t63 = atan2(mm, nn) - atan2(sin(t5[2]), torch.tensor(0.0))

    mm = nx * sin(t1[3]) - ny * cos(t1[3])
    nn = ox * sin(t1[3]) - oy * cos(t1[3])
    t64 = atan2(mm, nn) - atan2(sin(t5[3]), torch.tensor(0.0))

    mm = nx * sin(t1[4]) - ny * cos(t1[4])
    nn = ox * sin(t1[4]) - oy * cos(t1[4])
    t65 = atan2(mm, nn) - atan2(sin(t5[4]), torch.tensor(0.0))

    mm = nx * sin(t1[5]) - ny * cos(t1[5])
    nn = ox * sin(t1[5]) - oy * cos(t1[5])
    t66 = atan2(mm, nn) - atan2(sin(t5[5]), torch.tensor(0.0))

    mm = nx * sin(t1[6]) - ny * cos(t1[6])
    nn = ox * sin(t1[6]) - oy * cos(t1[6])
    t67 = atan2(mm, nn) - atan2(sin(t5[6]), torch.tensor(0.0))

    mm = nx * sin(t1[7]) - ny * cos(t1[7])
    nn = ox * sin(t1[7]) - oy * cos(t1[7])
    t68 = atan2(mm, nn) - atan2(sin(t5[7]), torch.tensor(0.0))
    t6 = torch.stack([t61, t62, t63, t64, t65, t66, t67, t68], 0)
    # t6.register_hook(save_grad('t6'))


    m = [0, 0, 0, 0, 0, 0, 0, 0]
    n = [0, 0, 0, 0, 0, 0, 0, 0]
    for i in range(8):
        m[i] = d[4] * (sin(t6[i]) * (nx * cos(t1[i]) + ny * sin(t1[i])) + cos(t6[i]) * (
                ox * cos(t1[i]) + oy * sin(t1[i]))) - d[5] * (ax * cos(t1[i]) + ay * sin(t1[i])) + px * cos(
            t1[i]) + py * sin(t1[i])
        n[i] = pz - d[0] - az * d[5] + d[4] * (oz * cos(t6[i]) + nz * sin(t6[i]))

    # m[0].register_hook(save_grad('m[0]'))
    # n[0].register_hook(save_grad('n[0]'))
    # m[2].register_hook(save_grad('m[2]'))
    # n[2].register_hook(save_grad('n[2]'))
    # m[4].register_hook(save_grad('m[4]'))
    # n[4].register_hook(save_grad('n[4]'))
    # m[6].register_hook(save_grad('m[6]'))
    # n[6].register_hook(save_grad('n[6]'))
    #
    # nx.register_hook(save_grad('nx'))
    # ny.register_hook(save_grad('ny'))
    # ox.register_hook(save_grad('ox'))
    # oy.register_hook(save_grad('oy'))
    # ax.register_hook(save_grad('ax'))
    # ay.register_hook(save_grad('ay'))
    # px.register_hook(save_grad('px'))
    # py.register_hook(save_grad('py'))
    # pz.register_hook(save_grad('pz'))
    # az.register_hook(save_grad('az'))
    # oz.register_hook(save_grad('oz'))
    # nz.register_hook(save_grad('nz'))




    # try:
    t31 = torch.acos((m[0] ** 2 + n[0] ** 2 - a[1] ** 2 - a[2] ** 2) / (2 * a[1] * a[2]))
    t32 = -torch.acos((m[0] ** 2 + n[0] ** 2 - a[1] ** 2 - a[2] ** 2) / (2 * a[1] * a[2]))
    t33 = torch.acos((m[2] ** 2 + n[2] ** 2 - a[1] ** 2 - a[2] ** 2) / (2 * a[1] * a[2]))
    t34 = -torch.acos((m[2] ** 2 + n[2] ** 2 - a[1] ** 2 - a[2] ** 2) / (2 * a[1] * a[2]))
    t35 = torch.acos((m[4] ** 2 + n[4] ** 2 - a[1] ** 2 - a[2] ** 2) / (2 * a[1] * a[2]))
    t36 = -torch.acos((m[4] ** 2 + n[4] ** 2 - a[1] ** 2 - a[2] ** 2) / (2 * a[1] * a[2]))
    t37 = torch.acos((m[6] ** 2 + n[6] ** 2 - a[1] ** 2 - a[2] ** 2) / (2 * a[1] * a[2]))
    t38 = -torch.acos((m[6] ** 2 + n[6] ** 2 - a[1] ** 2 - a[2] ** 2) / (2 * a[1] * a[2]))
    # t3 = torch.tensor([t31, t32, t33, t34, t35, t36, t37, t38], requires_grad=True)
    t3 = torch.stack([t31, t32, t33, t34, t35, t36, t37, t38], 0)
    # print(t3)
    # t3.register_hook(save_grad('t3'))


    save_what_caused_Error2_as_Nan.append((m[0] ** 2 + n[0] ** 2 - a[1] ** 2 - a[2] ** 2) / (2 * a[1] * a[2]))
    save_what_caused_Error2_as_Nan.append((m[0] ** 2 + n[0] ** 2 - a[1] ** 2 - a[2] ** 2) / (2 * a[1] * a[2]))
    save_what_caused_Error2_as_Nan.append((m[2] ** 2 + n[2] ** 2 - a[1] ** 2 - a[2] ** 2) / (2 * a[1] * a[2]))
    save_what_caused_Error2_as_Nan.append((m[2] ** 2 + n[2] ** 2 - a[1] ** 2 - a[2] ** 2) / (2 * a[1] * a[2]))
    save_what_caused_Error2_as_Nan.append((m[4] ** 2 + n[4] ** 2 - a[1] ** 2 - a[2] ** 2) / (2 * a[1] * a[2]))
    save_what_caused_Error2_as_Nan.append((m[4] ** 2 + n[4] ** 2 - a[1] ** 2 - a[2] ** 2) / (2 * a[1] * a[2]))
    save_what_caused_Error2_as_Nan.append((m[6] ** 2 + n[6] ** 2 - a[1] ** 2 - a[2] ** 2) / (2 * a[1] * a[2]))
    save_what_caused_Error2_as_Nan.append((m[6] ** 2 + n[6] ** 2 - a[1] ** 2 - a[2] ** 2) / (2 * a[1] * a[2]))





    nan_index = torch.isnan(t3).nonzero()
    # print(nan_index,"!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
    for i in nan_index:
        the_NANLOSS_of_illegal_solution_with_num_and_Nan = the_NANLOSS_of_illegal_solution_with_num_and_Nan + \
                                                           (abs(save_what_caused_Error2_as_Nan[i]) - torch.tensor([1])) * 1000

    # the_NANLOSS_of_illegal_solution_with_num_and_Nan.register_hook(save_grad('the_NANLOSS_of_illegal_solution_with_num_and_Nan'))
    # the_NANLOSS_of_illegal_solution_with_num_and_Nan.register_hook(save_grad('save_what_caused_Error2_as_Nan'))

    # print(len(nan_index))

    if len(nan_index) == 8:
        # print('The first NaN value in a is at index:', nan_index[0].item())
        aaabbb = nan_index[0].item()
        cccddd = (m[aaabbb] ** 2 + n[aaabbb] ** 2 - a[1] ** 2 - a[2] ** 2) / (2 * a[1] * a[2])

        # cccddd.register_hook(save_grad('cccddd'))
        # m[0].register_hook(save_grad('m[0]'))
        # n[0].register_hook(save_grad('n[0]'))
        # m[2].register_hook(save_grad('m[2]'))
        # n[2].register_hook(save_grad('n[2]'))
        # m[4].register_hook(save_grad('m[4]'))
        # n[4].register_hook(save_grad('n[4]'))
        # m[6].register_hook(save_grad('m[6]'))
        # n[6].register_hook(save_grad('n[6]'))


        # cccddd.retain_grad()

        angle_solution = (abs(cccddd) - torch.tensor([1])) * 100

        # angle_solution.register_hook(save_grad('angle_solution'))

        global num_Error2
        num_Error2 = num_Error2 + 1

        return angle_solution

    else:
        pass

    t2 = [0, 0, 0, 0, 0, 0, 0, 0]
    s2 = [0, 0, 0, 0, 0, 0, 0, 0]
    c2 = [0, 0, 0, 0, 0, 0, 0, 0]
    for i in range(8):
        s2[i] = ((a[2] * cos(t3[i]) + a[1]) * n[i] - a[2] * sin(t3[i]) * m[i]) / (
                a[1] ** 2 + a[2] ** 2 + 2 * a[1] * a[2] * cos(t3[i]))
        c2[i] = (m[i] + (a[2] * sin(t3[i]) * s2[i])) / (a[2] * cos(t3[i]) + a[1])
    #
    # s2[0].register_hook(save_grad('s2[0]'))
    # c2[0].register_hook(save_grad('c2[0]'))
    # s2[1].register_hook(save_grad('s2[1]'))
    # c2[1].register_hook(save_grad('c2[1]'))
    # s2[2].register_hook(save_grad('s2[2]'))
    # c2[2].register_hook(save_grad('c2[2]'))
    # s2[3].register_hook(save_grad('s2[3]'))
    # c2[3].register_hook(save_grad('c2[3]'))

    t20 = atan2(s2[0], c2[0])
    t21 = atan2(s2[1], c2[1])
    t22 = atan2(s2[2], c2[2])
    t23 = atan2(s2[3], c2[3])
    t24 = atan2(s2[4], c2[4])
    t25 = atan2(s2[5], c2[5])
    t26 = atan2(s2[6], c2[6])
    t27 = atan2(s2[7], c2[7])

    t2 = torch.stack([t20, t21, t22, t23, t24, t25, t26, t27], 0)
    # t2.register_hook(save_grad('t2'))

    t4 = [0, 0, 0, 0, 0, 0, 0, 0]

    for i in range(8):
        t4[i] = atan2(
            -sin(t6[i]) * (nx * cos(t1[i]) + ny * sin(t1[i])) - cos(t6[i]) * (ox * cos(t1[i]) + oy * sin(t1[i])),
            oz * cos(t6[i]) + nz * sin(t6[i])) - t2[i] - t3[i]
    t4 = torch.stack([t4[0], t4[1], t4[2], t4[3], t4[4], t4[5], t4[6], t4[7]], 0)
    # t4.register_hook(save_grad('t4'))


    # angle_solution = torch.stack([a1, a2, a3, a4, a5, a6, a7, a8], 0)
    angle_solution = torch.stack([t1, t2, t3, t4, t5, t6], 0)
    angle_solution = torch.t(angle_solution)
    # angle_solution.register_hook(save_grad('angle_solution'))

    return angle_solution


def euler_to_rotMat(yaw, pitch, roll):
    ffff = torch.tensor(0)

    gggg = torch.tensor(1)

    Rz_yaw0 = torch.stack([torch.cos(yaw), -torch.sin(yaw), ffff], 0)
    Rz_yaw1 = torch.stack([torch.sin(yaw), torch.cos(yaw), ffff], 0)
    Rz_yaw2 = torch.stack([ffff, ffff, gggg], 0)
    Rz_yaw = torch.stack([Rz_yaw0, Rz_yaw1, Rz_yaw2], 0)

    Ry_pitch0 = torch.stack([torch.cos(pitch), ffff, torch.sin(pitch)], 0)
    Ry_pitch1 = torch.stack([ffff, gggg, ffff], 0)
    Ry_pitch2 = torch.stack([-torch.sin(pitch), ffff, torch.cos(pitch)], 0)
    Ry_pitch = torch.stack([Ry_pitch0, Ry_pitch1, Ry_pitch2], 0)

    Rx_roll0 = torch.stack([gggg, ffff, ffff], 0)
    Rx_roll1 = torch.stack([ffff, torch.cos(roll), -torch.sin(roll)], 0)
    Rx_roll2 = torch.stack([ffff, torch.sin(roll), torch.cos(roll)], 0)
    Rx_roll = torch.stack([Rx_roll0, Rx_roll1, Rx_roll2], 0)

    rotMat = torch.mm(Rz_yaw, torch.mm(Ry_pitch, Rx_roll))
    return rotMat


def shaping(x):
    T_shapings = []
    for i in x:
        a = i[0]
        b = i[1]
        c = i[2]
        result = euler_to_rotMat(c, b, a)
        # print(result)

        d = i[3]
        e = i[4]
        f = i[5]

        D = torch.stack([d, e, f], dim=0)
        D = D.unsqueeze(1)

        T_shaping0 = torch.cat([torch.t(result), torch.t(D)], 0)
        P = torch.tensor([0.0, 0.0, 0.0, 1.0])
        P = P.unsqueeze(0)

        T_shaping = torch.cat([torch.t(T_shaping0), P], 0)
        T_shaping = T_shaping.unsqueeze(0)
        T_shapings.append(T_shaping)

    T_shapings = torch.cat(T_shapings, dim=0)
    return T_shapings

def shaping2(x):
    T_shapings = []
    for i in x:
        a = torch.tensor(0, requires_grad=False)
        b = torch.tensor(0, requires_grad=False)
        c = i[2]
        result = euler_to_rotMat(c, b, a)
        # print(result)

        d = i[3]
        e = i[4]
        f = torch.tensor(0, requires_grad=False)

        D = torch.stack([d, e, f], dim=0)
        D = D.unsqueeze(1)

        T_shaping0 = torch.cat([torch.t(result), torch.t(D)], 0)
        P = torch.tensor([0.0, 0.0, 0.0, 1.0])
        P = P.unsqueeze(0)

        T_shaping = torch.cat([torch.t(T_shaping0), P], 0)
        T_shaping = T_shaping.unsqueeze(0)
        T_shapings.append(T_shaping)

    T_shapings = torch.cat(T_shapings, dim=0)
    return T_shapings

def find_closest(angle_solution, where_is_the_illegal):
    min_distance = 100 
    min_index = []     
    # print(where_is_the_illegal)
    single_ik_loss = torch.tensor(0.0, requires_grad=True)
    global save_what_caused_Error2_as_Nan
    global the_NANLOSS_of_illegal_solution_with_num_and_Nan
    # print(' angle_solution', angle_solution)
    # print(' where_is_the_illegal',  where_is_the_illegal)
    # print('save_what_caused_Error2_as_Nan',save_what_caused_Error2_as_Nan)

    for index in where_is_the_illegal:
        there_exist_nan = 0
        i, j = index
        if math.isnan(angle_solution[i][j]):
            pass
            # single_ik_loss = single_ik_loss + (abs(save_what_caused_Error2_as_Nan[i])-torch.tensor([1]))*1000
            # print(single_ik_loss)
        else:
            for angle in range(6):
                if math.isnan(angle_solution[i][angle]):
                    there_exist_nan +=1
            if there_exist_nan == 0:
                # print(angle_solution[i][j])
                num = angle_solution[i][j]
                distance = abs(num) - (torch.pi)          
                # single_ik_loss = single_ik_loss + distance
                # print(single_ik_loss)
                if distance < min_distance:
                    min_distance = distance
                    min_index = index
            else:
                pass
                # single_ik_loss = single_ik_loss + (abs(save_what_caused_Error2_as_Nan[i]) - torch.tensor([1])) * 1000
                # print(single_ik_loss)
        single_ik_loss = single_ik_loss + min_distance
    # return (single_ik_loss + the_NANLOSS_of_illegal_solution_with_num_and_Nan)
    return the_NANLOSS_of_illegal_solution_with_num_and_Nan

def calculate_IK_loss(angle_solution,aaaaaaaaaa, bbbbbbbbbb):
    aaaaaaaaaa = list(aaaaaaaaaa)
    # for i in len(aaaaaaaaaa):
    #     aaaaaaaaaa[i] = float(i)

    num_illegal = 0
    IK_loss = torch.tensor([0.0], requires_grad=True)
    legal_solution = []
    where_is_the_illegal = []

    if len(angle_solution) == 1: 
        IK_loss = IK_loss + angle_solution

    else:
        for solution_index in range(8):
            ls = []
            for angle_index in range(6):
                if -math.pi <= angle_solution[solution_index][angle_index] <= math.pi:
                    ls.append(float(angle_solution[solution_index][angle_index]))
                else:
                    num_illegal += 1
                    where_is_the_illegal.append([solution_index, angle_index])
                    break
            # print(where_is_the_illegal)
            if len(ls) == 6:
                legal_solution.append(ls)
                global num_NOError2
                num_NOError2 = num_NOError2 + 1
                inputs_of_final_result.append(aaaaaaaaaa)
                outputs_of_MLP.append(bbbbbbbbbb)
                final_result.append(ls)
                IK_loss = IK_loss + torch.tensor([0])
                break

        if num_illegal == 8:
            # print("angle_solution！", angle_solution)
            # print(where_is_the_illegal,"+++++++++++++++++")
            # print(find_closest(angle_solution, where_is_the_illegal))
            IK_loss = IK_loss + find_closest(angle_solution, where_is_the_illegal)
            global num_NOError1
            num_NOError1 = num_NOError1 + 1
            # for i in range(6):
            #     IK_loss += math.exp(num_illegal) * abs(angle_solution[0][i] - torch.tensor([0]))


    return IK_loss

#
#

# 
rospy.init_node('mirControl', anonymous=True, disable_signals=True)
mir = mirControler()
(r, p, y) = tf.transformations.euler_from_quaternion([mir.actPose.orientation.x, mir.actPose.orientation.y, mir.actPose.orientation.z, mir.actPose.orientation.w])
print((mir.actPose.position.x,mir.actPose.position.y,mir.actPose.position.z),(r, p,y * 180/math.pi))

test_data = torch.tensor([
[0, 0, 0, 18.85, 6.25, 0],
    # [-1.7718625619042672, -1.484029716442559, -2.3066975450281872, 3.1137335762860108, -2.1374689804963443, 0.12152036350649142], [1.8833476893525196, 2.0131932967503516, 1.5394405872149983, -4.091471838278462, 4.637261858498032, -0.15642363238652224], [-1.0725125953023484, -3.0114514421789704, -2.401923265075543, -2.044891828821785, 2.595599357324682, -0.07956855104598382], [0.47795558166929775, 2.824052995826869, 2.0286213405372067, -1.5702518756714632, 0.8878203470333199, -0.7477550670769908], [-0.6201750548732323, 1.8787598395144594, 0.5032790566493555, 4.945310588165773, -3.6268571621059396, -0.962363531020485], [-1.7392393075504735, 3.0280685023116796, 1.950318942450517, 2.7716411746940395, 0.3322381340938527, 0.13173903502840822], [1.6398674754661213, -1.0127747513235152, 0.9521912728126907, 4.948389887249119, 2.3396088463504565, -0.8209051722508096], [0.8017229140960604, -2.074846798467607, -0.006986729445612738, -1.8968339672707, -4.302981922019702, -0.30729530386296555], [-1.5674962905683218, 1.5710441066707057, 0.8022300894026815, 2.852731512645068, 2.8740173739719186, -0.3248966912839133]

 ])
#
test_results_for_all_test_data = []
global num_Error1, num_Error2, num_NOError1, num_NOError2  
num_Error1 = 0
num_Error2 = 0
num_NOError1 = 0
num_NOError2 = 0
num_i = 6
num_h = 50
num_o = 3
a = torch.tensor([0, -0.6127, -0.57155, 0, 0, 0])  # link length
d = torch.tensor([0.1807, 0, 0, 0.17415, 0.11985, 0.11655])  # link offset
alpha = torch.FloatTensor([math.pi / 2, 0, 0, math.pi / 2, -math.pi / 2, 0])  # link twist
model = MLP_self(num_i, num_h, num_o)
filename = "/home/xps/Desktop/ur10e_sim/src/fmauch_universal_robot/ur_real_robot/ur_control/scripts/true_sleeve_change/checkpoint-epoch800.pt"
checkpoint = torch.load(filename)
model.load_state_dict(checkpoint['state_dict'])
# model.eval()

data = TensorDataset(test_data)
data_loader_test = DataLoader(data, batch_size=1, shuffle=False)

global result

# result = []
while num_NOError2 != len(data_loader_test):
    for data in data_loader_test:
        # with torch.no_grad():
            inputs = data[0]
            # print('inputs:', inputs)
            intermediate_outputs = model(inputs)
            # print('intermediate_outputs:', intermediate_outputs)
            input_tar = shaping(inputs)
            outputs = torch.empty((0, 6)) 
            for each_result in intermediate_outputs:
                pinjie1 = torch.cat([each_result, torch.zeros(1).detach()])
                pinjie2 = torch.cat([torch.zeros(2).detach(), pinjie1])
                outputs = torch.cat([outputs, pinjie2.unsqueeze(0)], dim=0)
            # print('outputs', outputs)
      
        # test_results = []
        # for epoch in epochs:
        #
        #     num_Error1 = 0
        #     num_Error2 = 0
        #     num_NOError1 = 0
        #     num_NOError2 = 0




                # print('inputs:', inputs)
                # print('intermediate_outputs:', intermediate_outputs)


            MLP_output_base = shaping(outputs)  

            # 计算 IK_loss_batch
            IK_loss_batch = torch.tensor(0.0, requires_grad=True)
            for i in range(len(inputs)):
                angle_solution = calculate_IK(input_tar[i], MLP_output_base[i], a, d, alpha)
                IK_loss_batch = IK_loss_batch + calculate_IK_loss(angle_solution, inputs[i],outputs[i])
                # print('angle_solution:', angle_solution)

            # if len(angle_solution)>1:
            #
            #     for solution_index in range(8):
            #         ls = []
            #         for angle_index in range(6):
            #             if -math.pi <= angle_solution[solution_index][angle_index] <= math.pi:
            #                 ls.append(angle_solution[solution_index][angle_index])
            #         # print(where_is_the_illegal)
            #         if len(ls) == 6:
            #             # result.append(ls)
            #             print('ls:', ls)
            #             break
            #         break


print(num_Error1, "num_Error1")
print(num_Error2, "num_Error2")
print(num_NOError1, "num_NOError1")
print(num_NOError2, "num_NOError2")
# print(result, "result")

inputs_of_final_result = [[float(tensor) for tensor in sublist] for sublist in inputs_of_final_result]
outputs_of_MLP = [[float(tensor) for tensor in sublist] for sublist in outputs_of_MLP]

print("", inputs_of_final_result)
print("",outputs_of_MLP)
print("", final_result)
print(len(test_data))
print(len(outputs_of_MLP))
mir.MIR_move(outputs_of_MLP[0][3], outputs_of_MLP[0][4], outputs_of_MLP[0][2])
