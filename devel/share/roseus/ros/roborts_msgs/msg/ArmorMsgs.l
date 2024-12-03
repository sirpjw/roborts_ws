;; Auto-generated. Do not edit!


(when (boundp 'roborts_msgs::ArmorMsgs)
  (if (not (find-package "ROBORTS_MSGS"))
    (make-package "ROBORTS_MSGS"))
  (shadow 'ArmorMsgs (find-package "ROBORTS_MSGS")))
(unless (find-package "ROBORTS_MSGS::ARMORMSGS")
  (make-package "ROBORTS_MSGS::ARMORMSGS"))

(in-package "ROS")
;;//! \htmlinclude ArmorMsgs.msg.html


(defclass roborts_msgs::ArmorMsgs
  :super ros::object
  :slots (_detected _detected_info ))

(defmethod roborts_msgs::ArmorMsgs
  (:init
   (&key
    ((:detected __detected) nil)
    ((:detected_info __detected_info) ())
    )
   (send-super :init)
   (setq _detected __detected)
   (setq _detected_info __detected_info)
   self)
  (:detected
   (&optional (__detected :null))
   (if (not (eq __detected :null)) (setq _detected __detected)) _detected)
  (:detected_info
   (&rest __detected_info)
   (if (keywordp (car __detected_info))
       (send* _detected_info __detected_info)
     (progn
       (if __detected_info (setq _detected_info (car __detected_info)))
       _detected_info)))
  (:serialization-length
   ()
   (+
    ;; bool _detected
    1
    ;; roborts_msgs/ArmorMsg[] _detected_info
    (apply #'+ (send-all _detected_info :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _detected
       (if _detected (write-byte -1 s) (write-byte 0 s))
     ;; roborts_msgs/ArmorMsg[] _detected_info
     (write-long (length _detected_info) s)
     (dolist (elem _detected_info)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _detected
     (setq _detected (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; roborts_msgs/ArmorMsg[] _detected_info
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _detected_info (let (r) (dotimes (i n) (push (instance roborts_msgs::ArmorMsg :init) r)) r))
     (dolist (elem- _detected_info)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get roborts_msgs::ArmorMsgs :md5sum-) "7abd3895cfb29c9d0395c412cceb145f")
(setf (get roborts_msgs::ArmorMsgs :datatype-) "roborts_msgs/ArmorMsgs")
(setf (get roborts_msgs::ArmorMsgs :definition-)
      "bool detected
ArmorMsg[] detected_info
================================================================================
MSG: roborts_msgs/ArmorMsg
bool robot_detected
bool armor_detected
int8 robot_pose
int8 color # 0 RED 1 BLUE
int8 id # 1 2
int32 area # area of the armor
geometry_msgs/Point pose
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :roborts_msgs/ArmorMsgs "7abd3895cfb29c9d0395c412cceb145f")


