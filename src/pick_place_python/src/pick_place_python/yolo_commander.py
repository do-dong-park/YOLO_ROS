
import sys
import math
import time
import torch
import numpy as np
import cv2
import message_filters
import rospy
import moveit_commander
import robotiq_gripper_msgs.msg

from pick_place_python.manual_commander import PNPCommander

from math import pi, tau, dist, fabs, cos
from moveit_commander.conversions import pose_to_list
from moveit_msgs.msg import CollisionObject, DisplayTrajectory
from geometry_msgs.msg import Pose, PoseStamped
from shape_msgs.msg import SolidPrimitive
from pick_place_python.constants import *
from pick_place_python.util import *

from sensor_msgs.msg import Image
from yolov5_ros.msg import BoundingBoxes
from tf.transformations import quaternion_from_euler

class RobotControl(PNPCommander):
    def __init__(self):
        print("로봇 컨트롤러 실행")
        super().__init__()
        print("로봇 컨트롤러 완료")
        # 다른 노드에서 메세지를 수신
        image_cb = message_filters.Subscriber('/camera/depth/image_rect_raw', Image)
        yolov5_cb = message_filters.Subscriber('/yolov5_ros', BoundingBoxes)

        ts = message_filters.TimeSynchronizer([image_cb, yolov5_cb], 10)
        ts.registerCallback(self.callback)

    def callback(self, img_msg, bbox_msg):
        dtype = np.dtype("uint8")
        dtype = dtype.newbyteorder('>' if img_msg.is_bigendian else '<')
        img_cv = np.ndarray(shape=(img_msg.height, img_msg.width, 3), dtype=dtype, buffer=img_msg.data)
        if img_msg.is_bigendian == (sys.byteorder == 'little'):
            img_cv = img_cv.byteswap().newbyteorder()
        img_cv = cv2.cvtColor(img_cv, cv2.COLOR_BGR2RGB)
        for bbox in bbox_msg.bounding_boxes:
            print(bbox)
            cv2.rectangle(img_cv, (bbox.xmin, bbox.ymin), (bbox.xmax, bbox.ymax), (255,0,0), 2)

        cv2.imwrite('aaa.jpg', img_cv)


