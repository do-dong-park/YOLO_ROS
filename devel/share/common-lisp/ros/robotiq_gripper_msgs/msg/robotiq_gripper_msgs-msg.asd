
(cl:in-package :asdf)

(defsystem "robotiq_gripper_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GripperCommand" :depends-on ("_package_GripperCommand"))
    (:file "_package_GripperCommand" :depends-on ("_package"))
    (:file "GripperStatus" :depends-on ("_package_GripperStatus"))
    (:file "_package_GripperStatus" :depends-on ("_package"))
  ))