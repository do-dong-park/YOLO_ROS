;; Auto-generated. Do not edit!


(when (boundp 'robotiq_gripper_msgs::GripperStatus)
  (if (not (find-package "ROBOTIQ_GRIPPER_MSGS"))
    (make-package "ROBOTIQ_GRIPPER_MSGS"))
  (shadow 'GripperStatus (find-package "ROBOTIQ_GRIPPER_MSGS")))
(unless (find-package "ROBOTIQ_GRIPPER_MSGS::GRIPPERSTATUS")
  (make-package "ROBOTIQ_GRIPPER_MSGS::GRIPPERSTATUS"))

(in-package "ROS")
;;//! \htmlinclude GripperStatus.msg.html


(defclass robotiq_gripper_msgs::GripperStatus
  :super ros::object
  :slots (_g_act _g_gto _g_sta _g_obj _g_flt _g_pr _g_po _g_cu ))

(defmethod robotiq_gripper_msgs::GripperStatus
  (:init
   (&key
    ((:g_act __g_act) 0)
    ((:g_gto __g_gto) 0)
    ((:g_sta __g_sta) 0)
    ((:g_obj __g_obj) 0)
    ((:g_flt __g_flt) 0)
    ((:g_pr __g_pr) 0)
    ((:g_po __g_po) 0)
    ((:g_cu __g_cu) 0)
    )
   (send-super :init)
   (setq _g_act (round __g_act))
   (setq _g_gto (round __g_gto))
   (setq _g_sta (round __g_sta))
   (setq _g_obj (round __g_obj))
   (setq _g_flt (round __g_flt))
   (setq _g_pr (round __g_pr))
   (setq _g_po (round __g_po))
   (setq _g_cu (round __g_cu))
   self)
  (:g_act
   (&optional __g_act)
   (if __g_act (setq _g_act __g_act)) _g_act)
  (:g_gto
   (&optional __g_gto)
   (if __g_gto (setq _g_gto __g_gto)) _g_gto)
  (:g_sta
   (&optional __g_sta)
   (if __g_sta (setq _g_sta __g_sta)) _g_sta)
  (:g_obj
   (&optional __g_obj)
   (if __g_obj (setq _g_obj __g_obj)) _g_obj)
  (:g_flt
   (&optional __g_flt)
   (if __g_flt (setq _g_flt __g_flt)) _g_flt)
  (:g_pr
   (&optional __g_pr)
   (if __g_pr (setq _g_pr __g_pr)) _g_pr)
  (:g_po
   (&optional __g_po)
   (if __g_po (setq _g_po __g_po)) _g_po)
  (:g_cu
   (&optional __g_cu)
   (if __g_cu (setq _g_cu __g_cu)) _g_cu)
  (:serialization-length
   ()
   (+
    ;; uint8 _g_act
    1
    ;; uint8 _g_gto
    1
    ;; uint8 _g_sta
    1
    ;; uint8 _g_obj
    1
    ;; uint8 _g_flt
    1
    ;; uint8 _g_pr
    1
    ;; uint8 _g_po
    1
    ;; uint8 _g_cu
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _g_act
       (write-byte _g_act s)
     ;; uint8 _g_gto
       (write-byte _g_gto s)
     ;; uint8 _g_sta
       (write-byte _g_sta s)
     ;; uint8 _g_obj
       (write-byte _g_obj s)
     ;; uint8 _g_flt
       (write-byte _g_flt s)
     ;; uint8 _g_pr
       (write-byte _g_pr s)
     ;; uint8 _g_po
       (write-byte _g_po s)
     ;; uint8 _g_cu
       (write-byte _g_cu s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _g_act
     (setq _g_act (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _g_gto
     (setq _g_gto (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _g_sta
     (setq _g_sta (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _g_obj
     (setq _g_obj (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _g_flt
     (setq _g_flt (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _g_pr
     (setq _g_pr (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _g_po
     (setq _g_po (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _g_cu
     (setq _g_cu (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get robotiq_gripper_msgs::GripperStatus :md5sum-) "ae882ea5fd2ea006815a4db0a359f9f4")
(setf (get robotiq_gripper_msgs::GripperStatus :datatype-) "robotiq_gripper_msgs/GripperStatus")
(setf (get robotiq_gripper_msgs::GripperStatus :definition-)
      "uint8 g_act
uint8 g_gto
uint8 g_sta
uint8 g_obj
uint8 g_flt
uint8 g_pr
uint8 g_po
uint8 g_cu
")



(provide :robotiq_gripper_msgs/GripperStatus "ae882ea5fd2ea006815a4db0a359f9f4")


