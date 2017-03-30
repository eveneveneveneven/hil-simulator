// Generated by gencpp from file ps3_joy_thrusters/ActuatorMessage.msg
// DO NOT EDIT!


#ifndef PS3_JOY_THRUSTERS_MESSAGE_ACTUATORMESSAGE_H
#define PS3_JOY_THRUSTERS_MESSAGE_ACTUATORMESSAGE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace ps3_joy_thrusters
{
template <class ContainerAllocator>
struct ActuatorMessage_
{
  typedef ActuatorMessage_<ContainerAllocator> Type;

  ActuatorMessage_()
    : header()
    , rightRPM(0.0)
    , leftRPM(0.0)
    , rightNozzle(0.0)
    , leftNozzle(0.0)
    , rightDeflector(0.0)
    , leftDeflector(0.0)  {
    }
  ActuatorMessage_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , rightRPM(0.0)
    , leftRPM(0.0)
    , rightNozzle(0.0)
    , leftNozzle(0.0)
    , rightDeflector(0.0)
    , leftDeflector(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef double _rightRPM_type;
  _rightRPM_type rightRPM;

   typedef double _leftRPM_type;
  _leftRPM_type leftRPM;

   typedef double _rightNozzle_type;
  _rightNozzle_type rightNozzle;

   typedef double _leftNozzle_type;
  _leftNozzle_type leftNozzle;

   typedef double _rightDeflector_type;
  _rightDeflector_type rightDeflector;

   typedef double _leftDeflector_type;
  _leftDeflector_type leftDeflector;




  typedef boost::shared_ptr< ::ps3_joy_thrusters::ActuatorMessage_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ps3_joy_thrusters::ActuatorMessage_<ContainerAllocator> const> ConstPtr;

}; // struct ActuatorMessage_

typedef ::ps3_joy_thrusters::ActuatorMessage_<std::allocator<void> > ActuatorMessage;

typedef boost::shared_ptr< ::ps3_joy_thrusters::ActuatorMessage > ActuatorMessagePtr;
typedef boost::shared_ptr< ::ps3_joy_thrusters::ActuatorMessage const> ActuatorMessageConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ps3_joy_thrusters::ActuatorMessage_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ps3_joy_thrusters::ActuatorMessage_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace ps3_joy_thrusters

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'ps3_joy_thrusters': ['/home/d943/Dropbox/Master/catkin_ws/src/ps3_joy_thrusters/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::ps3_joy_thrusters::ActuatorMessage_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ps3_joy_thrusters::ActuatorMessage_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ps3_joy_thrusters::ActuatorMessage_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ps3_joy_thrusters::ActuatorMessage_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ps3_joy_thrusters::ActuatorMessage_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ps3_joy_thrusters::ActuatorMessage_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ps3_joy_thrusters::ActuatorMessage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fb829d59d9a04899ffe787adb09f39e9";
  }

  static const char* value(const ::ps3_joy_thrusters::ActuatorMessage_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfb829d59d9a04899ULL;
  static const uint64_t static_value2 = 0xffe787adb09f39e9ULL;
};

template<class ContainerAllocator>
struct DataType< ::ps3_joy_thrusters::ActuatorMessage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ps3_joy_thrusters/ActuatorMessage";
  }

  static const char* value(const ::ps3_joy_thrusters::ActuatorMessage_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ps3_joy_thrusters::ActuatorMessage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
float64 rightRPM\n\
float64 leftRPM\n\
float64 rightNozzle\n\
float64 leftNozzle\n\
float64 rightDeflector\n\
float64 leftDeflector\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
";
  }

  static const char* value(const ::ps3_joy_thrusters::ActuatorMessage_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ps3_joy_thrusters::ActuatorMessage_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.rightRPM);
      stream.next(m.leftRPM);
      stream.next(m.rightNozzle);
      stream.next(m.leftNozzle);
      stream.next(m.rightDeflector);
      stream.next(m.leftDeflector);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct ActuatorMessage_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ps3_joy_thrusters::ActuatorMessage_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ps3_joy_thrusters::ActuatorMessage_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "rightRPM: ";
    Printer<double>::stream(s, indent + "  ", v.rightRPM);
    s << indent << "leftRPM: ";
    Printer<double>::stream(s, indent + "  ", v.leftRPM);
    s << indent << "rightNozzle: ";
    Printer<double>::stream(s, indent + "  ", v.rightNozzle);
    s << indent << "leftNozzle: ";
    Printer<double>::stream(s, indent + "  ", v.leftNozzle);
    s << indent << "rightDeflector: ";
    Printer<double>::stream(s, indent + "  ", v.rightDeflector);
    s << indent << "leftDeflector: ";
    Printer<double>::stream(s, indent + "  ", v.leftDeflector);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PS3_JOY_THRUSTERS_MESSAGE_ACTUATORMESSAGE_H