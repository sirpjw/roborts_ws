;; Auto-generated. Do not edit!


(when (boundp 'roborts_msgs::CarMsg)
  (if (not (find-package "ROBORTS_MSGS"))
    (make-package "ROBORTS_MSGS"))
  (shadow 'CarMsg (find-package "ROBORTS_MSGS")))
(unless (find-package "ROBORTS_MSGS::CARMSG")
  (make-package "ROBORTS_MSGS::CARMSG"))

(in-package "ROS")
;;//! \htmlinclude CarMsg.msg.html


(defclass roborts_msgs::CarMsg
  :super ros::object
  :slots (_id _color _x _y ))

(defmethod roborts_msgs::CarMsg
  (:init
   (&key
    ((:id __id) 0)
    ((:color __color) 0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _color (round __color))
   (setq _x (float __x))
   (setq _y (float __y))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:color
   (&optional __color)
   (if __color (setq _color __color)) _color)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ;; char _color
    1
    ;; float64 _x
    8
    ;; float64 _y
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;; char _color
       (write-byte _color s)
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; char _color
     (setq _color (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get roborts_msgs::CarMsg :md5sum-) "0abbd31b1cbaf15ed4630edeaea991fd")
(setf (get roborts_msgs::CarMsg :datatype-) "roborts_msgs/CarMsg")
(setf (get roborts_msgs::CarMsg :definition-)
      "uint8 id
char color
float64 x
float64 y

")



(provide :roborts_msgs/CarMsg "0abbd31b1cbaf15ed4630edeaea991fd")


