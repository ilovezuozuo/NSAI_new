#!/usr/bin/env python
"""
 Copyright (C) 2018-2019 Intel Corporation

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
"""
from __future__ import print_function, division

import logging
import os
import sys
from argparse import ArgumentParser, SUPPRESS
from math import exp as exp
from time import time
import numpy as np
import threading

import os
import pickle
import socket
import cv2
import struct
import random
from yolo import YOLO
from PIL import Image
import select

import cv2
from openvino.inference_engine import IENetwork, IECore
from PIL import Image
import matplotlib.pyplot as plt


logging.basicConfig(format="[ %(levelname)s ] %(message)s", level=logging.INFO, stream=sys.stdout)
log = logging.getLogger()


def build_argparser():
    parser = ArgumentParser(add_help=False)
    args = parser.add_argument_group('Options')
    args.add_argument('-h', '--help', action='help', default=SUPPRESS, help='Show this help message and exit.')
    args.add_argument("-m", "--model", default="/home/inexbot/NeuralSymbol_AI/src/fmauch_universal_robot/ur_real_robot/YOLO_v5_detect/model_data/best.xml", help="Required. Path to an .xml file with a trained model.",
                       type=str)
    args.add_argument("-i", "--input", default='/home/inexbot/NeuralSymbol_AI/src/fmauch_universal_robot/ur_real_robot/YOLO_v5_detect/img_crop/1.jpg', help="Required. Path to an image/video file. (Specify 'cam' to work with "
                                            "camera)",  type=str)
    args.add_argument("-l", "--cpu_extension",
                      help="Optional. Required for CPU custom layers. Absolute path to a shared library with "
                           "the kernels implementations.", type=str, default=None)
    args.add_argument("-d", "--device",
                      help="Optional. Specify the target device to infer on; CPU, GPU, FPGA, HDDL or MYRIAD is"
                           " acceptable. The sample will look for a suitable plugin for device specified. "
                           "Default value is CPU", default="GPU", type=str)
    args.add_argument("--labels", help="Optional. Labels mapping file", default=None, type=str)
    args.add_argument("-t", "--prob_threshold", help="Optional. Probability threshold for detections filtering",
                      default=0.5, type=float)
    args.add_argument("-iout", "--iou_threshold", help="Optional. Intersection over union threshold for overlapping "
                                                       "detections filtering", default=0.4, type=float)
    args.add_argument("-ni", "--number_iter", help="Optional. Number of inference iterations", default=1, type=int)
    args.add_argument("-pc", "--perf_counts", help="Optional. Report performance counters", default=False,
                      action="store_true")
    args.add_argument("-r", "--raw_output_message", help="Optional. Output inference results raw values showing",
                      default=False, action="store_true")
    args.add_argument("--no_show", help="Optional. Don't show output", action='store_true')
    return parser


class YoloParams:
    # ------------------------------------------- Extracting layer parameters ------------------------------------------
    # Magic numbers are copied from yolo samples
    def __init__(self,  side):
        self.num = 3 #if 'num' not in param else int(param['num'])
        self.coords = 4 #if 'coords' not in param else int(param['coords'])
        self.classes = 80 #if 'classes' not in param else int(param['classes'])
        self.side = side
        self.anchors = [10.0, 13.0, 16.0, 30.0, 33.0, 23.0, 30.0, 61.0, 62.0, 45.0, 59.0, 119.0, 116.0, 90.0, 156.0,
                        198.0,
                        373.0, 326.0] #if 'anchors' not in param else [float(a) for a in param['anchors'].split(',')]


    def log_params(self):
        params_to_print = {'classes': self.classes, 'num': self.num, 'coords': self.coords, 'anchors': self.anchors}
        [log.info("         {:8}: {}".format(param_name, param)) for param_name, param in params_to_print.items()]


def letterbox(img, size=(640, 640), color=(114, 114, 114), auto=True, scaleFill=False, scaleup=True):
    shape = img.shape[:2]  # current shape [height, width]
    w, h = size

    # Scale ratio (new / old)
    r = min(h / shape[0], w / shape[1])
    if not scaleup:  # only scale down, do not scale up (for better test mAP)
        r = min(r, 1.0)

    # Compute padding
    ratio = r, r  # width, height ratios
    new_unpad = int(round(shape[1] * r)), int(round(shape[0] * r))
    dw, dh = w - new_unpad[0], h - new_unpad[1]  # wh padding
    if auto:  # minimum rectangle
        dw, dh = np.mod(dw, 64), np.mod(dh, 64)  # wh padding
    elif scaleFill:  # stretch
        dw, dh = 0.0, 0.0
        new_unpad = (w, h)
        ratio = w / shape[1], h / shape[0]  # width, height ratios

    dw /= 2  # divide padding into 2 sides
    dh /= 2

    if shape[::-1] != new_unpad:  # resize
        img = cv2.resize(img, new_unpad, interpolation=cv2.INTER_LINEAR)
    top, bottom = int(round(dh - 0.1)), int(round(dh + 0.1))
    left, right = int(round(dw - 0.1)), int(round(dw + 0.1))
    img = cv2.copyMakeBorder(img, top, bottom, left, right, cv2.BORDER_CONSTANT, value=color)  # add border

    top2, bottom2, left2, right2 = 0, 0, 0, 0
    if img.shape[0] != h:
        top2 = (h - img.shape[0])//2
        bottom2 = top2
        img = cv2.copyMakeBorder(img, top2, bottom2, left2, right2, cv2.BORDER_CONSTANT, value=color)  # add border
    elif img.shape[1] != w:
        left2 = (w - img.shape[1])//2
        right2 = left2
        img = cv2.copyMakeBorder(img, top2, bottom2, left2, right2, cv2.BORDER_CONSTANT, value=color)  # add border
    return img


def scale_bbox(x, y, height, width, class_id, confidence, im_h, im_w, resized_im_h=640, resized_im_w=640):
    gain = min(resized_im_w / im_w, resized_im_h / im_h)  # gain  = old / new
    pad = (resized_im_w - im_w * gain) / 2, (resized_im_h - im_h * gain) / 2  # wh padding
    x = int((x - pad[0])/gain)
    y = int((y - pad[1])/gain)

    w = int(width/gain)
    h = int(height/gain)
 
    xmin = max(0, int(x - w / 2))
    ymin = max(0, int(y - h / 2))
    xmax = min(im_w, int(xmin + w))
    ymax = min(im_h, int(ymin + h))
    return dict(xmin=xmin, xmax=xmax, ymin=ymin, ymax=ymax, class_id=class_id.item(), confidence=confidence.item())


def entry_index(side, coord, classes, location, entry):
    side_power_2 = side ** 2
    n = location // side_power_2
    loc = location % side_power_2
    return int(side_power_2 * (n * (coord + classes + 1) + entry) + loc)


def parse_yolo_region(blob, resized_image_shape, original_im_shape, params, threshold):
    # ------------------------------------------ Validating output parameters ------------------------------------------    
    out_blob_n, out_blob_c, out_blob_h, out_blob_w = blob.shape
    predictions = 1.0/(1.0+np.exp(-blob)) 
                   
    assert out_blob_w == out_blob_h, "Invalid size of output blob. It sould be in NCHW layout and height should " \
                                     "be equal to width. Current height = {}, current width = {}" \
                                     "".format(out_blob_h, out_blob_w)

    # ------------------------------------------ Extracting layer parameters -------------------------------------------
    orig_im_h, orig_im_w = original_im_shape
    resized_image_h, resized_image_w = resized_image_shape
    objects = list()
 
    side_square = params.side * params.side

    # ------------------------------------------- Parsing YOLO Region output -------------------------------------------
    bbox_size = int(out_blob_c/params.num) #4+1+num_classes

    for row, col, n in np.ndindex(params.side, params.side, params.num):
        bbox = predictions[0, n*bbox_size:(n+1)*bbox_size, row, col]
        
        x, y, width, height, object_probability = bbox[:5]
        class_probabilities = bbox[5:]
        if object_probability < threshold:
            continue
        x = (2*x - 0.5 + col)*(resized_image_w/out_blob_w)
        y = (2*y - 0.5 + row)*(resized_image_h/out_blob_h)
        if int(resized_image_w/out_blob_w) == 8 & int(resized_image_h/out_blob_h) == 8: #80x80, 
            idx = 0
        elif int(resized_image_w/out_blob_w) == 16 & int(resized_image_h/out_blob_h) == 16: #40x40
            idx = 1
        elif int(resized_image_w/out_blob_w) == 32 & int(resized_image_h/out_blob_h) == 32: # 20x20
            idx = 2

        width = (2*width)**2* params.anchors[idx * 6 + 2 * n]
        height = (2*height)**2 * params.anchors[idx * 6 + 2 * n + 1]
        class_id = np.argmax(class_probabilities)
        confidence = object_probability
        objects.append(scale_bbox(x=x, y=y, height=height, width=width, class_id=class_id, confidence=confidence,
                                  im_h=orig_im_h, im_w=orig_im_w, resized_im_h=resized_image_h, resized_im_w=resized_image_w))
    return objects


def intersection_over_union(box_1, box_2):
    width_of_overlap_area = min(box_1['xmax'], box_2['xmax']) - max(box_1['xmin'], box_2['xmin'])
    height_of_overlap_area = min(box_1['ymax'], box_2['ymax']) - max(box_1['ymin'], box_2['ymin'])
    if width_of_overlap_area < 0 or height_of_overlap_area < 0:
        area_of_overlap = 0
    else:
        area_of_overlap = width_of_overlap_area * height_of_overlap_area
    box_1_area = (box_1['ymax'] - box_1['ymin']) * (box_1['xmax'] - box_1['xmin'])
    box_2_area = (box_2['ymax'] - box_2['ymin']) * (box_2['xmax'] - box_2['xmin'])
    area_of_union = box_1_area + box_2_area - area_of_overlap
    if area_of_union == 0:
        return 0
    return area_of_overlap / area_of_union

# 定义一个函数来显示检测结果
def display_results(results):
    for result in results:
        cv2.imshow("DetectionResults", result)
        cv2.waitKey(0)  # 等待按下任意键继续
    cv2.destroyAllWindows()

# def preprocess_image_for_yolo(frame_im, input_size):
#     # Resize and pad the image
#     resized_image = cv2.resize(frame_im, input_size)
#     padded_image = np.full((*input_size, 3), 128, dtype=np.uint8)
#     padded_image[:resized_image.shape[0], :resized_image.shape[1], :] = resized_image

#     # Swap channel order (RGB -> BGR)
#     padded_image = padded_image[:, :, ::-1]

#     # Convert image to numpy array
#     image_data = padded_image.astype(np.float32) / 255.0
#     image_data = np.transpose(image_data, (2, 0, 1))  # Change data layout from HWC to CHW

#     return image_data
    
def preprocess_image_for_yolo(frame_im, input_size):
    # Resize and pad the image
    resized_image = cv2.resize(frame_im, input_size)
    
    # Ensure resized image has 3 channels
    if len(resized_image.shape) == 2:  # If grayscale, convert to RGB
        resized_image = cv2.cvtColor(resized_image, cv2.COLOR_GRAY2RGB)
    
    padded_image = np.full((*input_size, 3), 128, dtype=np.uint8)
    padded_image[:resized_image.shape[0], :resized_image.shape[1], :] = resized_image

    # Swap channel order (RGB -> BGR)
    padded_image = padded_image[:, :, ::-1]

    # Convert image to numpy array
    image_data = padded_image.astype(np.float32) / 255.0
    image_data = np.transpose(image_data, (2, 0, 1))  # Change data layout from HWC to CHW

    return image_data

def detect_with_IR_formed_YOLO(frame_im):
    args = build_argparser().parse_args()


    # ------------- 1. Plugin initialization for specified device and load extensions library if specified -------------
    log.info("Creating Inference Engine...")
    ie = IECore()
    if args.cpu_extension and 'CPU' in args.device:
        ie.add_extension(args.cpu_extension, "CPU")

    # -------------------- 2. Reading the IR generated by the Model Optimizer (.xml and .bin files) --------------------
    model = args.model
    log.info(f"Loading network:\n\t{model}")
    net = ie.read_network(model=model)
    # ---------------------------------- 3. Load CPU extension for support specific layer ------------------------------

    assert len(net.input_info.keys()) == 1, "Sample supports only YOLO V3 based single input topologies"

    # ---------------------------------------------- 4. Preparing inputs -----------------------------------------------
    log.info("Preparing inputs")
    input_blob = next(iter(net.input_info))

    #  Defaulf batch_size is 1
    net.batch_size = 1

    # Read and pre-process input images
    n, c, h, w = net.input_info[input_blob].input_data.shape

    if args.labels:
        with open(args.labels, 'r') as f:
            labels_map = [x.strip() for x in f]
    else:
        labels_map = None

    input_stream = 0 if args.input == "cam" else args.input
    # input_stream is the path of the input from args.they are the same!2024.03.27-peng
    print('here i will output the input_stream to see the input from args:', input_stream)
    print('here i will also output the input of the function to see whether they are the same:', frame_im)


    is_async_mode = True
    cap = cv2.VideoCapture(input_stream)

    print('here i will output the cap!!! to see the input from args:', cap)

    number_input_frames = int(cap.get(cv2.CAP_PROP_FRAME_COUNT))
    cccccccc = 1 if number_input_frames != -1 and number_input_frames < 0 else number_input_frames

    

    wait_key_code = 1

    # Number of frames in picture is 1 and this will be read in cycle. Sync mode is default value for this case
    if number_input_frames != 1:
        ret, frame = cap.read()

    else:
        is_async_mode = False
        wait_key_code = 0

    # ----------------------------------------- 5. Loading model to the plugin -----------------------------------------
    log.info("Loading model to the plugin")
    exec_net = ie.load_network(network=net, num_requests=2, device_name=args.device)
    cur_request_id = 0
    next_request_id = 1
    render_time = 0
    parsing_time = 0

    log.info("Starting inference...")
    print("To close the application, press 'CTRL+C' here or switch to the output window and press ESC key")

    print("To switch between sync/async modes, press TAB key in the output window")

    bbox_center_collect = []
    bbox_collect = []
    image = None

    if is_async_mode:
        ret, next_frame = cap.read()
    else:
        ret, frame = cap.read()
        print('here i will output the frame!!! to see the input from args:', frame)
        print('here i will output the frame!!! to see the input from args:', type(frame))
        print('here i will output the frame!!! to see the input from args:', type(frame))

    print('frame_im:', frame_im)

    frame = frame_im
  
    if is_async_mode:
        request_id = next_request_id
        in_frame = letterbox(frame, (w, h))
    else:
        request_id = cur_request_id
        in_frame = letterbox(frame, (w, h))
        print('in_frame!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!', in_frame)
        print('type_in_frame!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!', type(in_frame))
        print('type_in_frame!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!', in_frame.shape)
        
    # frame_np = np.array(frame_im)
    # print('frame_np!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!', frame_np)
    # print('type_frame_np!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!', type(frame_np))
    # print('type_iframe_np!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!', frame_np.shape)

    # if is_async_mode:
    #     request_id = next_request_id
    #     in_frame22 = preprocess_image_for_yolo(frame_np, (w, h))
    #     in_frame = np.transpose(in_frame22, (1, 2, 0))

    # else:
    #     request_id = cur_request_id
    #     in_frame22 = preprocess_image_for_yolo(frame_np, (w, h))
    #     in_frame = np.transpose(in_frame22, (1, 2, 0))

    #     print('in_frame!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!', in_frame)
    #     print('type_in_frame!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!', type(in_frame))
    #     print('type_in_frame!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!', in_frame.shape)



    # in_frame = preprocess_image_for_yolo(frame_np, (w, h))


    in_frame0 = in_frame
    in_frame = in_frame.transpose((2, 0, 1))
    in_frame = in_frame.reshape((n, c, h, w))

    start_time = time()
    exec_net.start_async(request_id=request_id, inputs={input_blob: in_frame})
    det_time = time() - start_time

    objects = list()
    if exec_net.requests[cur_request_id].wait(-1) == 0:
        output = exec_net.requests[cur_request_id].output_blobs
        start_time = time()
        for layer_name, out_blob in output.items():
            layer_params = YoloParams(side=out_blob.buffer.shape[2])
            log.info("Layer {} parameters: ".format(layer_name))
            layer_params.log_params()
            objects += parse_yolo_region(out_blob.buffer, in_frame.shape[2:],
                                            frame.shape[:-1], layer_params,
                                            0.5)
        parsing_time = time() - start_time

    objects = sorted(objects, key=lambda obj : obj['confidence'], reverse=True)
    for i in range(len(objects)):
        if objects[i]['confidence'] == 0:
            continue
        for j in range(i + 1, len(objects)):
            if intersection_over_union(objects[i], objects[j]) > 0.4:
                objects[j]['confidence'] = 0

    objects = [obj for obj in objects if obj['confidence'] >= 0.5]

    origin_im_size = frame.shape[:-1]
    for obj in objects:
        if obj['xmax'] > origin_im_size[1] or obj['ymax'] > origin_im_size[0] or obj['xmin'] < 0 or obj['ymin'] < 0:
            continue
        bbox_center = ((obj['xmin'] + obj['xmax']) / 2, (obj['ymin'] + obj['ymax']) / 2)
        bbox_center_collect.append(bbox_center)
        bbox_collect.append((obj['xmin'], obj['ymin'], obj['xmax'], obj['ymax']))

        color = (int(min(obj['class_id'] * 12.5, 255)),
                    min(obj['class_id'] * 7, 255), min(obj['class_id'] * 5, 255))
        det_label = labels_map[obj['class_id']] if labels_map and len(labels_map) >= obj['class_id'] else \
            str(obj['class_id'])

        cv2.rectangle(frame, (obj['xmin'], obj['ymin']), (obj['xmax'], obj['ymax']), color, 2)
        cv2.putText(frame,
                    "#" + det_label + ' ' + str(round(obj['confidence'] * 100, 1)) + ' %',
                    (obj['xmin'], obj['ymin'] - 7), cv2.FONT_HERSHEY_COMPLEX, 0.6, color, 1)

    inf_time_message = "Inference time: N\A for async mode" if is_async_mode else \
        "Inference time: {:.3f} ms".format(det_time * 1e3)
    cv2.putText(frame, inf_time_message, (15, 15), cv2.FONT_HERSHEY_COMPLEX, 0.5, (200, 10, 10), 1)
    print("bbox_center_collect",bbox_center_collect)
    print("bbox_collect",bbox_collect)
    print(frame)
    cv2.destroyAllWindows()
    cv2.namedWindow('Image', cv2.WINDOW_NORMAL)
    cv2.imshow('Image', frame)
    
    # 等待一段时间（毫秒），这里设置为100毫秒
    
    key = cv2.waitKey(1000)
    image = Image.fromarray(np.array(frame))
    image.show()
    # start_time = time()
    print("执行到这里了！")


    # 定义一个列表来存储检测结果
    detection_results = []

    # 检测到一张图片后执行的代码段
    # 假设 frame 是检测到的图片帧
    # 你的检测逻辑...
    # 检测完成后将结果存储到列表中
    detection_results.append(frame)

    # # 创建一个线程来显示结果
    # display_thread = threading.Thread(target=display_results, args=(detection_results,))
    # display_thread.start()

    # display_thread.join()


    # 显示结果的逻辑放到另外一个地方，以免阻塞
    # 当需要显示结果时，按下特定按键显示
    print("执行到这里了222！")
    key = cv2.waitKey(1)  # 设置超时为1毫秒，不阻塞程序运行
    if key == 9:  # 如果按下Tab键，显示结果
        for result in detection_results:
            cv2.imshow("DetectionResults", result)

    # 如果按下ESC键，退出程序
    if key == 27:
        cv2.destroyAllWindows()
    return image, (bbox_center_collect, bbox_collect)

# def unpack_image(conn):
#     recv_data = b""
#     data = b""
#     print("unpack_image")
#     payload_size = struct.calcsize(">l")
#     while len(data) < payload_size:
#         # print ('payload_size')
#         recv_data += conn.recv(4096)
#         # print (recv_data)
#         if not recv_data:
#             return None
#         data += recv_data
#     packed_msg_size = data[:payload_size]
#     data = data[payload_size:]
#     msg_size = struct.unpack(">l", packed_msg_size)[0]
#     if msg_size < 0:
#         return None
#     print('unpack_image len(data): %d, msg_size %d' % (len(data), msg_size))
#     while len(data) < msg_size:
#         data += conn.recv(4096)

#     frame_data = data[:msg_size]
#     frame = pickle.loads(frame_data, fix_imports=True, encoding="bytes")
#     # frame = cv2.imdecode(frame, cv2.IMREAD_COLOR)

#     # print('cv2')
#     return frame
def unpack_image(conn):
    recv_data = b""
    data = b""
    payload_size = struct.calcsize(">L")
    
    # 接收完整的数据
    while len(data) < payload_size:
        recv_data = conn.recv(4096)
        if not recv_data:
            return None
        data += recv_data
    
    # 解析数据大小
    packed_msg_size = data[:payload_size]
    data = data[payload_size:]
    msg_size = struct.unpack(">L", packed_msg_size)[0]
    
    # 接收完整的帧数据
    while len(data) < msg_size:
        recv_data = conn.recv(4096)
        if not recv_data:
            return None
        data += recv_data
    
    # 解析帧数据
    frame_data = data[:msg_size]
    frame_encoded = pickle.loads(frame_data, fix_imports=True, encoding="bytes")
    frame = cv2.imdecode(frame_encoded, cv2.IMREAD_COLOR)
    
    return frame


def unpack_imagee(conn):
    # 解析数据长度
    data_size = struct.unpack(">L", conn.recv(4))[0]
    # 从接收到的数据中提取帧数据
    frame_data = b""
    while len(frame_data) < data_size:
        frame_data += conn.recv(data_size - len(frame_data))
    # 将帧数据反序列化为多维数组形式
    frame = pickle.loads(frame_data)
    return frame

# yolo = YOLO()

server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
ip_port = ('127.0.0.1', 5050)
server.bind(ip_port)
server.listen(5)



while True:
    conn, addr = server.accept()
    print(conn, addr)
    cv2.namedWindow('Image', cv2.WINDOW_NORMAL)
    while True:
        try:
            frame = unpack_image(conn)

            # received_frame = unpack_imagee(conn)
            # print(received_frame)

            if frame is None:
                print("client request stop")
                break
            
            # frame_im = Image.fromarray(np.array(frame))
            print('frame_im = Image.fromarray(np.array(frame))~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~', frame)

            # frame_im.show()
            result, yolo_detect = detect_with_IR_formed_YOLO(frame)

            # open_cv_image = cv2.cvtColor(np.array(result), cv2.COLOR_RGB2BGR)


            result.show()
            print('result!!!!!!!!!!!!!!!!!1', result)

            print('yolo_detect!!!!!!!!!!!!!!!!!1', yolo_detect)
            array_str = pickle.dumps(yolo_detect, protocol=2)
            conn.sendall(array_str)

        except ConnectionResetError as e:
            print('the connection is lost')
            break
    conn.close()
    # cv2.destroyAllWindows()
