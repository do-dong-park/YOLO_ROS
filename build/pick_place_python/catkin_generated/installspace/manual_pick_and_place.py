#!/usr/bin/python
from pick_place_python.manual_commander import PNPCommander
                
/home/ur5e/pdk_ws/src

if __name__ == '__main__':
    
    print("-----------------------------------")
    print("UR5e with robotiq_85_gripper robot")
    print("-----------------------------------")
    print("")
    
    pick_place_commander = PNPCommander()
        
    input("============ Press `Enter` to initialize the pose of robot ...")
    pick_place_commander.go_to_init_state()
    
    
    input("============ Press `Enter` to stack...")
    # 3 * 2 형태의 블럭을 쌓아 올리기
    pick_place_commander.stack(rows=3,columns=2)
    
    print("")
    print("-----------------------------------")
    print("Pick and Place Complete")
    print("-----------------------------------")
    print("")