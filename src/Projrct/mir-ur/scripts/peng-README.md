这里记录一些各个技术的粗略说明，详细实现请看每个文件的注释～～

-------------------------------------------关于PLC（modebus）：-------------------------------------------
plc上电的时候，相当于是通讯的server就打开了
这里MODBUS_client_mir.py是所有需要和plc通讯时都要调用的，比如change，拆，缓慢旋转等，都用的其中的某个用法。
modbus_wrapper_client.py是依赖
plc地址是192.168.12.103          /56.103？
PLC的寄存器地址修改方法参见传承PPT，牵扯到修改VW来改VB、VD的值从而调整步进电机直流电机的不同转速转向。PLC编程的相关内容也请参见传承PPT

-------------------------------------------关于mir客户端：-------------------------------------------
mir_control.py是mir控制的客户端，可更改一些阈值，比如移动误差。


-------------------------------------------关于VAE客户端：-------------------------------------------
VAE_client.py：目前用的是这个。这里包含使用yolo的结果，传进VAE中，并获得大小和类型，通过条件判断是什么种类的螺栓。（可能不太准），这里存在一个找最近的操作，是为了找到最近的当前已经对准的螺栓的-图像-，用来送进VAE中判断是不是匹配。（上一步Aim的最后记录下最近的一颗螺栓为下一颗nextpose只有中心点和框框）
VAE_client_task2.py

-------------------------------------------关于YOLO客户端：-------------------------------------------
YOLO_client.py：返回值是中心点和框

-------------------------------------------关于ransac：-------------------------------------------
RANSAC_plane.py
rigid_transform_3D.py

-------------------------------------------关于kalman：-------------------------------------------
kalman.py

-------------------------------------------关于ati：-------------------------------------------
只要上电就发布了话题，直接读就行了
ati官方包launch后就会自己启动并发布话题了。可以直接读取。也就是说，ati没有特定的发布的publisher包。这个官方包启动launch就行了


-------------------------------------------关于insert原语：-------------------------------------------
adjust_and_insert.py是师兄新版本insert，用的是LSTM预测+mobilevit检验。这里的mobilevit是用的mmlab的库直接实例化的。
