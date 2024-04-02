#!/bin/bash

 # --- for every Terminal-tab
 # source /home/xps/anaconda3/bin/activate ur_env
 cd ~/NSAI_new
 source devel/setup.bash


{
        gnome-terminal --tab "ros_init" -- bash -c "roslaunch example_organization_ur_launch ex_mir_ur10e.launch"
}&

sleep 5s

{
        gnome-terminal --tab "tf_mon" -- bash -c "rosrun tf tf_monitor"
}&

sleep 5s

{
        gnome-terminal --tab "mir_init" -- bash -c "roslaunch mir_driver mir.launch "
}&

sleep 5s

{
        gnome-terminal --tab "moveit_init" -- bash -c "roslaunch ur10e_moveit_config battery_sleeve.launch;exec bash"
}&

sleep 5s

{
        gnome-terminal --tab "rs_init" -- bash -c "cd ~/catkin_ws;source devel/setup.bash;roslaunch realsense2_camera rs_camera.launch align_depth:=true filters:=hole_filling;exec bash"
}&
sleep 3s

{
        gnome-terminal --tab "hde_init" -- bash -c "roslaunch easy_handeye publish.launch;exec bash"
}&

sleep 3s

{
        gnome-terminal --tab "np_init" -- bash -c "cd ~/NSAI_new/src/Projrct/VGG;python mir_np_server.py;exec bash"
}&
sleep 3s

{
        gnome-terminal --tab "yolo_init" -- bash -c "cd ~/NSAI_new/src/Projrct/YOLO/YOLO_v5_detect;python YOLO_server_vino.py;exec bash"
}&

sleep 3s

{
        gnome-terminal --tab "vae_init" -- bash -c "cd ~/NSAI_new/src/Projrct/VAE/VAE_detect/;python vae_vino_server.py;exec bash"
}&

sleep 3s



