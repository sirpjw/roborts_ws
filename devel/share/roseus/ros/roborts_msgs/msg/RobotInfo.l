;; Auto-generated. Do not edit!


(when (boundp 'roborts_msgs::RobotInfo)
  (if (not (find-package "ROBORTS_MSGS"))
    (make-package "ROBORTS_MSGS"))
  (shadow 'RobotInfo (find-package "ROBORTS_MSGS")))
(unless (find-package "ROBORTS_MSGS::ROBOTINFO")
  (make-package "ROBORTS_MSGS::ROBOTINFO"))

(in-package "ROS")
;;//! \htmlinclude RobotInfo.msg.html


(intern "*RED*" (find-package "ROBORTS_MSGS::ROBOTINFO"))
(shadow '*RED* (find-package "ROBORTS_MSGS::ROBOTINFO"))
(defconstant roborts_msgs::RobotInfo::*RED* 1)
(intern "*BLUE*" (find-package "ROBORTS_MSGS::ROBOTINFO"))
(shadow '*BLUE* (find-package "ROBORTS_MSGS::ROBOTINFO"))
(defconstant roborts_msgs::RobotInfo::*BLUE* 2)
(intern "*UNKONWN*" (find-package "ROBORTS_MSGS::ROBOTINFO"))
(shadow '*UNKONWN* (find-package "ROBORTS_MSGS::ROBOTINFO"))
(defconstant roborts_msgs::RobotInfo::*UNKONWN* 0)

(defun roborts_msgs::RobotInfo-to-symbol (const)
  (cond
        ((= const 1) 'roborts_msgs::RobotInfo::*RED*)
        ((= const 2) 'roborts_msgs::RobotInfo::*BLUE*)
        ((= const 0) 'roborts_msgs::RobotInfo::*UNKONWN*)
        (t nil)))

(defclass roborts_msgs::RobotInfo
  :super ros::object
  :slots (_id _level _remain_hp _max_hp _remain_bullets _max_bullets _robot_color _chassis_enable _shooter_enable _fricwheel_enable ))

(defmethod roborts_msgs::RobotInfo
  (:init
   (&key
    ((:id __id) 0)
    ((:level __level) 0)
    ((:remain_hp __remain_hp) 0)
    ((:max_hp __max_hp) 0)
    ((:remain_bullets __remain_bullets) 0)
    ((:max_bullets __max_bullets) 0)
    ((:robot_color __robot_color) 0)
    ((:chassis_enable __chassis_enable) nil)
    ((:shooter_enable __shooter_enable) nil)
    ((:fricwheel_enable __fricwheel_enable) nil)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _level (round __level))
   (setq _remain_hp (round __remain_hp))
   (setq _max_hp (round __max_hp))
   (setq _remain_bullets (round __remain_bullets))
   (setq _max_bullets (round __max_bullets))
   (setq _robot_color (round __robot_color))
   (setq _chassis_enable __chassis_enable)
   (setq _shooter_enable __shooter_enable)
   (setq _fricwheel_enable __fricwheel_enable)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:level
   (&optional __level)
   (if __level (setq _level __level)) _level)
  (:remain_hp
   (&optional __remain_hp)
   (if __remain_hp (setq _remain_hp __remain_hp)) _remain_hp)
  (:max_hp
   (&optional __max_hp)
   (if __max_hp (setq _max_hp __max_hp)) _max_hp)
  (:remain_bullets
   (&optional __remain_bullets)
   (if __remain_bullets (setq _remain_bullets __remain_bullets)) _remain_bullets)
  (:max_bullets
   (&optional __max_bullets)
   (if __max_bullets (setq _max_bullets __max_bullets)) _max_bullets)
  (:robot_color
   (&optional __robot_color)
   (if __robot_color (setq _robot_color __robot_color)) _robot_color)
  (:chassis_enable
   (&optional (__chassis_enable :null))
   (if (not (eq __chassis_enable :null)) (setq _chassis_enable __chassis_enable)) _chassis_enable)
  (:shooter_enable
   (&optional (__shooter_enable :null))
   (if (not (eq __shooter_enable :null)) (setq _shooter_enable __shooter_enable)) _shooter_enable)
  (:fricwheel_enable
   (&optional (__fricwheel_enable :null))
   (if (not (eq __fricwheel_enable :null)) (setq _fricwheel_enable __fricwheel_enable)) _fricwheel_enable)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ;; uint8 _level
    1
    ;; uint16 _remain_hp
    2
    ;; uint16 _max_hp
    2
    ;; uint16 _remain_bullets
    2
    ;; uint16 _max_bullets
    2
    ;; uint8 _robot_color
    1
    ;; bool _chassis_enable
    1
    ;; bool _shooter_enable
    1
    ;; bool _fricwheel_enable
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;; uint8 _level
       (write-byte _level s)
     ;; uint16 _remain_hp
       (write-word _remain_hp s)
     ;; uint16 _max_hp
       (write-word _max_hp s)
     ;; uint16 _remain_bullets
       (write-word _remain_bullets s)
     ;; uint16 _max_bullets
       (write-word _max_bullets s)
     ;; uint8 _robot_color
       (write-byte _robot_color s)
     ;; bool _chassis_enable
       (if _chassis_enable (write-byte -1 s) (write-byte 0 s))
     ;; bool _shooter_enable
       (if _shooter_enable (write-byte -1 s) (write-byte 0 s))
     ;; bool _fricwheel_enable
       (if _fricwheel_enable (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _level
     (setq _level (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _remain_hp
     (setq _remain_hp (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _max_hp
     (setq _max_hp (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _remain_bullets
     (setq _remain_bullets (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _max_bullets
     (setq _max_bullets (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _robot_color
     (setq _robot_color (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _chassis_enable
     (setq _chassis_enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _shooter_enable
     (setq _shooter_enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _fricwheel_enable
     (setq _fricwheel_enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get roborts_msgs::RobotInfo :md5sum-) "42151e01fd01be2567ca9939a7e62df3")
(setf (get roborts_msgs::RobotInfo :datatype-) "roborts_msgs/RobotInfo")
(setf (get roborts_msgs::RobotInfo :definition-)
      "#robot status
uint8 id
uint8 level
uint16 remain_hp
uint16 max_hp

uint16 remain_bullets
uint16 max_bullets

uint8 robot_color

# devices enable
bool chassis_enable
bool shooter_enable
bool fricwheel_enable

# color Defined Value
uint8 RED = 1
uint8 BLUE = 2
uint8 UNKONWN = 0
")



(provide :roborts_msgs/RobotInfo "42151e01fd01be2567ca9939a7e62df3")


