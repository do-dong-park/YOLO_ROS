; Auto-generated. Do not edit!


(cl:in-package robotiq_gripper_msgs-msg)


;//! \htmlinclude GripperStatus.msg.html

(cl:defclass <GripperStatus> (roslisp-msg-protocol:ros-message)
  ((g_act
    :reader g_act
    :initarg :g_act
    :type cl:fixnum
    :initform 0)
   (g_gto
    :reader g_gto
    :initarg :g_gto
    :type cl:fixnum
    :initform 0)
   (g_sta
    :reader g_sta
    :initarg :g_sta
    :type cl:fixnum
    :initform 0)
   (g_obj
    :reader g_obj
    :initarg :g_obj
    :type cl:fixnum
    :initform 0)
   (g_flt
    :reader g_flt
    :initarg :g_flt
    :type cl:fixnum
    :initform 0)
   (g_pr
    :reader g_pr
    :initarg :g_pr
    :type cl:fixnum
    :initform 0)
   (g_po
    :reader g_po
    :initarg :g_po
    :type cl:fixnum
    :initform 0)
   (g_cu
    :reader g_cu
    :initarg :g_cu
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GripperStatus (<GripperStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GripperStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GripperStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotiq_gripper_msgs-msg:<GripperStatus> is deprecated: use robotiq_gripper_msgs-msg:GripperStatus instead.")))

(cl:ensure-generic-function 'g_act-val :lambda-list '(m))
(cl:defmethod g_act-val ((m <GripperStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotiq_gripper_msgs-msg:g_act-val is deprecated.  Use robotiq_gripper_msgs-msg:g_act instead.")
  (g_act m))

(cl:ensure-generic-function 'g_gto-val :lambda-list '(m))
(cl:defmethod g_gto-val ((m <GripperStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotiq_gripper_msgs-msg:g_gto-val is deprecated.  Use robotiq_gripper_msgs-msg:g_gto instead.")
  (g_gto m))

(cl:ensure-generic-function 'g_sta-val :lambda-list '(m))
(cl:defmethod g_sta-val ((m <GripperStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotiq_gripper_msgs-msg:g_sta-val is deprecated.  Use robotiq_gripper_msgs-msg:g_sta instead.")
  (g_sta m))

(cl:ensure-generic-function 'g_obj-val :lambda-list '(m))
(cl:defmethod g_obj-val ((m <GripperStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotiq_gripper_msgs-msg:g_obj-val is deprecated.  Use robotiq_gripper_msgs-msg:g_obj instead.")
  (g_obj m))

(cl:ensure-generic-function 'g_flt-val :lambda-list '(m))
(cl:defmethod g_flt-val ((m <GripperStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotiq_gripper_msgs-msg:g_flt-val is deprecated.  Use robotiq_gripper_msgs-msg:g_flt instead.")
  (g_flt m))

(cl:ensure-generic-function 'g_pr-val :lambda-list '(m))
(cl:defmethod g_pr-val ((m <GripperStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotiq_gripper_msgs-msg:g_pr-val is deprecated.  Use robotiq_gripper_msgs-msg:g_pr instead.")
  (g_pr m))

(cl:ensure-generic-function 'g_po-val :lambda-list '(m))
(cl:defmethod g_po-val ((m <GripperStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotiq_gripper_msgs-msg:g_po-val is deprecated.  Use robotiq_gripper_msgs-msg:g_po instead.")
  (g_po m))

(cl:ensure-generic-function 'g_cu-val :lambda-list '(m))
(cl:defmethod g_cu-val ((m <GripperStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotiq_gripper_msgs-msg:g_cu-val is deprecated.  Use robotiq_gripper_msgs-msg:g_cu instead.")
  (g_cu m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GripperStatus>) ostream)
  "Serializes a message object of type '<GripperStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'g_act)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'g_gto)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'g_sta)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'g_obj)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'g_flt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'g_pr)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'g_po)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'g_cu)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GripperStatus>) istream)
  "Deserializes a message object of type '<GripperStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'g_act)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'g_gto)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'g_sta)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'g_obj)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'g_flt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'g_pr)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'g_po)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'g_cu)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GripperStatus>)))
  "Returns string type for a message object of type '<GripperStatus>"
  "robotiq_gripper_msgs/GripperStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GripperStatus)))
  "Returns string type for a message object of type 'GripperStatus"
  "robotiq_gripper_msgs/GripperStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GripperStatus>)))
  "Returns md5sum for a message object of type '<GripperStatus>"
  "ae882ea5fd2ea006815a4db0a359f9f4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GripperStatus)))
  "Returns md5sum for a message object of type 'GripperStatus"
  "ae882ea5fd2ea006815a4db0a359f9f4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GripperStatus>)))
  "Returns full string definition for message of type '<GripperStatus>"
  (cl:format cl:nil "uint8 g_act~%uint8 g_gto~%uint8 g_sta~%uint8 g_obj~%uint8 g_flt~%uint8 g_pr~%uint8 g_po~%uint8 g_cu~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GripperStatus)))
  "Returns full string definition for message of type 'GripperStatus"
  (cl:format cl:nil "uint8 g_act~%uint8 g_gto~%uint8 g_sta~%uint8 g_obj~%uint8 g_flt~%uint8 g_pr~%uint8 g_po~%uint8 g_cu~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GripperStatus>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GripperStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'GripperStatus
    (cl:cons ':g_act (g_act msg))
    (cl:cons ':g_gto (g_gto msg))
    (cl:cons ':g_sta (g_sta msg))
    (cl:cons ':g_obj (g_obj msg))
    (cl:cons ':g_flt (g_flt msg))
    (cl:cons ':g_pr (g_pr msg))
    (cl:cons ':g_po (g_po msg))
    (cl:cons ':g_cu (g_cu msg))
))
