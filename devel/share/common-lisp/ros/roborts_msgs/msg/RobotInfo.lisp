; Auto-generated. Do not edit!


(cl:in-package roborts_msgs-msg)


;//! \htmlinclude RobotInfo.msg.html

(cl:defclass <RobotInfo> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (level
    :reader level
    :initarg :level
    :type cl:fixnum
    :initform 0)
   (remain_hp
    :reader remain_hp
    :initarg :remain_hp
    :type cl:fixnum
    :initform 0)
   (max_hp
    :reader max_hp
    :initarg :max_hp
    :type cl:fixnum
    :initform 0)
   (remain_bullets
    :reader remain_bullets
    :initarg :remain_bullets
    :type cl:fixnum
    :initform 0)
   (max_bullets
    :reader max_bullets
    :initarg :max_bullets
    :type cl:fixnum
    :initform 0)
   (robot_color
    :reader robot_color
    :initarg :robot_color
    :type cl:fixnum
    :initform 0)
   (chassis_enable
    :reader chassis_enable
    :initarg :chassis_enable
    :type cl:boolean
    :initform cl:nil)
   (shooter_enable
    :reader shooter_enable
    :initarg :shooter_enable
    :type cl:boolean
    :initform cl:nil)
   (fricwheel_enable
    :reader fricwheel_enable
    :initarg :fricwheel_enable
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RobotInfo (<RobotInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roborts_msgs-msg:<RobotInfo> is deprecated: use roborts_msgs-msg:RobotInfo instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborts_msgs-msg:id-val is deprecated.  Use roborts_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'level-val :lambda-list '(m))
(cl:defmethod level-val ((m <RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborts_msgs-msg:level-val is deprecated.  Use roborts_msgs-msg:level instead.")
  (level m))

(cl:ensure-generic-function 'remain_hp-val :lambda-list '(m))
(cl:defmethod remain_hp-val ((m <RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborts_msgs-msg:remain_hp-val is deprecated.  Use roborts_msgs-msg:remain_hp instead.")
  (remain_hp m))

(cl:ensure-generic-function 'max_hp-val :lambda-list '(m))
(cl:defmethod max_hp-val ((m <RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborts_msgs-msg:max_hp-val is deprecated.  Use roborts_msgs-msg:max_hp instead.")
  (max_hp m))

(cl:ensure-generic-function 'remain_bullets-val :lambda-list '(m))
(cl:defmethod remain_bullets-val ((m <RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborts_msgs-msg:remain_bullets-val is deprecated.  Use roborts_msgs-msg:remain_bullets instead.")
  (remain_bullets m))

(cl:ensure-generic-function 'max_bullets-val :lambda-list '(m))
(cl:defmethod max_bullets-val ((m <RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborts_msgs-msg:max_bullets-val is deprecated.  Use roborts_msgs-msg:max_bullets instead.")
  (max_bullets m))

(cl:ensure-generic-function 'robot_color-val :lambda-list '(m))
(cl:defmethod robot_color-val ((m <RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborts_msgs-msg:robot_color-val is deprecated.  Use roborts_msgs-msg:robot_color instead.")
  (robot_color m))

(cl:ensure-generic-function 'chassis_enable-val :lambda-list '(m))
(cl:defmethod chassis_enable-val ((m <RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborts_msgs-msg:chassis_enable-val is deprecated.  Use roborts_msgs-msg:chassis_enable instead.")
  (chassis_enable m))

(cl:ensure-generic-function 'shooter_enable-val :lambda-list '(m))
(cl:defmethod shooter_enable-val ((m <RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborts_msgs-msg:shooter_enable-val is deprecated.  Use roborts_msgs-msg:shooter_enable instead.")
  (shooter_enable m))

(cl:ensure-generic-function 'fricwheel_enable-val :lambda-list '(m))
(cl:defmethod fricwheel_enable-val ((m <RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborts_msgs-msg:fricwheel_enable-val is deprecated.  Use roborts_msgs-msg:fricwheel_enable instead.")
  (fricwheel_enable m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RobotInfo>)))
    "Constants for message type '<RobotInfo>"
  '((:RED . 1)
    (:BLUE . 2)
    (:UNKONWN . 0))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RobotInfo)))
    "Constants for message type 'RobotInfo"
  '((:RED . 1)
    (:BLUE . 2)
    (:UNKONWN . 0))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotInfo>) ostream)
  "Serializes a message object of type '<RobotInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'level)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'remain_hp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'remain_hp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'max_hp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'max_hp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'remain_bullets)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'remain_bullets)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'max_bullets)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'max_bullets)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'robot_color)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'chassis_enable) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'shooter_enable) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'fricwheel_enable) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotInfo>) istream)
  "Deserializes a message object of type '<RobotInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'level)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'remain_hp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'remain_hp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'max_hp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'max_hp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'remain_bullets)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'remain_bullets)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'max_bullets)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'max_bullets)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'robot_color)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'chassis_enable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'shooter_enable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'fricwheel_enable) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotInfo>)))
  "Returns string type for a message object of type '<RobotInfo>"
  "roborts_msgs/RobotInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotInfo)))
  "Returns string type for a message object of type 'RobotInfo"
  "roborts_msgs/RobotInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotInfo>)))
  "Returns md5sum for a message object of type '<RobotInfo>"
  "42151e01fd01be2567ca9939a7e62df3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotInfo)))
  "Returns md5sum for a message object of type 'RobotInfo"
  "42151e01fd01be2567ca9939a7e62df3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotInfo>)))
  "Returns full string definition for message of type '<RobotInfo>"
  (cl:format cl:nil "#robot status~%uint8 id~%uint8 level~%uint16 remain_hp~%uint16 max_hp~%~%uint16 remain_bullets~%uint16 max_bullets~%~%uint8 robot_color~%~%# devices enable~%bool chassis_enable~%bool shooter_enable~%bool fricwheel_enable~%~%# color Defined Value~%uint8 RED = 1~%uint8 BLUE = 2~%uint8 UNKONWN = 0~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotInfo)))
  "Returns full string definition for message of type 'RobotInfo"
  (cl:format cl:nil "#robot status~%uint8 id~%uint8 level~%uint16 remain_hp~%uint16 max_hp~%~%uint16 remain_bullets~%uint16 max_bullets~%~%uint8 robot_color~%~%# devices enable~%bool chassis_enable~%bool shooter_enable~%bool fricwheel_enable~%~%# color Defined Value~%uint8 RED = 1~%uint8 BLUE = 2~%uint8 UNKONWN = 0~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotInfo>))
  (cl:+ 0
     1
     1
     2
     2
     2
     2
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotInfo
    (cl:cons ':id (id msg))
    (cl:cons ':level (level msg))
    (cl:cons ':remain_hp (remain_hp msg))
    (cl:cons ':max_hp (max_hp msg))
    (cl:cons ':remain_bullets (remain_bullets msg))
    (cl:cons ':max_bullets (max_bullets msg))
    (cl:cons ':robot_color (robot_color msg))
    (cl:cons ':chassis_enable (chassis_enable msg))
    (cl:cons ':shooter_enable (shooter_enable msg))
    (cl:cons ':fricwheel_enable (fricwheel_enable msg))
))
