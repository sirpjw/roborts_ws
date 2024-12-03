/****************************************************************************
 *  Copyright (C) 2019 RoboMaster.
 *
 *  This program is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of 
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program. If not, see <http://www.gnu.org/licenses/>.
 ***************************************************************************/

#include <mutex>
#include <thread>
#include <chrono>
#include <utility>
#include <iostream>

#include "ros/ros.h"
#include "geometry_msgs/Twist.h"
#include "roborts_msgs/TwistAccel.h"
#include <nav_msgs/Odometry.h>
#include "std_msgs/Float64.h"
#include "roborts_msgs/GimbalAngle.h"

class VelConverter {
  public:
    VelConverter()     : new_cmd_acc_(false), begin_(false) 
    {
      
      cmd_vel_.linear.x = 0;
      cmd_vel_.linear.y = 0;
      cmd_vel_.angular.z = 0;

      // detection_gimbal_angle.pitch_angle = detection_gimbal_angle.yaw_angle = 0;
      // detection_gimbal_angle.pitch_mode = detection_gimbal_angle.yaw_mode = false;


      cmd_pub_ = cmd_handle_.advertise<geometry_msgs::Twist>("/cmd_vel", 2);
      cmd_sub_ = cmd_handle_.subscribe<roborts_msgs::TwistAccel>("/cmd_vel_acc", 100, boost::bind(&VelConverter::VelCallback, this, _1));

      // detection_angle_sub_ = cmd_handle_.subscribe<roborts_msgs::GimbalAngle>("detection_gimbal_angle", 2, boost::bind(&VelConverter::DetectionAngleCallback, this, _1));
      // cmd_gimbal_angle_pub_ = cmd_handle_.advertise<roborts_msgs::GimbalAngle>("cmd_gimbal_angle", 1);

    }
    void VelCallback(const roborts_msgs::TwistAccel::ConstPtr& msg);
    void OdomCallback(const nav_msgs::Odometry::ConstPtr& msg);
    void DetectionAngleCallback(const roborts_msgs::GimbalAngle::ConstPtr& msg);
    void BaseGimbalAngleCallBack(const std_msgs::Float64::ConstPtr &msg);
    void UpdateVel();
    // std::pair<double, double> CalculateThetaAndWTheta(); //正向解算所用信息
    // std::pair<double, double> CalculateRevThetaAndWTheta(); //反向解算所用信息
  private:
    roborts_msgs::TwistAccel cmd_vel_acc_;
    geometry_msgs::Twist cmd_vel_;
    geometry_msgs::Twist cmd_vel_pub_;

    bool new_cmd_acc_, begin_;

    ros::NodeHandle cmd_handle_;
    ros::Publisher cmd_pub_;
    ros::Subscriber cmd_sub_;

    // ros::Publisher cmd_gimbal_angle_pub_;
    // ros::Subscriber detection_angle_sub_;
    
    std::chrono::high_resolution_clock::time_point time_begin_;
    std::chrono::high_resolution_clock::time_point gimbal_pub_time;

    std::mutex cmd_mutex_;
    // std::mutex detection_mutex_;

    //for swing
    // bool enable_swing_; //是否打开扭腰
    // bool swing_started_;
    // bool new_detection_angle_;
    // double swing_time_offset_;
    // double swing_angle_ratio_;
    // double cur_base_gimbal_angle;
    // double offset_angle_; //用于解决扭腰状态下，检测帧率低于速度发布帧率造成的云台跟着偏转问题
    // double last_cmd_w; //上一次角速度
    
    // roborts_msgs::SwingInfo swing_info_;
    // roborts_msgs::GimbalAngle detection_gimbal_angle;
    // roborts_msgs::GimbalAngle cmd_gimbal_angle_pub;

    double MAX_THETA, MAX_WTHETA; //扭腰距离中心线最大角度，扭腰最大角速度
};

// void VelConverter::BaseGimbalAngleCallBack(const std_msgs::Float64::ConstPtr &msg) {
//     cur_base_gimbal_angle = msg -> data;
// }

void VelConverter::DetectionAngleCallback(const roborts_msgs::GimbalAngle::ConstPtr& msg) {
  // std::lock_guard<std::mutex> cmd_guard(detection_mutex_);
  // detection_gimbal_angle = *msg;
}

// std::pair<double, double> VelConverter::CalculateThetaAndWTheta() {
  // if(!begin_) {
  //   return std::make_pair(0, 0);
  // }
  // auto swing_time = std::chrono::duration<double, std::ratio<1, 1>>(std::chrono::high_resolution_clock::now() - begin).count();
  // return std::make_pair( MAX_THETA * sin( (MAX_WTHETA / MAX_THETA) * swing_time ), MAX_WTHETA * cos( (MAX_WTHETA / MAX_THETA) * swing_time ));
// }


void VelConverter::VelCallback(const roborts_msgs::TwistAccel::ConstPtr& twist_acc_msg)
{
  if (!begin_) {
    begin_ = true;
    // begin = std::chrono::high_resolution_clock::now();
  }
  std::lock_guard<std::mutex> cmd_guard(cmd_mutex_);
  new_cmd_acc_ = true;
  cmd_vel_acc_ = *twist_acc_msg;
}

void VelConverter::UpdateVel() {
  int a = 1;
  if (!begin_) {
    return;
  }
  auto begin = std::chrono::high_resolution_clock::now();
  if (new_cmd_acc_) {
    std::lock_guard<std::mutex> cmd_guard(cmd_mutex_);
    cmd_vel_ = cmd_vel_acc_.twist;
    cmd_pub_.publish(cmd_vel_);
    new_cmd_acc_ = false;
    time_begin_ = std::chrono::high_resolution_clock::now();
    return;
  }

  auto actual_time = std::chrono::duration<double, std::ratio<1, 1>>(std::chrono::high_resolution_clock::now() - time_begin_).count();
  time_begin_ = std::chrono::high_resolution_clock::now();

  cmd_vel_.linear.x = cmd_vel_.linear.x + actual_time * cmd_vel_acc_.accel.linear.x;
  cmd_vel_.linear.y = cmd_vel_.linear.y + actual_time * cmd_vel_acc_.accel.linear.y;
  cmd_vel_.angular.z = cmd_vel_.angular.z + actual_time * cmd_vel_acc_.accel.angular.z;

}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "vel_converter");

  VelConverter vel_converter;

  while	(ros::ok()) {
    std::this_thread::sleep_for(std::chrono::milliseconds(5));
    ros::spinOnce();
    vel_converter.UpdateVel();
  }

  return 0;
}