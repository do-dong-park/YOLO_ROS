; Auto-generated. Do not edit!


(cl:in-package robotiq_gripper_msgs-msg)


;//! \htmlinclude GripperCommand.msg.html

(cl:defclass <GripperCommand> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type cl:float
    :initform 0.0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (force
    :reader force
    :initarg :force
    :type cl:float
    :initform 0.0))
)

(cl:defclass GripperCommand (<GripperCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GripperCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GripperCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotiq_gripper_msgs-msg:<GripperCommand> is deprecated: use robotiq_gripper_msgs-msg:GripperCommand instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <GripperCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotiq_gripper_msgs-msg:position-val is deprecated.  Use robotiq_gripper_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <GripperCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotiq_gripper_msgs-msg:speed-val is deprecated.  Use robotiq_gripper_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'force-val :lambda-list '(m))
(cl:defmethod force-val ((m <GripperCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotiq_gripper_msgs-msg:force-val is deprecated.  Use robotiq_gripper_msgs-msg:force instead.")
  (force m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GripperCommand>) ostream)
  "Serializes a message object of type '<GripperCommand>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'force))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GripperCommand>) istream)
  "Deserializes a message object of type '<GripperCommand>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'force) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GripperCommand>)))
  "Returns string type for a message object of type '<GripperCommand>"
  "robotiq_gripper_msgs/GripperCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GripperCommand)))
  "Returns string type for a message object of type 'GripperCommand"
  "robotiq_gripper_msgs/GripperCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GripperCommand>)))
  "Returns md5sum for a message object of type '<GripperCommand>"
  "847b784004fe459ff81cbcf64803d116")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GripperCommand)))
  "Returns md5sum for a message object of type 'GripperCommand"
  "847b784004fe459ff81cbcf64803d116")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GripperCommand>)))
  "Returns full string definition for message of type '<GripperCommand>"
  (cl:format cl:nil "float32 position~%float32 speed~%float32 force~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GripperCommand)))
  "Returns full string definition for message of type 'GripperCommand"
  (cl:format cl:nil "float32 position~%float32 speed~%float32 force~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GripperCommand>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GripperCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'GripperCommand
    (cl:cons ':position (position msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':force (force msg))
))
