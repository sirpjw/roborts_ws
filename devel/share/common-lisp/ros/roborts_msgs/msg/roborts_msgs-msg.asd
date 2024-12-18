
(cl:in-package :asdf)

(defsystem "roborts_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :geometry_msgs-msg
               :nav_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ArmorDetection" :depends-on ("_package_ArmorDetection"))
    (:file "_package_ArmorDetection" :depends-on ("_package"))
    (:file "ArmorDetectionAction" :depends-on ("_package_ArmorDetectionAction"))
    (:file "_package_ArmorDetectionAction" :depends-on ("_package"))
    (:file "ArmorDetectionActionFeedback" :depends-on ("_package_ArmorDetectionActionFeedback"))
    (:file "_package_ArmorDetectionActionFeedback" :depends-on ("_package"))
    (:file "ArmorDetectionActionGoal" :depends-on ("_package_ArmorDetectionActionGoal"))
    (:file "_package_ArmorDetectionActionGoal" :depends-on ("_package"))
    (:file "ArmorDetectionActionResult" :depends-on ("_package_ArmorDetectionActionResult"))
    (:file "_package_ArmorDetectionActionResult" :depends-on ("_package"))
    (:file "ArmorDetectionFeedback" :depends-on ("_package_ArmorDetectionFeedback"))
    (:file "_package_ArmorDetectionFeedback" :depends-on ("_package"))
    (:file "ArmorDetectionGoal" :depends-on ("_package_ArmorDetectionGoal"))
    (:file "_package_ArmorDetectionGoal" :depends-on ("_package"))
    (:file "ArmorDetectionResult" :depends-on ("_package_ArmorDetectionResult"))
    (:file "_package_ArmorDetectionResult" :depends-on ("_package"))
    (:file "ArmorMsg" :depends-on ("_package_ArmorMsg"))
    (:file "_package_ArmorMsg" :depends-on ("_package"))
    (:file "ArmorMsgs" :depends-on ("_package_ArmorMsgs"))
    (:file "_package_ArmorMsgs" :depends-on ("_package"))
    (:file "CarMsg" :depends-on ("_package_CarMsg"))
    (:file "_package_CarMsg" :depends-on ("_package"))
    (:file "CarMsgs" :depends-on ("_package_CarMsgs"))
    (:file "_package_CarMsgs" :depends-on ("_package"))
    (:file "GameResult" :depends-on ("_package_GameResult"))
    (:file "_package_GameResult" :depends-on ("_package"))
    (:file "GameRobotBullet" :depends-on ("_package_GameRobotBullet"))
    (:file "_package_GameRobotBullet" :depends-on ("_package"))
    (:file "GameRobotHP" :depends-on ("_package_GameRobotHP"))
    (:file "_package_GameRobotHP" :depends-on ("_package"))
    (:file "GameStatus" :depends-on ("_package_GameStatus"))
    (:file "_package_GameStatus" :depends-on ("_package"))
    (:file "GameZone" :depends-on ("_package_GameZone"))
    (:file "_package_GameZone" :depends-on ("_package"))
    (:file "GameZoneArray" :depends-on ("_package_GameZoneArray"))
    (:file "_package_GameZoneArray" :depends-on ("_package"))
    (:file "GimbalAngle" :depends-on ("_package_GimbalAngle"))
    (:file "_package_GimbalAngle" :depends-on ("_package"))
    (:file "GlobalPlannerAction" :depends-on ("_package_GlobalPlannerAction"))
    (:file "_package_GlobalPlannerAction" :depends-on ("_package"))
    (:file "GlobalPlannerActionFeedback" :depends-on ("_package_GlobalPlannerActionFeedback"))
    (:file "_package_GlobalPlannerActionFeedback" :depends-on ("_package"))
    (:file "GlobalPlannerActionGoal" :depends-on ("_package_GlobalPlannerActionGoal"))
    (:file "_package_GlobalPlannerActionGoal" :depends-on ("_package"))
    (:file "GlobalPlannerActionResult" :depends-on ("_package_GlobalPlannerActionResult"))
    (:file "_package_GlobalPlannerActionResult" :depends-on ("_package"))
    (:file "GlobalPlannerFeedback" :depends-on ("_package_GlobalPlannerFeedback"))
    (:file "_package_GlobalPlannerFeedback" :depends-on ("_package"))
    (:file "GlobalPlannerGoal" :depends-on ("_package_GlobalPlannerGoal"))
    (:file "_package_GlobalPlannerGoal" :depends-on ("_package"))
    (:file "GlobalPlannerResult" :depends-on ("_package_GlobalPlannerResult"))
    (:file "_package_GlobalPlannerResult" :depends-on ("_package"))
    (:file "LocalPlannerAction" :depends-on ("_package_LocalPlannerAction"))
    (:file "_package_LocalPlannerAction" :depends-on ("_package"))
    (:file "LocalPlannerActionFeedback" :depends-on ("_package_LocalPlannerActionFeedback"))
    (:file "_package_LocalPlannerActionFeedback" :depends-on ("_package"))
    (:file "LocalPlannerActionGoal" :depends-on ("_package_LocalPlannerActionGoal"))
    (:file "_package_LocalPlannerActionGoal" :depends-on ("_package"))
    (:file "LocalPlannerActionResult" :depends-on ("_package_LocalPlannerActionResult"))
    (:file "_package_LocalPlannerActionResult" :depends-on ("_package"))
    (:file "LocalPlannerFeedback" :depends-on ("_package_LocalPlannerFeedback"))
    (:file "_package_LocalPlannerFeedback" :depends-on ("_package"))
    (:file "LocalPlannerGoal" :depends-on ("_package_LocalPlannerGoal"))
    (:file "_package_LocalPlannerGoal" :depends-on ("_package"))
    (:file "LocalPlannerResult" :depends-on ("_package_LocalPlannerResult"))
    (:file "_package_LocalPlannerResult" :depends-on ("_package"))
    (:file "LurkStatus" :depends-on ("_package_LurkStatus"))
    (:file "_package_LurkStatus" :depends-on ("_package"))
    (:file "RobotDamage" :depends-on ("_package_RobotDamage"))
    (:file "_package_RobotDamage" :depends-on ("_package"))
    (:file "RobotHeat" :depends-on ("_package_RobotHeat"))
    (:file "_package_RobotHeat" :depends-on ("_package"))
    (:file "RobotInfo" :depends-on ("_package_RobotInfo"))
    (:file "_package_RobotInfo" :depends-on ("_package"))
    (:file "RobotShoot" :depends-on ("_package_RobotShoot"))
    (:file "_package_RobotShoot" :depends-on ("_package"))
    (:file "RobotStatus" :depends-on ("_package_RobotStatus"))
    (:file "_package_RobotStatus" :depends-on ("_package"))
    (:file "SensorDevices" :depends-on ("_package_SensorDevices"))
    (:file "_package_SensorDevices" :depends-on ("_package"))
    (:file "ShootControl" :depends-on ("_package_ShootControl"))
    (:file "_package_ShootControl" :depends-on ("_package"))
    (:file "TwistAccel" :depends-on ("_package_TwistAccel"))
    (:file "_package_TwistAccel" :depends-on ("_package"))
  ))