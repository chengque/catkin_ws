// Generated by gencpp from file mavros/CommandTOLRequest.msg
// DO NOT EDIT!


#ifndef MAVROS_MESSAGE_COMMANDTOLREQUEST_H
#define MAVROS_MESSAGE_COMMANDTOLREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace mavros
{
template <class ContainerAllocator>
struct CommandTOLRequest_
{
  typedef CommandTOLRequest_<ContainerAllocator> Type;

  CommandTOLRequest_()
    : min_pitch(0.0)
    , yaw(0.0)
    , latitude(0.0)
    , longitude(0.0)
    , altitude(0.0)  {
    }
  CommandTOLRequest_(const ContainerAllocator& _alloc)
    : min_pitch(0.0)
    , yaw(0.0)
    , latitude(0.0)
    , longitude(0.0)
    , altitude(0.0)  {
    }



   typedef float _min_pitch_type;
  _min_pitch_type min_pitch;

   typedef float _yaw_type;
  _yaw_type yaw;

   typedef float _latitude_type;
  _latitude_type latitude;

   typedef float _longitude_type;
  _longitude_type longitude;

   typedef float _altitude_type;
  _altitude_type altitude;




  typedef boost::shared_ptr< ::mavros::CommandTOLRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mavros::CommandTOLRequest_<ContainerAllocator> const> ConstPtr;

}; // struct CommandTOLRequest_

typedef ::mavros::CommandTOLRequest_<std::allocator<void> > CommandTOLRequest;

typedef boost::shared_ptr< ::mavros::CommandTOLRequest > CommandTOLRequestPtr;
typedef boost::shared_ptr< ::mavros::CommandTOLRequest const> CommandTOLRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mavros::CommandTOLRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mavros::CommandTOLRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace mavros

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/jade/share/std_msgs/cmake/../msg'], 'mavros': ['/home/chengque/catkin_ws/src/mavros_pkg/mavros/msg'], 'geometry_msgs': ['/opt/ros/jade/share/geometry_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/jade/share/sensor_msgs/cmake/../msg'], 'diagnostic_msgs': ['/opt/ros/jade/share/diagnostic_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::mavros::CommandTOLRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mavros::CommandTOLRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mavros::CommandTOLRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mavros::CommandTOLRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mavros::CommandTOLRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mavros::CommandTOLRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mavros::CommandTOLRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5aec7e34bcfe9ec68949aebae7bcd1ec";
  }

  static const char* value(const ::mavros::CommandTOLRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5aec7e34bcfe9ec6ULL;
  static const uint64_t static_value2 = 0x8949aebae7bcd1ecULL;
};

template<class ContainerAllocator>
struct DataType< ::mavros::CommandTOLRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mavros/CommandTOLRequest";
  }

  static const char* value(const ::mavros::CommandTOLRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mavros::CommandTOLRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
\n\
float32 min_pitch\n\
float32 yaw\n\
float32 latitude\n\
float32 longitude\n\
float32 altitude\n\
";
  }

  static const char* value(const ::mavros::CommandTOLRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mavros::CommandTOLRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.min_pitch);
      stream.next(m.yaw);
      stream.next(m.latitude);
      stream.next(m.longitude);
      stream.next(m.altitude);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct CommandTOLRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mavros::CommandTOLRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mavros::CommandTOLRequest_<ContainerAllocator>& v)
  {
    s << indent << "min_pitch: ";
    Printer<float>::stream(s, indent + "  ", v.min_pitch);
    s << indent << "yaw: ";
    Printer<float>::stream(s, indent + "  ", v.yaw);
    s << indent << "latitude: ";
    Printer<float>::stream(s, indent + "  ", v.latitude);
    s << indent << "longitude: ";
    Printer<float>::stream(s, indent + "  ", v.longitude);
    s << indent << "altitude: ";
    Printer<float>::stream(s, indent + "  ", v.altitude);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MAVROS_MESSAGE_COMMANDTOLREQUEST_H
