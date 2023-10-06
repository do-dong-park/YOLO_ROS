#!/usr/bin/python

import rospy
from pick_place_python.yolo_commander import *


if __name__ == "__main__":
    
    yolo_controller = RobotControl()
    
    input("============ Press `Enter` to initialize the pose of robot ...")
    yolo_controller.go_to_init_state()
    
    
    input("============ Press `Enter` to stack...")
    # 3 * 2 형태의 블럭을 쌓아 올리기
    yolo_controller.stack()
    
    print("")
    print("-----------------------------------")
    print("Pick and Place Complete")
    print("-----------------------------------")
    print("")
    
    rospy.spin()
