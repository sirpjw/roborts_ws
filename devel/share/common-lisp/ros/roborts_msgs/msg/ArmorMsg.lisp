; Auto-generated. Do not edit!


(cl:in-package roborts_msgs-msg)


;//! \htmlinclude ArmorMsg.msg.html

(cl:defclass <ArmorMsg> (roslisp-msg-protocol:ros-message)
  ((robot_detected
    :reader robot_detected
    :initarg :robot_detected
    :type cl:boolean
    :initform cl:nil)
   (armor_detected
    :reader armor_detected
    :initarg :armor_detected
    :type cl:boolean
    :initform cl:nil)
   (robot_pose
    :reader robot_pose
    :initarg :robot_pose
    :type cl:fixnum
    :initform 0)
   (color
    :reader color
    :initarg :color
    :type cl:fixnum
    :initform 0)
   (id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (area
    :reader area
    :initarg :area
    :type cl:integer
    :initform 0)
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass ArmorMsg (<ArmorMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArmorMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArmorMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roborts_msgs-msg:<ArmorMsg> is deprecated: use roborts_msgs-msg:ArmorMsg instead.")))

(cl:ensure-generic-function 'robot_detected-val :lambda-list '(m))
(cl:defmethod robot_detected-val ((m <ArmorMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborts_msgs-msg:robot_detected-val is deprecated.  Use roborts_msgs-msg:robot_detected instead.")
  (robot_detected m))

(cl:ensure-generic-function 'armor_detected-val :lambda-list '(m))
(cl:defmethod armor_detected-val ((m <ArmorMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborts_msgs-msg:armor_detected-val is deprecated.  Use roborts_msgs-msg:armor_detected instead.")
  (armor_detected m))

(cl:ensure-generic-function 'robot_pose-val :lambda-list '(m))
(cl:defmethod robot_pose-val ((m <ArmorMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborts_msgs-msg:robot_pose-val is deprecated.  Use roborts_msgs-msg:robot_pose instead.")
  (robot_pose m))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <ArmorMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborts_msgs-msg:color-val is deprecated.  Use roborts_msgs-msg:color instead.")
  (color m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <ArmorMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborts_msgs-msg:id-val is deprecated.  Use roborts_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'area-val :lambda-list '(m))
(cl:defmethod area-val ((m <ArmorMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborts_msgs-msg:area-val is deprecated.  Use roborts_msgs-msg:area instead.")
  (area m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <ArmorMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborts_msgs-msg:pose-val is deprecated.  Use roborts_msgs-msg:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArmorMsg>) ostream)
  "Serializes a message object of type '<ArmorMsg>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'robot_detected) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'armor_detected) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'robot_pose)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'color)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'area)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArmorMsg>) istream)
  "Deserializes a message object of type '<ArmorMsg>"
    (cl:setf (cl:slot-value msg 'robot_detected) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'armor_detected) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_pose) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'color) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'area) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArmorMsg>)))
  "Returns string type for a message object of type '<ArmorMsg>"
  "roborts_msgs/ArmorMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArmorMsg)))
  "Returns string type for a message object of type 'ArmorMsg"
  "roborts_msgs/ArmorMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArmorMsg>)))
  "Returns md5sum for a message object of type '<ArmorMsg>"
  "0168548d106cea9b6c2d1718be86c76f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArmorMsg)))
  "Returns md5sum for a message object of type 'ArmorMsg"
  "0168548d106cea9b6c2d1718be86c76f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArmorMsg>)))
  "Returns full string definition for message of type '<ArmorMsg>"
  (cl:format cl:nil "bool robot_detected~%bool armor_detected~%int8 robot_pose~%int8 color # 0 RED 1 BLUE~%int8 id # 1 2~%int32 area # area of the armor~%geometry_msgs/Point pose~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArmorMsg)))
  "Returns full string definition for message of type 'ArmorMsg"
  (cl:format cl:nil "bool robot_detected~%bool armor_detected~%int8 robot_pose~%int8 color # 0 RED 1 BLUE~%int8 id # 1 2~%int32 area # area of the armor~%geometry_msgs/Point pose~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArmorMsg>))
  (cl:+ 0
     1
     1
     1
     1
     1
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArmorMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'ArmorMsg
    (cl:cons ':robot_detected (robot_detected msg))
    (cl:cons ':armor_detected (armor_detected msg))
    (cl:cons ':robot_pose (robot_pose msg))
    (cl:cons ':color (color msg))
    (cl:cons ':id (id msg))
    (cl:cons ':area (area msg))
    (cl:cons ':pose (pose msg))
))
