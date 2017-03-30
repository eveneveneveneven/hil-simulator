// Generated by gencpp from file environment/obstacleUpdate.msg
// DO NOT EDIT!


#ifndef ENVIRONMENT_MESSAGE_OBSTACLEUPDATE_H
#define ENVIRONMENT_MESSAGE_OBSTACLEUPDATE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace environment
{
template <class ContainerAllocator>
struct obstacleUpdate_
{
  typedef obstacleUpdate_<ContainerAllocator> Type;

  obstacleUpdate_()
    : msgType()
    , obstacleID()
    , x(0.0)
    , y(0.0)
    , psi(0.0)  {
    }
  obstacleUpdate_(const ContainerAllocator& _alloc)
    : msgType(_alloc)
    , obstacleID(_alloc)
    , x(0.0)
    , y(0.0)
    , psi(0.0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _msgType_type;
  _msgType_type msgType;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _obstacleID_type;
  _obstacleID_type obstacleID;

   typedef double _x_type;
  _x_type x;

   typedef double _y_type;
  _y_type y;

   typedef double _psi_type;
  _psi_type psi;




  typedef boost::shared_ptr< ::environment::obstacleUpdate_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::environment::obstacleUpdate_<ContainerAllocator> const> ConstPtr;

}; // struct obstacleUpdate_

typedef ::environment::obstacleUpdate_<std::allocator<void> > obstacleUpdate;

typedef boost::shared_ptr< ::environment::obstacleUpdate > obstacleUpdatePtr;
typedef boost::shared_ptr< ::environment::obstacleUpdate const> obstacleUpdateConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::environment::obstacleUpdate_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::environment::obstacleUpdate_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace environment

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'environment': ['/home/d943/Dropbox/Master/catkin_ws/src/environment/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::environment::obstacleUpdate_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::environment::obstacleUpdate_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::environment::obstacleUpdate_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::environment::obstacleUpdate_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::environment::obstacleUpdate_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::environment::obstacleUpdate_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::environment::obstacleUpdate_<ContainerAllocator> >
{
  static const char* value()
  {
    return "450f2d7371e74d78202d24aa0ccdfb5b";
  }

  static const char* value(const ::environment::obstacleUpdate_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x450f2d7371e74d78ULL;
  static const uint64_t static_value2 = 0x202d24aa0ccdfb5bULL;
};

template<class ContainerAllocator>
struct DataType< ::environment::obstacleUpdate_<ContainerAllocator> >
{
  static const char* value()
  {
    return "environment/obstacleUpdate";
  }

  static const char* value(const ::environment::obstacleUpdate_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::environment::obstacleUpdate_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string msgType\n\
string obstacleID\n\
float64 x\n\
float64 y\n\
float64 psi\n\
";
  }

  static const char* value(const ::environment::obstacleUpdate_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::environment::obstacleUpdate_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.msgType);
      stream.next(m.obstacleID);
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.psi);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct obstacleUpdate_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::environment::obstacleUpdate_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::environment::obstacleUpdate_<ContainerAllocator>& v)
  {
    s << indent << "msgType: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.msgType);
    s << indent << "obstacleID: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.obstacleID);
    s << indent << "x: ";
    Printer<double>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<double>::stream(s, indent + "  ", v.y);
    s << indent << "psi: ";
    Printer<double>::stream(s, indent + "  ", v.psi);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ENVIRONMENT_MESSAGE_OBSTACLEUPDATE_H
