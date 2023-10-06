import sys
import math
import time
from math import pi, tau, dist, fabs, cos

import rospy
import moveit_commander
import robotiq_gripper_msgs.msg

from moveit_commander.conversions import pose_to_list
from moveit_msgs.msg import CollisionObject, DisplayTrajectory
from geometry_msgs.msg import Pose, PoseStamped
from shape_msgs.msg import SolidPrimitive

# from
from pick_place_python.constants import *
from pick_place_python.util import *

from tf.transformations import quaternion_from_euler


class PNPCommander(object):
    """MoveGroupPythonInterfaceTutorial"""

    def __init__(self):
        super(PNPCommander, self).__init__()
        
        # moveit commander's role : 모션 플래닝, 데카르트 경로 계산 등 래퍼 제공
        moveit_commander.roscpp_initialize(sys.argv)
        rospy.init_node("pick_and_place", anonymous=True)

        # # Robot Commander; 조인트를 직접 제어
        self.robot = moveit_commander.RobotCommander()

        self.scene = moveit_commander.PlanningSceneInterface()

        try:
            self.arm = moveit_commander.MoveGroupCommander(
                "manipulator", ns=rospy.get_namespace()
            )
        except RuntimeError:
            self.arm = moveit_commander.MoveGroupCommander(
                "ur5e_arm", ns=rospy.get_namespace()
            )

        self.arm.set_max_velocity_scaling_factor(1)

        # 경로 계획 설정 횟수 / 초
        self.arm.set_num_planning_attempts(100000)
        self.arm.set_planning_time(10.0)

        # 무브 그룹을 통한 그리퍼 제어
        self.gripper = moveit_commander.MoveGroupCommander(
            "gripper", ns=rospy.get_namespace()
        )
        self.gripper.set_max_velocity_scaling_factor(1)

        ## Create a `DisplayTrajectory`_ ROS publisher which is used to display
        ## trajectories in Rviz:
        self.display_trajectory_publisher = rospy.Publisher(
            "/move_group/display_planned_path", DisplayTrajectory, queue_size=20
        )

        self.joint = [
            moveit_commander.RobotCommander.Joint(self.robot, "shoulder_pan_joint")
        ]
        self.joint.append(
            moveit_commander.RobotCommander.Joint(self.robot, "shoulder_lift_joint")
        )
        self.joint.append(
            moveit_commander.RobotCommander.Joint(self.robot, "elbow_joint")
        )
        self.joint.append(
            moveit_commander.RobotCommander.Joint(self.robot, "wrist_1_joint")
        )
        self.joint.append(
            moveit_commander.RobotCommander.Joint(self.robot, "wrist_2_joint")
        )
        self.joint.append(
            moveit_commander.RobotCommander.Joint(self.robot, "wrist_3_joint")
        )
        self.pub = rospy.Publisher(
            "gripper_command", robotiq_gripper_msgs.msg.GripperCommand, queue_size=10
        )
        self.rate = rospy.Rate(40)  # 10hz

        # We can get the name of the reference frame for this robot:
        self.planning_frame = self.arm.get_planning_frame()
        print("============ Planning frame: %s" % self.planning_frame)

        # We can also print the name of the end-effector link for this group:
        self.eef_link = self.arm.get_end_effector_link()
        print("============ End effector link: %s" % self.eef_link)

        # We can get a list of all the groups in the robot:
        self.group_names = self.robot.get_group_names()
        print("============ Available Planning Groups:", self.robot.get_group_names())

        # Sometimes for debugging it is useful to print the entire state of the robot
        print("============ Printing robot state")
        print(self.robot.get_current_state())
        print(self.arm.get_current_pose())

    def close_gripper(self):
        goal = self.pub

        start1 = rospy.get_time()
        seconds2 = rospy.get_time()
        while (seconds2 - start1) < 0.3 and not rospy.is_shutdown():
            goal.publish(0.85, 1.0, 0.0)
            self.rate.sleep()
            seconds2 = rospy.get_time()

    def open_gripper(self):
        goal = self.pub

        start1 = rospy.get_time()
        seconds2 = rospy.get_time()
        while (seconds2 - start1) < 0.3 and not rospy.is_shutdown():
            goal.publish(0.0, 1.0, 0.0)
            self.rate.sleep()
            seconds2 = rospy.get_time()

    def go_to_state(self, pose_goal=None, joint_goal=None, height=None, tolerance=0.01):
        """주어진 포즈 혹은 조인트에 맞게 로봇팔 이동"""
        if joint_goal is not None:
            # 조인트 값이 주어졌을 때
            self.arm.go(joint_goal, wait=True)

        elif pose_goal is not None:
            # 포지션 값이 주어졌을 때, Goal값과 이동 후 실제 값이 비슷한지 판단
            self.arm.set_pose_target(pose_goal)
            self.arm.go(wait=True)

            current_pose = self.arm.get_current_pose().pose

        self.arm.stop()
        self.arm.clear_pose_targets()
        time.sleep(2)

    def go_to_init_state(self):
        """초기 위치로 로봇팔 조인트 조정"""
        joint_goal = [
            math.radians(0),
            math.radians(-90),
            math.radians(90),
            math.radians(-90),
            math.radians(-90),
            math.radians(0),
        ]
        self.go_to_state(joint_goal=joint_goal)
        self.open_gripper()

    def go_to_stacking_state(self, height):
        """쌓을 곳으로 로봇팔 포지션 이동"""
        pose_goal = self.arm.get_current_pose().pose
        pose_goal.position.x = 0.5
        pose_goal.position.y = 0.3
        pose_goal.position.z = height
        self.go_to_state(pose_goal=pose_goal)

    def go_to_goal_state(self, block_coords):
        """주울 곳으로 로봇팔 포지션 이동"""
        pose_goal = self.arm.get_current_pose().pose
        pose_goal.position.x = block_coords["x"]
        pose_goal.position.y = block_coords["y"]
        pose_goal.position.z = block_coords["z"]
        self.go_to_state(pose_goal=pose_goal)

    def pick_and_place(self, block_coords, place_height):
        # 1. 잡을 블록 좌표 위로 이동
        self.go_to_goal_state(
            {
                "x": block_coords["x"],
                "y": block_coords["y"],
                "z": TABLE_HEIGHT + GRIPPER_SPAN,
            }
        )
        # 2. 잡을 블록 좌표로 이동
        self.go_to_goal_state(
            {"x": block_coords["x"], "y": block_coords["y"], "z": TABLE_HEIGHT}
        )
        # 3. 그리퍼가 블록을 잡음
        self.close_gripper()

        # 4. 그리퍼가 블록을 잡아 올림
        self.go_to_goal_state(
            {
                "x": block_coords["x"],
                "y": block_coords["y"],
                "z": TABLE_HEIGHT + GRIPPER_SPAN,
            }
        )
        # 5. 그리퍼가 쌓을 곳 위로 이동
        self.go_to_stacking_state(place_height + GRIPPER_SPAN)
        # 6. 그리퍼가 쌓기 위해 이동
        self.go_to_stacking_state(place_height + 0.0015)
        # 7. 그리퍼가 블록을 놓음
        self.open_gripper()
        # 8. 그리퍼가 블록 위로 팔을 이동
        self.go_to_stacking_state(place_height + 0.15)

    def stack(self, rows, columns):
        # 지금까지 잡은 블록 수
        count = 0
        # 블록을 놓을 높이 (처음 순회시 0.78에 두기 위해 0.04를 빼줌)
        place_height = TABLE_HEIGHT - 0.04

        # 블록 좌표 x,y 설정
        coord_x_list = range(INIT_X_COORD, INIT_X_COORD + columns)
        coord_y_list = range(INIT_Y_COORD, INIT_Y_COORD + rows)

        coord_x_list = list(map(lambda x: x / 10, coord_x_list))
        coord_y_list = list(map(lambda x: x / 10, coord_y_list))

        # 이중 for문을 이용한 좌표 변경
        for coord_x in coord_x_list:
            for coord_y in coord_y_list:
                count += 1
                place_height += BOX_HEIGHT
                block_coords = {"x": coord_x, "y": coord_y}

                print(f"\n===========[PICK and PLACE] {count} Start ============\n")
                print(f"[PICK] Block {count} Picking")
                print(
                    count,
                    "pick coord : x : {}, y : {}, z: {}\n".format(
                        block_coords["x"], block_coords["y"], TABLE_HEIGHT
                    ),
                )

                self.pick_and_place(block_coords, place_height)

                print(f"[PLACE] Block {count} Placing")
                print(
                    count,
                    "place coord : x : {}, y : {}, z: {}\n".format(
                        0.5, 0.3, place_height
                    ),
                )
