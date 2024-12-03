;; Auto-generated. Do not edit!


(when (boundp 'roborts_msgs::ShootControl)
  (if (not (find-package "ROBORTS_MSGS"))
    (make-package "ROBORTS_MSGS"))
  (shadow 'ShootControl (find-package "ROBORTS_MSGS")))
(unless (find-package "ROBORTS_MSGS::SHOOTCONTROL")
  (make-package "ROBORTS_MSGS::SHOOTCONTROL"))

(in-package "ROS")
;;//! \htmlinclude ShootControl.msg.html


(defclass roborts_msgs::ShootControl
  :super ros::object
  :slots (_yaw_angle _pitch_angle ))

(defmethod roborts_msgs::ShootControl
  (:init
   (&key
    ((:yaw_angle __yaw_angle) 0.0)
    ((:pitch_angle __pitch_angle) 0.0)
    )
   (send-super :init)
   (setq _yaw_angle (float __yaw_angle))
   (setq _pitch_angle (float __pitch_angle))
   self)
  (:yaw_angle
   (&optional __yaw_angle)
   (if __yaw_angle (setq _yaw_angle __yaw_angle)) _yaw_angle)
  (:pitch_angle
   (&optional __pitch_angle)
   (if __pitch_angle (setq _pitch_angle __pitch_angle)) _pitch_angle)
  (:serialization-length
   ()
   (+
    ;; float64 _yaw_angle
    8
    ;; float64 _pitch_angle
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _yaw_angle
       (sys::poke _yaw_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch_angle
       (sys::poke _pitch_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _yaw_angle
     (setq _yaw_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch_angle
     (setq _pitch_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get roborts_msgs::ShootControl :md5sum-) "d142b662823bdbaf886a74b018aab3bd")
(setf (get roborts_msgs::ShootControl :datatype-) "roborts_msgs/ShootControl")
(setf (get roborts_msgs::ShootControl :definition-)
      "# 调试
float64 yaw_angle
float64 pitch_angle
")



(provide :roborts_msgs/ShootControl "d142b662823bdbaf886a74b018aab3bd")


