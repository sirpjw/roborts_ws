; Auto-generated. Do not edit!


(cl:in-package roborts_msgs-msg)


;//! \htmlinclude ArmorMsgs.msg.html

(cl:defclass <ArmorMsgs> (roslisp-msg-protocol:ros-message)
  ((detected
    :reader detected
    :initarg :detected
    :type cl:boolean
    :initform cl:nil)
   (detected_info
    :reader detected_info
    :initarg :detected_info
    :type (cl:vector roborts_msgs-msg:ArmorMsg)
   :initform (cl:make-array 0 :element-type 'roborts_msgs-msg:ArmorMsg :initial-element (cl:make-instance 'roborts_msgs-msg:ArmorMsg))))
)

(cl:defclass ArmorMsgs (<ArmorMsgs>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArmorMsgs>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArmorMsgs)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roborts_msgs-msg:<ArmorMsgs> is deprecated: use roborts_msgs-msg:ArmorMsgs instead.")))

(cl:ensure-generic-function 'detected-val :lambda-list '(m))
(cl:defmethod detected-val ((m <ArmorMsgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborts_msgs-msg:detected-val is deprecated.  Use roborts_msgs-msg:detected instead.")
  (detected m))

(cl:ensure-generic-function 'detected_info-val :lambda-list '(m))
(cl:defmethod detected_info-val ((m <ArmorMsgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborts_msgs-msg:detected_info-val is deprecated.  Use roborts_msgs-msg:detected_info instead.")
  (detected_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArmorMsgs>) ostream)
  "Serializes a message object of type '<ArmorMsgs>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'detected) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'detected_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'detected_info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArmorMsgs>) istream)
  "Deserializes a message object of type '<ArmorMsgs>"
    (cl:setf (cl:slot-value msg 'detected) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'detected_info) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'detected_info)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'roborts_msgs-msg:ArmorMsg))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArmorMsgs>)))
  "Returns string type for a message object of type '<ArmorMsgs>"
  "roborts_msgs/ArmorMsgs")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArmorMsgs)))
  "Returns string type for a message object of type 'ArmorMsgs"
  "roborts_msgs/ArmorMsgs")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArmorMsgs>)))
  "Returns md5sum for a message object of type '<ArmorMsgs>"
  "7abd3895cfb29c9d0395c412cceb145f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArmorMsgs)))
  "Returns md5sum for a message object of type 'ArmorMsgs"
  "7abd3895cfb29c9d0395c412cceb145f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArmorMsgs>)))
  "Returns full string definition for message of type '<ArmorMsgs>"
  (cl:format cl:nil "bool detected~%ArmorMsg[] detected_info~%================================================================================~%MSG: roborts_msgs/ArmorMsg~%bool robot_detected~%bool armor_detected~%int8 robot_pose~%int8 color # 0 RED 1 BLUE~%int8 id # 1 2~%int32 area # area of the armor~%geometry_msgs/Point pose~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArmorMsgs)))
  "Returns full string definition for message of type 'ArmorMsgs"
  (cl:format cl:nil "bool detected~%ArmorMsg[] detected_info~%================================================================================~%MSG: roborts_msgs/ArmorMsg~%bool robot_detected~%bool armor_detected~%int8 robot_pose~%int8 color # 0 RED 1 BLUE~%int8 id # 1 2~%int32 area # area of the armor~%geometry_msgs/Point pose~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArmorMsgs>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'detected_info) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArmorMsgs>))
  "Converts a ROS message object to a list"
  (cl:list 'ArmorMsgs
    (cl:cons ':detected (detected msg))
    (cl:cons ':detected_info (detected_info msg))
))
