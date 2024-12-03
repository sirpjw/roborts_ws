; Auto-generated. Do not edit!


(cl:in-package roborts_msgs-msg)


;//! \htmlinclude CarMsgs.msg.html

(cl:defclass <CarMsgs> (roslisp-msg-protocol:ros-message)
  ((stamp_guard
    :reader stamp_guard
    :initarg :stamp_guard
    :type cl:real
    :initform 0)
   (car_msgs
    :reader car_msgs
    :initarg :car_msgs
    :type (cl:vector roborts_msgs-msg:CarMsg)
   :initform (cl:make-array 0 :element-type 'roborts_msgs-msg:CarMsg :initial-element (cl:make-instance 'roborts_msgs-msg:CarMsg))))
)

(cl:defclass CarMsgs (<CarMsgs>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CarMsgs>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CarMsgs)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roborts_msgs-msg:<CarMsgs> is deprecated: use roborts_msgs-msg:CarMsgs instead.")))

(cl:ensure-generic-function 'stamp_guard-val :lambda-list '(m))
(cl:defmethod stamp_guard-val ((m <CarMsgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborts_msgs-msg:stamp_guard-val is deprecated.  Use roborts_msgs-msg:stamp_guard instead.")
  (stamp_guard m))

(cl:ensure-generic-function 'car_msgs-val :lambda-list '(m))
(cl:defmethod car_msgs-val ((m <CarMsgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborts_msgs-msg:car_msgs-val is deprecated.  Use roborts_msgs-msg:car_msgs instead.")
  (car_msgs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CarMsgs>) ostream)
  "Serializes a message object of type '<CarMsgs>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp_guard)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp_guard) (cl:floor (cl:slot-value msg 'stamp_guard)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'car_msgs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'car_msgs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CarMsgs>) istream)
  "Deserializes a message object of type '<CarMsgs>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp_guard) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'car_msgs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'car_msgs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'roborts_msgs-msg:CarMsg))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CarMsgs>)))
  "Returns string type for a message object of type '<CarMsgs>"
  "roborts_msgs/CarMsgs")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CarMsgs)))
  "Returns string type for a message object of type 'CarMsgs"
  "roborts_msgs/CarMsgs")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CarMsgs>)))
  "Returns md5sum for a message object of type '<CarMsgs>"
  "4c4dd9fe02c25c3ec9d783997231c682")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CarMsgs)))
  "Returns md5sum for a message object of type 'CarMsgs"
  "4c4dd9fe02c25c3ec9d783997231c682")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CarMsgs>)))
  "Returns full string definition for message of type '<CarMsgs>"
  (cl:format cl:nil "time stamp_guard~%CarMsg[]  car_msgs~%~%================================================================================~%MSG: roborts_msgs/CarMsg~%uint8 id~%char color~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CarMsgs)))
  "Returns full string definition for message of type 'CarMsgs"
  (cl:format cl:nil "time stamp_guard~%CarMsg[]  car_msgs~%~%================================================================================~%MSG: roborts_msgs/CarMsg~%uint8 id~%char color~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CarMsgs>))
  (cl:+ 0
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'car_msgs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CarMsgs>))
  "Converts a ROS message object to a list"
  (cl:list 'CarMsgs
    (cl:cons ':stamp_guard (stamp_guard msg))
    (cl:cons ':car_msgs (car_msgs msg))
))
