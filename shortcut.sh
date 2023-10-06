#!/bin/bash

# 1. cd ~/pdk_ws
cd ~/pdk_ws

# 2. catkin_make
catkin_make

# 3. source devel/setup.bash
cd devel
./setup.bash
cd ~/pdk_ws

# 4. roslaunch ur5e_gripper_moveit_config3 demo.launch
roslaunch ur5e_gripper_moveit_config3 demo.launch

sleep 5

# 5. roslaunch realsense2_camera rs_camera.launch
roslaunch realsense2_camera rs_camera.launch &

# 6. rosrun yolov5_ros detect.py
rosrun yolov5_ros detect.py 

sleep 5

# 7. roslaunch pick_place_python auto_pick_and_place.launch
roslaunch pick_place_python auto_pick_and_place.launch &

# 8. time.sleep(5) (대기)
sleep 5

# 9. rqt_graph
rqt_graph
