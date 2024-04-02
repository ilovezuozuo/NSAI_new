from openvino.inference_engine import IECore
import cv2
import numpy as np
from PIL import Image

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
    processed_image = cv2.resize(image, (224, 224))
    cv2.imshow('image', processed_image)
    cv2.waitKey(0)
    cv2.destroyAllWindows()
    # processed_image = cv2.centercrop(processed_image,(224,224))
    processed_image = processed_image.transpose((2, 0, 1))  # 调整通道顺序
    processed_image = np.expand_dims(processed_image, axis=0)  # 增加批处理维度
    

    # 执行推理
    res = exec_net.infer(inputs={input_blob: processed_image})

    # 处理推理结果
    output_blob = next(iter(res))
    output = res[output_blob]
    return output

# 模型路径
model_xml = "/home/inexbot/mobile_vit_vino_model/ort/end2end.xml"
model_bin = "/home/inexbot/mobile_vit_vino_model/ort/end2end.bin"
# config_file="/home/inexbot/mobile_vit_vino_model/ort/end2end.mapping"

# 图像路径
# image_path = "/home/inexbot/mobile_vit_vino_model/fit/0.714.jpg"
image_path = "/home/inexbot/mobile_vit_vino_model/tilt/2.02551.jpg"


# 加载模型
exec_net, input_blob = load_model(model_xml, model_bin)

# 执行推理
output = perform_inference(exec_net, input_blob, image_path)

# 处理推理结果（根据您的需求进行后处理）
# 在这里，output 是一个包含分类结果的数组，您可以根据您的模型和数据格式进行后处理

# 打印结果
print(output)