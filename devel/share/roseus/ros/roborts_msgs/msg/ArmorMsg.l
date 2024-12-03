;; Auto-generated. Do not edit!


(when (boundp 'roborts_msgs::ArmorMsg)
  (if (not (find-package "ROBORTS_MSGS"))
    (make-package "ROBORTS_MSGS"))
  (shadow 'ArmorMsg (find-package "ROBORTS_MSGS")))
(unless (find-package "ROBORTS_MSGS::ARMORMSG")
  (make-package "ROBORTS_MSGS::ARMORMSG"))

(in-package "ROS")
;;//! \htmlinclude ArmorMsg.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass roborts_msgs::ArmorMsg
  :super ros::object
  :slots (_robot_detected _armor_detected _robot_pose _color _id _area _pose ))

(defmethod roborts_msgs::ArmorMsg
  (:init
   (&key
    ((:robot_detected __robot_detected) nil)
    ((:armor_detected __armor_detected) nil)
    ((:robot_pose __robot_pose) 0)
    ((:color __color) 0)
    ((:id __id) 0)
    ((:area __area) 0)
    ((:pose __pose) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _robot_detected __robot_detected)
   (setq _armor_detected __armor_detected)
   (setq _robot_pose (round __robot_pose))
   (setq _color (round __color))
   (setq _id (round __id))
   (setq _area (round __area))
   (setq _pose __pose)
   self)
  (:robot_detected
   (&optional (__robot_detected :null))
   (if (not (eq __robot_detected :null)) (setq _robot_detected __robot_detected)) _robot_detected)
  (:armor_detected
   (&optional (__armor_detected :null))
   (if (not (eq __armor_detected :null)) (setq _armor_detected __armor_detected)) _armor_detected)
  (:robot_pose
   (&optional __robot_pose)
   (if __robot_pose (setq _robot_pose __robot_pose)) _robot_pose)
  (:color
   (&optional __color)
   (if __color (setq _color __color)) _color)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:area
   (&optional __area)
   (if __area (setq _area __area)) _area)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; bool _robot_detected
    1
    ;; bool _armor_detected
    1
    ;; int8 _robot_pose
    1
    ;; int8 _color
    1
    ;; int8 _id
    1
    ;; int32 _area
    4
    ;; geometry_msgs/Point _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _robot_detected
       (if _robot_detected (write-byte -1 s) (write-byte 0 s))
     ;; bool _armor_detected
       (if _armor_detected (write-byte -1 s) (write-byte 0 s))
     ;; int8 _robot_pose
       (write-byte _robot_pose s)
     ;; int8 _color
       (write-byte _color s)
     ;; int8 _id
       (write-byte _id s)
     ;; int32 _area
       (write-long _area s)
     ;; geometry_msgs/Point _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _robot_detected
     (setq _robot_detected (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _armor_detected
     (setq _armor_detected (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int8 _robot_pose
     (setq _robot_pose (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _robot_pose 127) (setq _robot_pose (- _robot_pose 256)))
   ;; int8 _color
     (setq _color (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _color 127) (setq _color (- _color 256)))
   ;; int8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _id 127) (setq _id (- _id 256)))
   ;; int32 _area
     (setq _area (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Point _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get roborts_msgs::ArmorMsg :md5sum-) "0168548d106cea9b6c2d1718be86c76f")
(setf (get roborts_msgs::ArmorMsg :datatype-) "roborts_msgs/ArmorMsg")
(setf (get roborts_msgs::ArmorMsg :definition-)
      "bool robot_detected
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



(provide :roborts_msgs/ArmorMsg "0168548d106cea9b6c2d1718be86c76f")


