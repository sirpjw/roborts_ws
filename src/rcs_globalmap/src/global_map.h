#include "costmap/costmap_interface.h"

class GlobalMapNode
{
public:
    typedef std::shared_ptr<roborts_costmap::CostmapInterface> CostmapPtr;
    typedef std::shared_ptr<tf::TransformListener> TfPtr;

private:
    /* data */
    //! Transform pointer
    TfPtr tf_ptr_;
    //! Costmap pointer
    CostmapPtr costmap_ptr_;

    bool Init();

public:
    GlobalMapNode
(/* args */);
    ~GlobalMapNode
();
};
