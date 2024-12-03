#include <ros/ros.h>
#include <geometry_msgs/PoseStamped.h>
#include <actionlib/client/simple_action_client.h>
#include "roborts_msgs/GlobalPlannerAction.h"
#include "roborts_msgs/LocalPlannerAction.h"

class PlannerTest{
  public:
    PlannerTest() : global_planner_client_("global_planner_node_action", true), local_planner_client_("local_planner_node_action", true) {
      ros::NodeHandle rviz_nh_("/move_base_simple");
      move_goal_sub_ = rviz_nh_.subscribe<geometry_msgs::PoseStamped>("goal", 1, &PlannerTest::RvizMoveGoalCallBack, this);
      global_planner_client_.waitForServer();
      ROS_INFO("Global planer server start!");
      local_planner_client_.waitForServer();
      ROS_INFO("Local planer server start!");
    }
    void RvizMoveGoalCallBack(const geometry_msgs::PoseStampedConstPtr &goal);
    void GlobalPlannerFeedbackCallback(const roborts_msgs::GlobalPlannerFeedbackConstPtr& global_planner_feedback);
  private:
    actionlib::SimpleActionClient<roborts_msgs::GlobalPlannerAction> global_planner_client_;
    actionlib::SimpleActionClient<roborts_msgs::LocalPlannerAction> local_planner_client_;
    ros::Subscriber move_goal_sub_;
    roborts_msgs::GlobalPlannerGoal global_planner_goal_;
    roborts_msgs::LocalPlannerGoal local_planner_goal_;
};

void PlannerTest::RvizMoveGoalCallBack(const geometry_msgs::PoseStamped::ConstPtr &goal) {
  global_planner_goal_.goal = *goal;
  global_planner_client_.sendGoal(global_planner_goal_,
                                  actionlib::SimpleActionClient<roborts_msgs::GlobalPlannerAction>::SimpleDoneCallback(),
                                  actionlib::SimpleActionClient<roborts_msgs::GlobalPlannerAction>::SimpleActiveCallback(),
                                  boost::bind(&PlannerTest::GlobalPlannerFeedbackCallback, this, _1));
}

void PlannerTest::GlobalPlannerFeedbackCallback(const roborts_msgs::GlobalPlannerFeedbackConstPtr& global_planner_feedback){
  if (!global_planner_feedback->path.poses.empty()) {
    local_planner_goal_.route = global_planner_feedback->path;
    local_planner_client_.sendGoal(local_planner_goal_);
  }
}

int main(int argc, char **argv) {
  ros::init(argc, argv, "PlannerTest");
  PlannerTest planner_test;
  ros::spin();
  return 0;
}