#include <ros/ros.h>
#include <tf/tf.h>
#include <ros/package.h>
#include <opencv2/opencv.hpp>
#include "gimbal_control/gimbal_control.h"
#include "constraint_set/constraint_set.h"
#include "roborts_msgs/GimbalAngle.h"
#include "geometry_msgs/PoseStamped.h"
#include <tf/tf.h>
#include <signal.h>
#include <image_transport/image_transport.h>
#include "cv_bridge/cv_bridge.h"
#include "roborts_msgs/ArmorDetection.h"
#include <tf/transform_listener.h>
#include <std_msgs/Float64.h>
#include <roborts_msgs/FricWhl.h>
#include <roborts_msgs/ShootCmd.h>
#include <roborts_msgs/RobotShoot.h>

void SignalHandler(int signal) {
    ros::shutdown();
}
roborts_detection::ArmorDetection armor_detector_;
roborts_detection::GimbalContrl gimbal_control_;

double last_pitch_;
double last_yaw_;
double delta_pitch, delta_yaw;
double pitch_raw_angle_;
double yaw_raw_angle_;
double yaw_ecd_angle_;
double gimbal_global_angle_;
int missed_cnt_ = 0;
int detected_cnt_ = 0;
int sentry_miss_cnt_ = 0;
double bullet_speed_;
bool enable_shoot;
bool enable_yaw;

std::vector<cv::Point2d> sentry_enemy_;
int current_sentry_id_ = 0;
bool change_target_flag_ = false;
cv::Point2d current_sentry_enemy_;
bool received_enemy_info_ = false;
std::string color_str;
cv::Point3d self_pose_;
bool received_self_pose_ = false;
int last_detected_cnt_ = 60;
int sentry_cnt_ = 200;

ros::Subscriber gimbal_angle_sub_;
ros::Subscriber robot_pose_sub_;
ros::Subscriber base_gimbal_angle_sub_;
image_transport::Subscriber image_sub_;
ros::Publisher enemy_info_pub_;
ros::Publisher armor_detection_pub_;

//open fricWhl service
ros::ServiceClient fric_client;
roborts_msgs::FricWhl fricCtrl;
//shoot service client
ros::ServiceClient shoot_client;
roborts_msgs::ShootCmd shootSrv;

bool converge_flag_ = false;
bool estimate_converge_flag_ = false;
bool switch_flag_ = false;
bool switch_process_flag_ = false;
bool detected_enemy_ = false;
bool last_detected_enemy_ = false;

clock_t image_timestamp_;
clock_t image_last_timestamp_;
ros::Time last_shoot_time;

std::shared_ptr<tf::TransformListener> tf_ptr_;
int cur_step = 0, MAX_STEP = 4, SWING_DIRECTION = 1;
double cur_base_gimbal_angle;
double SWING_ANGLE = 0.05, MAX_SWING_ANGLE = M_PI / 3, shoot_speed = 16.0;

void RobotShootCallBack(const roborts_msgs::RobotShoot::ConstPtr &msg) {
    shoot_speed = msg -> speed;
}

void BaseGimbalAngleCallBack(const std_msgs::Float64::ConstPtr &msg) {
    cur_base_gimbal_angle = msg -> data;
}

void ImageCallback(const sensor_msgs::ImageConstPtr &msg) {
    cv::Mat image = cv_bridge::toCvShare(msg, "bgr8")->image.clone();
    double delta_t = (double)(image_timestamp_ - image_last_timestamp_) / CLOCKS_PER_SEC;

    cv::Point3f target_3d_;
    cv::Point3f target_r_;
    double armor_dist = 0.0;
    
    if(!image.empty()) {
        armor_detector_.DetectArmor(image, detected_enemy_, target_3d_, target_r_);
    }
    double pitch, yaw;
    
    armor_dist = std::sqrt(target_3d_.x * target_3d_.x + target_3d_.y * target_3d_.y + target_3d_.z * target_3d_.z);
    double predict_time = armor_dist / gimbal_control_.init_v_ / 1000.0;

    roborts_msgs::ArmorDetection armor_detection_;
    roborts_msgs::GimbalAngle gimbal_angle_;

    armor_detection_.enemy_x = target_3d_.z;
    armor_detection_.enemy_y = - target_3d_.x;
    if (detected_enemy_) 
    {
        sentry_miss_cnt_ = 0;
        double rvec_norm = sqrt(target_r_.x * target_r_.x + target_r_.y * target_r_.y + target_r_.z * target_r_.z);
        armor_detection_.detected_enemy = true;
        gimbal_control_.Transform(target_3d_, shoot_speed, delta_pitch, delta_yaw);
        //double distance = target_3d_.z;
        //gimbal_angle_.distance = target_3d_.z;
        //armor_detection_.distance = distance;

        pitch = delta_pitch;
        yaw = delta_yaw; // + yaw_raw_angle_;
        missed_cnt_ = 30;

        gimbal_angle_.pitch_angle = pitch;
        gimbal_angle_.yaw_angle = yaw + cur_base_gimbal_angle;
        //ROS_INFO("Pitch: %.3lf, delta-Yaw: %.3lf, pre-yaw: %.3lf, absolute-Yaw: %.3lf", pitch, yaw, cur_base_gimbal_angle, yaw + cur_base_gimbal_angle);
        gimbal_angle_.pitch_mode = false;
        gimbal_angle_.yaw_mode = false;
        detected_cnt_ = 20;
    }
    else if (!detected_enemy_ && missed_cnt_ > 0) {
        missed_cnt_--;
        armor_detection_.detected_enemy = false;
        gimbal_angle_.pitch_angle = 0.0;
        gimbal_angle_.yaw_angle = 0.0;
        gimbal_angle_.pitch_mode = true;
        gimbal_angle_.yaw_mode = true;
    } else {
        /*gimbal_angle_.yaw_angle = SWING_DIRECTION * SWING_ANGLE + cur_base_gimbal_angle;
        if(gimbal_angle_.yaw_angle > MAX_SWING_ANGLE) {
            SWING_DIRECTION = -1;
            gimbal_angle_.yaw_angle = MAX_SWING_ANGLE;
        }
        if(gimbal_angle_.yaw_angle < - MAX_SWING_ANGLE) {
            SWING_DIRECTION = 1;
            gimbal_angle_.yaw_angle = - MAX_SWING_ANGLE;   
        }*/

        armor_detection_.detected_enemy = false;
        gimbal_angle_.yaw_angle = 0;
        gimbal_angle_.pitch_angle = 0;
        gimbal_angle_.pitch_mode = false;
        gimbal_angle_.yaw_mode = false;
    }
    if (enable_yaw) enemy_info_pub_.publish(gimbal_angle_);
    if (enable_shoot) {
        if(fabs(delta_yaw) < 0.02 && (ros::Time::now() - last_shoot_time).toSec() >= 1 && detected_enemy_) {
            if(fabs(delta_yaw) < 0.01) {
                shootSrv.request.mode = 1;
                shootSrv.request.number = 2;
            }else{
                shootSrv.request.mode = 1;
                shootSrv.request.number = 3;
            }
            if(!shoot_client.call(shootSrv)) ROS_WARN ("Erros occured, can't shoot!");
            else ROS_INFO("Shoot Successfully");
            last_shoot_time = ros::Time::now();
        }
    }
    cur_step = (cur_step + 1) % MAX_STEP;

    armor_detection_.distance = target_3d_.z;
    armor_detection_pub_.publish(armor_detection_);

    // update last state
    image_last_timestamp_ = image_timestamp_;
    last_pitch_ = pitch;
    last_yaw_ = yaw;
    last_detected_enemy_ = detected_enemy_;
}

int main(int argc, char** argv)
{
    signal(SIGINT, SignalHandler);
    signal(SIGTERM, SignalHandler);
    ros::init(argc, argv, "armor_detection_node", ros::init_options::NoSigintHandler);
    ros::NodeHandle ros_nh_;
    enemy_info_pub_ = ros_nh_.advertise<roborts_msgs::GimbalAngle>("cmd_gimbal_angle", 1);
    armor_detection_pub_ = ros_nh_.advertise<roborts_msgs::ArmorDetection>("armor_info", 1);
    base_gimbal_angle_sub_ = ros_nh_.subscribe("base_gimbal_angle", 1, BaseGimbalAngleCallBack);
    //gimbal_angle_sub_ = ros_nh_.subscribe<robort_msgs::GimbalAngle>("gimbal_angle_info", 1, GimbalAngleCallback);
    
    image_transport::ImageTransport it(ros_nh_);
    image_sub_ = it.subscribe("/mv_camera/image_raw", 1, ImageCallback);
    tf_ptr_ = std::make_shared<tf::TransformListener>(ros::Duration(10));

    cv::Mat intrinsic_matrix, distortion_coeffs;
    std::string yaml_filename =  ros::package::getPath("roborts_detection") + "/armor_detection/camera_param/camera_param_rmua.yaml";
    cv::FileStorage fs(yaml_filename , cv::FileStorage::READ);
    fs["cameraMatrix"] >> intrinsic_matrix;
    fs["distCoeffs"] >> distortion_coeffs;
    fs.release();
    armor_detector_.LoadParam(intrinsic_matrix, distortion_coeffs);

    double gimbal_offset_x, gimbal_offset_y, gimbal_offset_z, bullet_init_v, bullet_init_k;
    
    ros_nh_.param("enable_shoot", enable_shoot, false);
    ros_nh_.param("enable_yaw", enable_yaw, false);
    ros_nh_.param("max_step", MAX_STEP, 1);
    ros_nh_.param("gimbal_offset_x", gimbal_offset_x, -70.0);
    ros_nh_.param("gimbal_offset_y", gimbal_offset_y, 160.0);
    ros_nh_.param("gimbal_offset_z", gimbal_offset_z, 130.0);
    ros_nh_.param("bullet_init_v", bullet_init_v, 16.0);
    ros_nh_.param("bullet_init_k", bullet_init_k, 0.036);
    gimbal_control_.Init(gimbal_offset_x, gimbal_offset_y, gimbal_offset_z, bullet_init_v, bullet_init_k);

    shoot_client = ros_nh_.serviceClient<roborts_msgs::ShootCmd>("cmd_shoot");
    fric_client = ros_nh_.serviceClient<roborts_msgs::FricWhl>("cmd_fric_wheel");
    if(enable_shoot) {
        ros::service::waitForService("cmd_shoot");
        ros::service::waitForService("cmd_fric_wheel");

        fricCtrl.request.open = true;
        if(fric_client.call(fricCtrl)) {
            ROS_INFO("Open Fric successfully.");
        }else{
            ROS_INFO("Open Failed.");
        }
    }
    last_shoot_time = ros::Time::now();
    
    ros::spin();
    return 0;
}
