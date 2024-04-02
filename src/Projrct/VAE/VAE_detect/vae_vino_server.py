

import os
import pickle
import socket
import cv2
import struct
import numpy as np
import random
from PIL import Image
import select
import sys
import os
import random
import numpy as np
from scipy.stats import norm
import matplotlib.pyplot as plt


import torch
from torchvision import datasets
import torchvision.transforms as transforms
from sklearn.cluster import KMeans
from sklearn.mixture import GaussianMixture
from sklearn.preprocessing import normalize
from sklearn.decomposition import PCA
import dataloader
from dataloader import BatteryDissembleImageDataset
from importlib.machinery import SourceFileLoader
import algorithms as alg

from cluster import *
from plan import *
from dataset_generation import *
from params import *
from utils import file_path, load_vae_model, enocde_dataset
from dataloader import *






# load VAE model
def load_model():
    
    config_file="VAE_ShirtFolding_L1"
    # checkpoint_file="vae_lastCheckpoint.pth"
    checkpoint_file="vae_best_checkpoint.pth"
    channels_num = 3

    #load VAE
    vae_config_file = os.path.join(root_path, 'configs', config_file + '.py')
    vae_directory = os.path.join(root_path, 'models', checkpoint_file)
    vae_config = SourceFileLoader(config_file, vae_config_file).load_module().config 
    # print('vae_config: ', vae_config)
    vae_config['exp_name'] = config_file
    vae_config['vae_opt']['exp_dir'] = vae_directory  
    vae_algorithm = getattr(alg, vae_config['algorithm_type'])(vae_config['vae_opt'])
    vae_algorithm.load_checkpoint(os.path.join(root_path, 'models', config_file, checkpoint_file))
    vae_algorithm.model.eval()

    return vae_algorithm.model


# encode an image by trained VAE model
def encode_an_image(model, img_path, latent_mean):

    if latent_mean is not None:
        latent_mean = latent_mean
        latent_logvar = torch.zeros(latent_mean.shape, device=device)

    if img_path is not None:
        # image -> Tensor
        transform = transforms.Compose(
                            [transforms.Resize((256, 256)),
                             transforms.ToTensor(),
                             ])
        img = transform(Image.open(img_path))
        img = torch.unsqueeze(img, 0)

        # to device encode
        img = img.to(device)
        latent_mean, latent_logvar = model.encoder(img)
    
    z = model.sample(latent_mean, latent_logvar)
    # latent_vector = z_img.cpu().detach().numpy()

    dec_mean, dec_logvar = model.decoder(z)
    # print('dec_mean: ', dec_mean)
    # print('dec_mean shape: ', dec_mean.shape)

    return dec_mean

# return the mean of latent vectors
def enocde_dataset(model, dataset_type='train', class_nums=4):

    battery_set = BatteryDissembleImageDataset(dataset_path=dataset_path, dataset_type=dataset_type, class_nums=class_nums)
    # battery_set = BatteryDissembleDataset(dataset_path=dataset_path, split='train', channels_num=3)
    dataloader = torch.utils.data.DataLoader(battery_set, batch_size=batch_size, shuffle=True,
                                                        num_workers=0, drop_last=True)

    # image_labels & latent_vectors
    image_labels = np.zeros((0))
    latent_vectors = np.zeros((0, 64))
    for batch_idx, (img, image_label) in enumerate(dataloader):
        img = img.to(device)
        image_labels = np.append(image_labels, image_label.cpu().detach().numpy())

        z_img = model(img, sample_latent=True, latent_code=True)
        latent_vectors = np.append(latent_vectors, z_img.cpu().detach().numpy(), axis=0)

    # latent vectors mean
    latent_vectors_sum = np.zeros((4, 64))
    latent_vectors_num = np.zeros((4))

    for i in range(len(image_labels)):
        latent_vectors_sum[int(image_labels[i]), :] += latent_vectors[i, :]
        latent_vectors_num[int(image_labels[i])] += 1

    latent_vectors_mean = latent_vectors_sum / latent_vectors_num.reshape(4, 1) # shape (4, 64)
    print(latent_vectors_mean[0, :])
    print(latent_vectors_mean.shape)


    return latent_vectors_mean


def plot_grid(image):
    """
    Plots an nxn grid of image of size digit_size. Used to monitor the 
    reconstruction of decoded image.
    """
    input_dim = 256 * 256 * 3
    input_channels = 3
    save_path = os.path.join(root_path, 'reconstruct.jpg')

    digit_size = int(np.sqrt(input_dim / input_channels)) # 256
    figure = np.zeros((digit_size, digit_size, input_channels))

    # decode plot
    digit = image[0].permute(1,2,0).detach().cpu().numpy()
    figure[ 0: digit_size,
            0: digit_size] = digit

    plt.figure(figsize=(10, 10))
    plt.imshow(figure, cmap='bone')
    plt.savefig(save_path)
    plt.clf()
    plt.close()


# reconstruct image given probability
def reconstruct(prob):

    VAE_model = load_model()
    latent_vectors_mean = enocde_dataset(VAE_model)

    enc_mean = np.sum(latent_vectors_mean * prob, axis=0).reshape(1, 64)
    enc_mean = torch.from_numpy(enc_mean).float().cuda()
    dec_mean = encode_an_image(model=VAE_model, img_path=None, latent_mean=enc_mean)

    plot_grid(dec_mean)


def action(path):

    vae_model = load_model()
    # build_npy(model=vae_model, encode_dataset=True, cluster=True)
    # goal_proba = find_end_state_distribution()
    goal_proba = np.load(file_path(file_name=end_state_distribution_npy, file_path=True, split=None))
    # print('goal_proba: ', goal_proba)

    probas_norm = img_2_cluster_proba(vae_model=vae_model, test_image=path)
    # print('probas_norm: ', probas_norm)

    predicted_action, plan, predicted_probs, action_prob_dict = search_plan(init_proba=probas_norm, goal_proba=goal_proba)
    print('plan: ', plan)
    print('predicted_probs: ', predicted_probs)
    print('action_prob_dict: ', action_prob_dict)

    return plan

def unpack_image(conn):
    recv_data = b""
    data = b""
    print("unpack_image")
    payload_size = struct.calcsize(">l")
    while len(data) < payload_size:
        # print ('payload_size')
        recv_data += conn.recv(4096)
        # print (recv_data)
        if not recv_data:
            return None
        data += recv_data
    packed_msg_size = data[:payload_size]
    data = data[payload_size:]
    msg_size = struct.unpack(">l", packed_msg_size)[0]
    if msg_size < 0:
        return None
    print('unpack_image len(data): %d, msg_size %d' % (len(data), msg_size))
    while len(data) < msg_size:
        data += conn.recv(4096)

    frame_data = data[:msg_size]
    frame = pickle.loads(frame_data, fix_imports=True, encoding="bytes")
    # frame = cv2.imdecode(frame, cv2.IMREAD_COLOR)

    # print('cv2')
    return frame


from openvino.inference_engine import IECore
import cv2
import numpy as np

# 加载模型
def load_model(model_xml, model_bin):
    ie = IECore()
    net = ie.read_network(model=model_xml, weights=model_bin)
    exec_net = ie.load_network(network=net, device_name="CPU", num_requests=1)  # 指定设备为 CPU
    input_blob = next(iter(net.input_info))
    return exec_net, input_blob

# 执行推理
def perform_inference(exec_net, input_blob, image_path):
    # 读取图像
    image = cv2.imread(image_path)
    # 预处理图像（根据您的模型要求进行预处理，这里以简单的缩放为例）
    processed_image = cv2.resize(image, (256, 256))
    processed_image = processed_image.transpose((2, 0, 1))  # 调整通道顺序
    processed_image = np.expand_dims(processed_image, axis=0)  # 增加批处理维度

    # 执行推理
    res = exec_net.infer(inputs={input_blob: processed_image})

    # 处理推理结果
    output_blob = next(iter(res))
    output = res[output_blob]
    return output
def perform_inference_img(exec_net, input_blob, image):
    # 读取图像
    # image = cv2.imread(image_path)
    # 预处理图像（根据您的模型要求进行预处理，这里以简单的缩放为例）
    processed_image = cv2.resize(image, (256, 256))
    processed_image = processed_image.transpose((2, 0, 1))  # 调整通道顺序
    processed_image = np.expand_dims(processed_image, axis=0)  # 增加批处理维度

    # 执行推理
    res = exec_net.infer(inputs={input_blob: processed_image})

    # 处理推理结果
    output_blob = next(iter(res))
    output = res[output_blob]
    return output
def encode_dataset_folders(model, folders, class_nums=4):
    # 初始化存储所有类别的潜在向量总和和数量
    latent_vectors_sum = np.zeros((class_nums, 64))
    latent_vectors_num = np.zeros((class_nums))

    # 对每个文件夹进行遍历
    for class_index, folder_path in enumerate(folders):
        image_files = os.listdir(folder_path)

        # 对文件夹中的每个图片进行编码
        for image_file in image_files:
            image_path = os.path.join(folder_path, image_file)

            # 使用 perform_inference_img 函数对图片进行编码
            latent_vector = perform_inference(model, input_blob, image_path)
            # print(latent_vector)

            # 将编码向量累加到总和中
            latent_vectors_sum[class_index] += latent_vector[0]
            latent_vectors_num[class_index] += 1

    # 计算平均编码向量
    latent_vectors_mean = latent_vectors_sum / latent_vectors_num.reshape(class_nums, 1)
    print(latent_vectors_mean)
    print(latent_vectors_mean.shape)

    return latent_vectors_mean

def acc_rate(model, folders,latent_vectors_mean):
    
    # 对每个文件夹进行遍历
    for class_index, folder_path in enumerate(folders):
        image_files = os.listdir(folder_path)

        # 对文件夹中的每个图片进行编码
        for image_file in image_files:
            image_path = os.path.join(folder_path, image_file)

            # 使用 perform_inference_img 函数对图片进行编码
            latent_vector = perform_inference(model, input_blob, image_path)
            
    print(latent_vectors_mean)
    print(latent_vectors_mean.shape)

    return latent_vectors_mean

# 模型路径
model_xml = "/home/inexbot/NSAI_new/src/Projrct/VAE/VAE_detect/models/vae_model.xml"
model_bin = "/home/inexbot/NSAI_new/src/Projrct/VAE/VAE_detect/models/vae_model.bin"

# 图像路径
image_path = "/home/inexbot/NSAI_new/src/Projrct/VAE/VAE_detect/true_mul_bolt_crops/cross_hex_bolt/1.jpg"

# 加载模型
VAE_model, input_blob = load_model(model_xml, model_bin)


# # 执行推理
# output = perform_inference(VAE_model, input_blob, image_path)

# # 处理推理结果（根据您的需求进行后处理）
# # 在这里，output 是一个包含分类结果的数组，您可以根据您的模型和数据格式进行后处理

# # 打印结果
# print(output)

# GPU、配置、路径等、socket等一些配置
root_path = os.path.abspath(os.path.dirname(os.path.abspath(__file__)) + '/..')
sys.path.append(root_path)
device=torch.device('cuda' if torch.cuda.is_available() else 'cpu')
root_path = os.path.abspath(os.path.dirname(os.path.abspath(__file__)) + '/')
dataset_path = os.path.join(root_path, 'true_mul_bolt_crops')
bolt_type={0:"in_hex_bolt",1:"star_bolt",2:"out_hex_bolt",3:"cross_hex_bolt"}
folders=[]
for i in range(4):
    folders.append(os.path.join(dataset_path, bolt_type[i]))

server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
ip_port = ('127.0.0.1', 5052)
server.bind(ip_port)
server.listen(5)
# VAE_model = load_model()

# torch.onnx.export(VAE_model,torch.randn(1,3,256,256),"/home/inexbot/NSAI_new/src/Projrct/VAE/VAE_detect/models/vae_model.onnx",verbose=True)
# latent_vectors_mean = enocde_dataset(VAE_model)
# latent_vectors_mean=encode_dataset_folders(VAE_model, folders, class_nums=4)
latent_vectors_mean=[[-530.31612424,-657.9188146,-469.46519977,-683.91711729,-663.11686316
,-686.07168108,-547.72628223,-603.47603951,-480.88715993,-606.00061113
,-671.28012846,-721.7984463,-454.5276248,-763.98615367,-626.35341672
,-480.84654342,-688.9183829,-738.72321563,-770.51482161,-427.47870092
,-480.86092836,-428.09876895,-598.03217198,-504.9410621,-710.0270778
,-450.31846699,-387.85335488,-490.52186278,-443.78383632,-395.02783003
,-489.56087954,-701.66038633,-677.90853398,-504.4782391,-736.88114249
,-443.17180874,-478.23588552,-498.42048332,-484.09375097,-877.36148736
,-697.00937754,-706.8312245,-456.23241097,-517.41464285,-475.0433398
,-451.0695933,-720.76050372,-745.81212734,-747.64369869,-379.57890955
,-491.36703769,-582.68765123,-431.78425292,-740.16940688,-391.91240649
,-662.65290771,-433.77454871,-650.31405665,-752.21120577,-702.20145853
,-709.85306451,-424.59905806,-894.44192292,-616.2089154]
,[-430.73452875,-522.7562695,-383.86991175,-543.33874467,-543.08720997
,-563.7278698,-434.39564097,-489.13539497,-392.66322618,-489.35727259
,-540.38662802,-590.27489033,-371.80038013,-615.22411681,-507.71747164
,-394.16074196,-561.98882858,-609.36085963,-635.37175864,-347.5313436
,-391.68370503,-352.70048273,-494.04179867,-405.46248611,-562.14902844
,-374.95093678,-327.52408244,-396.30368262,-363.62146037,-334.42780868
,-395.18249975,-565.94011903,-537.20329163,-406.51265301,-607.15200779
,-362.48195458,-399.12865629,-411.15193041,-395.85447745,-704.34574532
,-566.29386521,-564.56715245,-375.67528283,-419.35439125,-384.80373237
,-360.91301574,-577.06484655,-598.71346746,-612.72139726,-312.30500587
,-394.12583037,-479.97123003,-357.48324365,-611.09565478,-326.75628985
,-531.67788824,-356.3590279,-520.53433303,-610.44490038,-559.67428191
,-571.27018338,-343.37633166,-732.18275427,-492.22014746]
,[-498.31432822,-611.0187361,-440.94252506,-639.25312084,-616.78435969
,-650.54370304,-506.29517371,-561.56794456,-451.20660613,-574.55307639
,-629.39239347,-683.74401883,-428.95311095,-720.10154883,-588.18115645
,-452.87078954,-642.9770485,-697.87142792,-720.53367435,-402.67618424
,-449.58472111,-400.5186365,-564.63181301,-473.97809656,-660.69917446
,-427.99711523,-369.22868827,-461.55676225,-415.10056926,-368.42765634
,-456.88788137,-657.69163876,-631.55437756,-471.47664956,-689.52174329
,-414.59344764,-457.74181411,-472.11414158,-455.19509446,-819.26977953
,-655.33398931,-664.20504588,-431.93009208,-483.8259946,-444.73803594
,-428.34123361,-676.73134692,-701.43457159,-706.48834539,-354.60730414
,-455.74080661,-551.5470967,-402.45592968,-702.00377931,-371.13870224
,-622.6628962,-402.93226113,-603.37789548,-703.28665175,-653.69089729
,-668.71820717,-398.24876897,-853.35922828,-575.90968464]
,[-446.12339408,-550.76208206,-390.34721482,-564.38748985,-559.63171235
,-575.20677591,-460.57419796,-513.08801006,-403.34136497,-516.42062962
,-567.57621141,-583.16869675,-382.86800034,-641.97416285,-524.23220223
,-402.50239521,-567.17148086,-621.40307626,-633.64538057,-358.71215595
,-403.79870889,-353.70815041,-489.30823655,-432.08563478,-588.77317194
,-386.07652276,-337.77004657,-412.71920183,-372.37404601,-338.1565736
,-411.2791249,-596.51433942,-566.99543905,-417.29524541,-616.90464903
,-369.57513169,-420.30915344,-431.30818785,-417.22074631,-731.14683948
,-581.67849566,-593.77916869,-388.16374929,-439.69290527,-404.24431668
,-381.14964772,-608.13536411,-640.9738948,-628.36324681,-316.49193111
,-416.22797648,-502.2521104,-362.59242971,-613.86364536,-325.71438748
,-562.3585226,-355.07802874,-542.58911432,-636.70161144,-577.38562257
,-594.93374812,-342.92514993,-737.96584302,-510.26572485]]

# transform = transforms.Compose(
#                             [transforms.Resize((256, 256)),
#                              transforms.ToTensor(),
#                              ])


while True:
    conn, addr = server.accept() # 接受socket传进来的图片
    print(conn, addr)
    while True:
        try:
            frame = unpack_image(conn) # 解压缩包
            if frame is None:
                print("client request stop")
                break
            
            # frame_im = Image.fromarray(np.array(frame))
            # frame_im.show()
            # print(frame_im.mode)
            # img = transform(frame_im)
            # img = torch.unsqueeze(img, 0)
            # img = img.to(device)
            # to device encode

            # 放进VAE中编码
            latent_mean = perform_inference_img(VAE_model, input_blob, np.array(frame))
            # latent_mean = latent_mean.cpu().detach().numpy()[0]
            print("latent_mean\n",latent_mean)
            dist_bolt= np.zeros((4))

            # 计算跟四类的特征向量的相似距离，latent_vectors_mean是四类的，来自于训练好的ae
            for i in range(4):
                dist_bolt[i] = np.sqrt(np.sum(np.square(latent_vectors_mean[i] - latent_mean)))
            print("dist_bolt\n",dist_bolt)
            bolt_type={0:"in_hex_bolt",1:"star_bolt",2:"out_hex_bolt",3:"cross_hex_bolt"}
            print("bolt_type:",bolt_type[np.argmin(dist_bolt)])
            array_str = pickle.dumps(bolt_type[np.argmin(dist_bolt)], protocol=2)
            conn.sendall(array_str)
            # 结果就是找到了最近的那一类，然后输出种类


        except ConnectionResetError as e:
            print('the connection is lost')
            break
    conn.close()
