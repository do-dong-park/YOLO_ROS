;; Auto-generated. Do not edit!


(when (boundp 'robotiq_gripper_msgs::GripperCommand)
  (if (not (find-package "ROBOTIQ_GRIPPER_MSGS"))
    (make-package "ROBOTIQ_GRIPPER_MSGS"))
  (shadow 'GripperCommand (find-package "ROBOTIQ_GRIPPER_MSGS")))
(unless (find-package "ROBOTIQ_GRIPPER_MSGS::GRIPPERCOMMAND")
  (make-package "ROBOTIQ_GRIPPER_MSGS::GRIPPERCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude GripperCommand.msg.html


(defclass robotiq_gripper_msgs::GripperCommand
  :super ros::object
  :slots (_position _speed _force ))

(defmethod robotiq_gripper_msgs::GripperCommand
  (:init
   (&key
    ((:position __position) 0.0)
    ((:speed __speed) 0.0)
    ((:force __force) 0.0)
    )
   (send-super :init)
   (setq _position (float __position))
   (setq _speed (float __speed))
   (setq _force (float __force))
   self)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:force
   (&optional __force)
   (if __force (setq _force __force)) _force)
  (:serialization-length
   ()
   (+
    ;; float32 _position
    4
    ;; float32 _speed
    4
    ;; float32 _force
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _position
       (sys::poke _position (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _force
       (sys::poke _force (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _position
     (setq _position (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _force
     (setq _force (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robotiq_gripper_msgs::GripperCommand :md5sum-) "847b784004fe459ff81cbcf64803d116")
(setf (get robotiq_gripper_msgs::GripperCommand :datatype-) "robotiq_gripper_msgs/GripperCommand")
(setf (get robotiq_gripper_msgs::GripperCommand :definition-)
      "float32 position
float32 speed
float32 force
")



(provide :robotiq_gripper_msgs/GripperCommand "847b784004fe459ff81cbcf64803d116")


