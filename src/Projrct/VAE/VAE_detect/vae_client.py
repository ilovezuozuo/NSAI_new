#!/usr/bin/env python
# -*- coding: UTF-8 -*-
import socket
import pickle
import struct
import cv2

def pack_image(frame):
    # encode_param = [int(cv2.IMWRITE_JPEG_QUALITY), 90]
    # result, frame = cv2.imencode('.jpg', frame, encode_param)
    data = pickle.dumps(frame, 0)
    size = len(data)
    packed = struct.pack(">L", size) + data
    return packed, data, size


def get_predicate_result():
    data = sock.recv(4096)
    result = pickle.loads(data)
    return result


if __name__ == '__main__':
    ip_port = ('127.0.0.1', 5052)
    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    sock.connect(ip_port)
    dirpath = "/home/inexbot/NSAI_new/src/Projrct/VAE/VAE_detect/true_mul_bolt_crops/in_hex_bolt/21.jpg"
    img = cv2.imread(dirpath)

    packed, data, size = pack_image(img)
    sock.sendall(packed)
    print("send all finished")
    result=(get_predicate_result())
    print(result)
