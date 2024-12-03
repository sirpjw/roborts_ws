;; Auto-generated. Do not edit!


(when (boundp 'roborts_msgs::CarMsgs)
  (if (not (find-package "ROBORTS_MSGS"))
    (make-package "ROBORTS_MSGS"))
  (shadow 'CarMsgs (find-package "ROBORTS_MSGS")))
(unless (find-package "ROBORTS_MSGS::CARMSGS")
  (make-package "ROBORTS_MSGS::CARMSGS"))

(in-package "ROS")
;;//! \htmlinclude CarMsgs.msg.html


(defclass roborts_msgs::CarMsgs
  :super ros::object
  :slots (_stamp_guard _car_msgs ))

(defmethod roborts_msgs::CarMsgs
  (:init
   (&key
    ((:stamp_guard __stamp_guard) (instance ros::time :init))
    ((:car_msgs __car_msgs) ())
    )
   (send-super :init)
   (setq _stamp_guard __stamp_guard)
   (setq _car_msgs __car_msgs)
   self)
  (:stamp_guard
   (&optional __stamp_guard)
   (if __stamp_guard (setq _stamp_guard __stamp_guard)) _stamp_guard)
  (:car_msgs
   (&rest __car_msgs)
   (if (keywordp (car __car_msgs))
       (send* _car_msgs __car_msgs)
     (progn
       (if __car_msgs (setq _car_msgs (car __car_msgs)))
       _car_msgs)))
  (:serialization-length
   ()
   (+
    ;; time _stamp_guard
    8
    ;; roborts_msgs/CarMsg[] _car_msgs
    (apply #'+ (send-all _car_msgs :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp_guard
       (write-long (send _stamp_guard :sec) s) (write-long (send _stamp_guard :nsec) s)
     ;; roborts_msgs/CarMsg[] _car_msgs
     (write-long (length _car_msgs) s)
     (dolist (elem _car_msgs)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp_guard
     (send _stamp_guard :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp_guard :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; roborts_msgs/CarMsg[] _car_msgs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _car_msgs (let (r) (dotimes (i n) (push (instance roborts_msgs::CarMsg :init) r)) r))
     (dolist (elem- _car_msgs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get roborts_msgs::CarMsgs :md5sum-) "4c4dd9fe02c25c3ec9d783997231c682")
(setf (get roborts_msgs::CarMsgs :datatype-) "roborts_msgs/CarMsgs")
(setf (get roborts_msgs::CarMsgs :definition-)
      "time stamp_guard
CarMsg[]  car_msgs

================================================================================
MSG: roborts_msgs/CarMsg
uint8 id
char color
float64 x
float64 y

")



(provide :roborts_msgs/CarMsgs "4c4dd9fe02c25c3ec9d783997231c682")


