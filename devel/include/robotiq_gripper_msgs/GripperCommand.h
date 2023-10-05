// Generated by gencpp from file robotiq_gripper_msgs/GripperCommand.msg
// DO NOT EDIT!


#ifndef ROBOTIQ_GRIPPER_MSGS_MESSAGE_GRIPPERCOMMAND_H
#define ROBOTIQ_GRIPPER_MSGS_MESSAGE_GRIPPERCOMMAND_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace robotiq_gripper_msgs
{
template <class ContainerAllocator>
struct GripperCommand_
{
  typedef GripperCommand_<ContainerAllocator> Type;

  GripperCommand_()
    : position(0.0)
    , speed(0.0)
    , force(0.0)  {
    }
  GripperCommand_(const ContainerAllocator& _alloc)
    : position(0.0)
    , speed(0.0)
    , force(0.0)  {
  (void)_alloc;
    }



   typedef float _position_type;
  _position_type position;

   typedef float _speed_type;
  _speed_type speed;

   typedef float _force_type;
  _force_type force;





  typedef boost::shared_ptr< ::robotiq_gripper_msgs::GripperCommand_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robotiq_gripper_msgs::GripperCommand_<ContainerAllocator> const> ConstPtr;

}; // struct GripperCommand_

typedef ::robotiq_gripper_msgs::GripperCommand_<std::allocator<void> > GripperCommand;

typedef boost::shared_ptr< ::robotiq_gripper_msgs::GripperCommand > GripperCommandPtr;
typedef boost::shared_ptr< ::robotiq_gripper_msgs::GripperCommand const> GripperCommandConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robotiq_gripper_msgs::GripperCommand_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robotiq_gripper_msgs::GripperCommand_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robotiq_gripper_msgs::GripperCommand_<ContainerAllocator1> & lhs, const ::robotiq_gripper_msgs::GripperCommand_<ContainerAllocator2> & rhs)
{
  return lhs.position == rhs.position &&
    lhs.speed == rhs.speed &&
    lhs.force == rhs.force;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robotiq_gripper_msgs::GripperCommand_<ContainerAllocator1> & lhs, const ::robotiq_gripper_msgs::GripperCommand_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robotiq_gripper_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robotiq_gripper_msgs::GripperCommand_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robotiq_gripper_msgs::GripperCommand_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robotiq_gripper_msgs::GripperCommand_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robotiq_gripper_msgs::GripperCommand_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotiq_gripper_msgs::GripperCommand_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotiq_gripper_msgs::GripperCommand_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robotiq_gripper_msgs::GripperCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "847b784004fe459ff81cbcf64803d116";
  }

  static const char* value(const ::robotiq_gripper_msgs::GripperCommand_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x847b784004fe459fULL;
  static const uint64_t static_value2 = 0xf81cbcf64803d116ULL;
};

template<class ContainerAllocator>
struct DataType< ::robotiq_gripper_msgs::GripperCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robotiq_gripper_msgs/GripperCommand";
  }

  static const char* value(const ::robotiq_gripper_msgs::GripperCommand_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robotiq_gripper_msgs::GripperCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 position\n"
"float32 speed\n"
"float32 force\n"
;
  }

  static const char* value(const ::robotiq_gripper_msgs::GripperCommand_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robotiq_gripper_msgs::GripperCommand_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.position);
      stream.next(m.speed);
      stream.next(m.force);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GripperCommand_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robotiq_gripper_msgs::GripperCommand_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robotiq_gripper_msgs::GripperCommand_<ContainerAllocator>& v)
  {
    s << indent << "position: ";
    Printer<float>::stream(s, indent + "  ", v.position);
    s << indent << "speed: ";
    Printer<float>::stream(s, indent + "  ", v.speed);
    s << indent << "force: ";
    Printer<float>::stream(s, indent + "  ", v.force);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOTIQ_GRIPPER_MSGS_MESSAGE_GRIPPERCOMMAND_H