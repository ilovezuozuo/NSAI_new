true_mul_bolt_crops是四类数据。训练时为了让特征明显，两两拼接赋值0或1

vae_server.py是调用vae.py和models中"vae_best_checkpoint.pth"权重然后挂起来的

train_VAE.py是他的训练代码

vae_server.py中加载的VAE的权重和配置文件分别在/home/xps/Desktop/NSAI_new/src/Projrct/VAE/VAE_detect/models/VAE_ShirtFolding_L1/vae_best_checkpoint.pth
和/home/xps/Desktop/NSAI_new/src/Projrct/VAE/VAE_detect/configs/VAE_ShirtFolding_L1.py
这里最重要的主要是server，关于VAE数据集，训练，结构等，请去算法训练文件夹下看！！！！！！！！！！！！！！！！！！！！
