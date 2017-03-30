// Generated by gencpp from file simulator_messages/Environment.msg
// DO NOT EDIT!


#ifndef SIMULATOR_MESSAGES_MESSAGE_ENVIRONMENT_H
#define SIMULATOR_MESSAGES_MESSAGE_ENVIRONMENT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace simulator_messages
{
template <class ContainerAllocator>
struct Environment_
{
  typedef Environment_<ContainerAllocator> Type;

  Environment_()
    : paused(false)
    , latitude(0.0)
    , longitude(0.0)
    , meanWindSpeed(0.0)
    , meanWindDirection(0.0)
    , meanCurrentSpeed(0.0)
    , meanCurrentDirection(0.0)  {
    }
  Environment_(const ContainerAllocator& _alloc)
    : paused(false)
    , latitude(0.0)
    , longitude(0.0)
    , meanWindSpeed(0.0)
    , meanWindDirection(0.0)
    , meanCurrentSpeed(0.0)
    , meanCurrentDirection(0.0)  {
  (void)_alloc;
    }



   typedef uint8_t _paused_type;
  _paused_type paused;

   typedef double _latitude_type;
  _latitude_type latitude;

   typedef double _longitude_type;
  _longitude_type longitude;

   typedef double _meanWindSpeed_type;
  _meanWindSpeed_type meanWindSpeed;

   typedef double _meanWindDirection_type;
  _meanWindDirection_type meanWindDirection;

   typedef double _meanCurrentSpeed_type;
  _meanCurrentSpeed_type meanCurrentSpeed;

   typedef double _meanCurrentDirection_type;
  _meanCurrentDirection_type meanCurrentDirection;




  typedef boost::shared_ptr< ::simulator_messages::Environment_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::simulator_messages::Environment_<ContainerAllocator> const> ConstPtr;

}; // struct Environment_

typedef ::simulator_messages::Environment_<std::allocator<void> > Environment;

typedef boost::shared_ptr< ::simulator_messages::Environment > EnvironmentPtr;
typedef boost::shared_ptr< ::simulator_messages::Environment const> EnvironmentConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::simulator_messages::Environment_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::simulator_messages::Environment_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace simulator_messages

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'simulator_messages': ['/home/d943/Dropbox/Master/catkin_ws/src/simulator_messages/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::simulator_messages::Environment_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::simulator_messages::Environment_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::simulator_messages::Environment_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::simulator_messages::Environment_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::simulator_messages::Environment_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::simulator_messages::Environment_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::simulator_messages::Environment_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c7b07d3af6ed0820d5cb2f920af3dd4f";
  }

  static const char* value(const ::simulator_messages::Environment_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc7b07d3af6ed0820ULL;
  static const uint64_t static_value2 = 0xd5cb2f920af3dd4fULL;
};

template<class ContainerAllocator>
struct DataType< ::simulator_messages::Environment_<ContainerAllocator> >
{
  static const char* value()
  {
    return "simulator_messages/Environment";
  }

  static const char* value(const ::simulator_messages::Environment_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::simulator_messages::Environment_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool paused\n\
float64 latitude\n\
float64 longitude\n\
float64 meanWindSpeed\n\
float64 meanWindDirection\n\
float64 meanCurrentSpeed\n\
float64 meanCurrentDirection\n\
";
  }

  static const char* value(const ::simulator_messages::Environment_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::simulator_messages::Environment_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.paused);
      stream.next(m.latitude);
      stream.next(m.longitude);
      stream.next(m.meanWindSpeed);
      stream.next(m.meanWindDirection);
      stream.next(m.meanCurrentSpeed);
      stream.next(m.meanCurrentDirection);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct Environment_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::simulator_messages::Environment_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::simulator_messages::Environment_<ContainerAllocator>& v)
  {
    s << indent << "paused: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.paused);
    s << indent << "latitude: ";
    Printer<double>::stream(s, indent + "  ", v.latitude);
    s << indent << "longitude: ";
    Printer<double>::stream(s, indent + "  ", v.longitude);
    s << indent << "meanWindSpeed: ";
    Printer<double>::stream(s, indent + "  ", v.meanWindSpeed);
    s << indent << "meanWindDirection: ";
    Printer<double>::stream(s, indent + "  ", v.meanWindDirection);
    s << indent << "meanCurrentSpeed: ";
    Printer<double>::stream(s, indent + "  ", v.meanCurrentSpeed);
    s << indent << "meanCurrentDirection: ";
    Printer<double>::stream(s, indent + "  ", v.meanCurrentDirection);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SIMULATOR_MESSAGES_MESSAGE_ENVIRONMENT_H
