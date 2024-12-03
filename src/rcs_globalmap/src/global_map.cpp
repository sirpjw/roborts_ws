#include "global_map.h"

GlobalMapNode::GlobalMapNode(){
    this->Init();
}

bool GlobalMapNode::Init(){

  // Create tf listener
  tf_ptr_ = std::make_shared<tf::TransformListener>(ros::Duration(10));

  // Create global costmap
  std::string map_path = ros::package::getPath("roborts_costmap") + \
      "/config/costmap_parameter_config_for_global_plan.prototxt";
  costmap_ptr_ = std::make_shared<roborts_costmap::CostmapInterface>("globalmap",
                                                                     *tf_ptr_,
                                                                     map_path.c_str());
  return true;
}

GlobalMapNode::~GlobalMapNode(){

}


int main(int argc, char **argv) {

  ros::init(argc, argv, "global_map");
  GlobalMapNode global_map;
  ros::spin();
  return 0;
}
