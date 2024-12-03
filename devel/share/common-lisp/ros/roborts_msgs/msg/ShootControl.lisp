; Auto-generated. Do not edit!


(cl:in-package roborts_msgs-msg)


;//! \htmlinclude ShootControl.msg.html

(cl:defclass <ShootControl> (roslisp-msg-protocol:ros-message)
  ((yaw_angle
    :reader yaw_angle
    :initarg :yaw_angle
    :type cl:float
    :initform 0.0)
   (pitch_angle
    :reader pitch_angle
    :initarg :pitch_angle
    :type cl:float
    :initform 0.0))
)

(cl:defclass ShootControl (<ShootControl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ShootControl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ShootControl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roborts_msgs-msg:<ShootControl> is deprecated: use roborts_msgs-msg:ShootControl instead.")))

(cl:ensure-generic-function 'yaw_angle-val :lambda-list '(m))
(cl:defmethod yaw_angle-val ((m <ShootControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborts_msgs-msg:yaw_angle-val is deprecated.  Use roborts_msgs-msg:yaw_angle instead.")
  (yaw_angle m))

(cl:ensure-generic-function 'pitch_angle-val :lambda-list '(m))
(cl:defmethod pitch_angle-val ((m <ShootControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborts_msgs-msg:pitch_angle-val is deprecated.  Use roborts_msgs-msg:pitch_angle instead.")
  (pitch_angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ShootControl>) ostream)
  "Serializes a message object of type '<ShootControl>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'yaw_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'pitch_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ShootControl>) istream)
  "Deserializes a message object of type '<ShootControl>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw_angle) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pitch_angle) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ShootControl>)))
  "Returns string type for a message object of type '<ShootControl>"
  "roborts_msgs/ShootControl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ShootControl)))
  "Returns string type for a message object of type 'ShootControl"
  "roborts_msgs/ShootControl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ShootControl>)))
  "Returns md5sum for a message object of type '<ShootControl>"
  "d142b662823bdbaf886a74b018aab3bd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ShootControl)))
  "Returns md5sum for a message object of type 'ShootControl"
  "d142b662823bdbaf886a74b018aab3bd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ShootControl>)))
  "Returns full string definition for message of type '<ShootControl>"
  (cl:format cl:nil "# 调试~%float64 yaw_angle~%float64 pitch_angle~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ShootControl)))
  "Returns full string definition for message of type 'ShootControl"
  (cl:format cl:nil "# 调试~%float64 yaw_angle~%float64 pitch_angle~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ShootControl>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ShootControl>))
  "Converts a ROS message object to a list"
  (cl:list 'ShootControl
    (cl:cons ':yaw_angle (yaw_angle msg))
    (cl:cons ':pitch_angle (pitch_angle msg))
))
