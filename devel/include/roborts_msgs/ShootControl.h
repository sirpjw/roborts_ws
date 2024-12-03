// Generated by gencpp from file roborts_msgs/ShootControl.msg
// DO NOT EDIT!


#ifndef ROBORTS_MSGS_MESSAGE_SHOOTCONTROL_H
#define ROBORTS_MSGS_MESSAGE_SHOOTCONTROL_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace roborts_msgs
{
template <class ContainerAllocator>
struct ShootControl_
{
  typedef ShootControl_<ContainerAllocator> Type;

  ShootControl_()
    : yaw_angle(0.0)
    , pitch_angle(0.0)  {
    }
  ShootControl_(const ContainerAllocator& _alloc)
    : yaw_angle(0.0)
    , pitch_angle(0.0)  {
  (void)_alloc;
    }



   typedef double _yaw_angle_type;
  _yaw_angle_type yaw_angle;

   typedef double _pitch_angle_type;
  _pitch_angle_type pitch_angle;





  typedef boost::shared_ptr< ::roborts_msgs::ShootControl_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roborts_msgs::ShootControl_<ContainerAllocator> const> ConstPtr;

}; // struct ShootControl_

typedef ::roborts_msgs::ShootControl_<std::allocator<void> > ShootControl;

typedef boost::shared_ptr< ::roborts_msgs::ShootControl > ShootControlPtr;
typedef boost::shared_ptr< ::roborts_msgs::ShootControl const> ShootControlConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roborts_msgs::ShootControl_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roborts_msgs::ShootControl_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::roborts_msgs::ShootControl_<ContainerAllocator1> & lhs, const ::roborts_msgs::ShootControl_<ContainerAllocator2> & rhs)
{
  return lhs.yaw_angle == rhs.yaw_angle &&
    lhs.pitch_angle == rhs.pitch_angle;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::roborts_msgs::ShootControl_<ContainerAllocator1> & lhs, const ::roborts_msgs::ShootControl_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace roborts_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::roborts_msgs::ShootControl_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roborts_msgs::ShootControl_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roborts_msgs::ShootControl_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roborts_msgs::ShootControl_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roborts_msgs::ShootControl_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roborts_msgs::ShootControl_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roborts_msgs::ShootControl_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d142b662823bdbaf886a74b018aab3bd";
  }

  static const char* value(const ::roborts_msgs::ShootControl_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd142b662823bdbafULL;
  static const uint64_t static_value2 = 0x886a74b018aab3bdULL;
};

template<class ContainerAllocator>
struct DataType< ::roborts_msgs::ShootControl_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roborts_msgs/ShootControl";
  }

  static const char* value(const ::roborts_msgs::ShootControl_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roborts_msgs::ShootControl_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# 调试\n"
"float64 yaw_angle\n"
"float64 pitch_angle\n"
;
  }

  static const char* value(const ::roborts_msgs::ShootControl_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roborts_msgs::ShootControl_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.yaw_angle);
      stream.next(m.pitch_angle);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ShootControl_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roborts_msgs::ShootControl_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roborts_msgs::ShootControl_<ContainerAllocator>& v)
  {
    s << indent << "yaw_angle: ";
    Printer<double>::stream(s, indent + "  ", v.yaw_angle);
    s << indent << "pitch_angle: ";
    Printer<double>::stream(s, indent + "  ", v.pitch_angle);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBORTS_MSGS_MESSAGE_SHOOTCONTROL_H