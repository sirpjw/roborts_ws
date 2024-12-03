;; Auto-generated. Do not edit!


(when (boundp 'roborts_msgs::ArmorDetection)
  (if (not (find-package "ROBORTS_MSGS"))
    (make-package "ROBORTS_MSGS"))
  (shadow 'ArmorDetection (find-package "ROBORTS_MSGS")))
(unless (find-package "ROBORTS_MSGS::ARMORDETECTION")
  (make-package "ROBORTS_MSGS::ARMORDETECTION"))

(in-package "ROS")
;;//! \htmlinclude ArmorDetection.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass roborts_msgs::ArmorDetection
  :super ros::object
  :slots (_header _id _detected_enemy _enemy_x _enemy_y _distance ))

(defmethod roborts_msgs::ArmorDetection
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) 0)
    ((:detected_enemy __detected_enemy) nil)
    ((:enemy_x __enemy_x) 0.0)
    ((:enemy_y __enemy_y) 0.0)
    ((:distance __distance) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (round __id))
   (setq _detected_enemy __detected_enemy)
   (setq _enemy_x (float __enemy_x))
   (setq _enemy_y (float __enemy_y))
   (setq _distance (float __distance))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:detected_enemy
   (&optional (__detected_enemy :null))
   (if (not (eq __detected_enemy :null)) (setq _detected_enemy __detected_enemy)) _detected_enemy)
  (:enemy_x
   (&optional __enemy_x)
   (if __enemy_x (setq _enemy_x __enemy_x)) _enemy_x)
  (:enemy_y
   (&optional __enemy_y)
   (if __enemy_y (setq _enemy_y __enemy_y)) _enemy_y)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _id
    1
    ;; bool _detected_enemy
    1
    ;; float64 _enemy_x
    8
    ;; float64 _enemy_y
    8
    ;; float64 _distance
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _id
       (write-byte _id s)
     ;; bool _detected_enemy
       (if _detected_enemy (write-byte -1 s) (write-byte 0 s))
     ;; float64 _enemy_x
       (sys::poke _enemy_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _enemy_y
       (sys::poke _enemy_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _detected_enemy
     (setq _detected_enemy (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _enemy_x
     (setq _enemy_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _enemy_y
     (setq _enemy_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _distance
     (setq _distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get roborts_msgs::ArmorDetection :md5sum-) "73e2d1a46dbd916f5132a3ac033ec3eb")
(setf (get roborts_msgs::ArmorDetection :datatype-) "roborts_msgs/ArmorDetection")
(setf (get roborts_msgs::ArmorDetection :definition-)
      "#armor detected msg
Header header
uint8 id
bool detected_enemy
float64 enemy_x
float64 enemy_y
float64 distance
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :roborts_msgs/ArmorDetection "73e2d1a46dbd916f5132a3ac033ec3eb")


