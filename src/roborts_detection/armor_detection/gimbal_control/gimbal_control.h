#ifndef ROBORTS_DETECTION_GIMBAL_CONTROL_H
#define ROBORTS_DETECTION_GIMBAL_CONTROL_H

#include <iostream>
#include <ros/ros.h>
#include <opencv2/opencv.hpp>

namespace roborts_detection {
    const double GRAVITY = 9.78;

/**
 * @brief The class can make a transformation: the 3D position of enemy -->  pitch,yaw angle of gimbal.
 * For more derails, see projectile_model.pdf
 * TODO: add enemy motion estimation
 */

    class GimbalContrl {
    private:
        /**
         * @brief Calculate the actual y value with air resistance
         * @param x the distanc
         * @param v Projectile velocity
         * @param angle Pitch angle
         * @return The actual y value in the gimbal coordinate
         */
        double BulletModel(double x, double v, double angle);

        /**
         * @brief Get the gimbal control angle
         * @param x Distance from enemy(the armor selected to shoot) to gimbal
         * @param y Value of y in gimbal coordinate.
         * @param v Projectile velocity
         * @return Gimbal pitch angle
         */
        double GetPitch(double x, double y, double v);

    public:
        /**
         * @brief Init the Transformation matrix from camera to gimbal //TODO: write in ros tf
         * @param x Translate x
         * @param y Translate y
         * @param z Translate z
         * @param pitch Rotate pitch
         * @param yaw Rotate yaw
         */
        void Init(double x, double y, double z,
                  double init_v = 20,
                  double init_k = 0.036
        );

        /**
         * @brief Get the gimbal control info.
         * @param postion Enemy position(actually it should be the target armor).
         * @param pitch Input and output actual pitch angle
         * @param yaw Input and output actual yaw angle
         */
        void Transform(cv::Point3f &postion, double &pitch, double &shoot_speed, double &yaw);

        void set_velocity(double speed) {
            init_v_ = speed;
        }

    public:
        //! Transformation matrix between camera coordinate system and gimbal coordinate system.
        //! Translation unit: cm
        cv::Point3f offset_;

        //! Initial value
        double init_v_;
        double init_k_;

    };

}

#endif
