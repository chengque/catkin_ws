// Generated by gencpp from file mavros/CommandHomeRequest.msg
// DO NOT EDIT!


#ifndef MAVROS_MESSAGE_COMMANDHOMEREQUEST_H
#define MAVROS_MESSAGE_COMMANDHOMEREQUEST_H


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
struct CommandHomeRequest_
{
  typedef CommandHomeRequest_<ContainerAllocator> Type;

  CommandHomeRequest_()
    : current_gps(false)
    , latitude(0.0)
    , longitude(0.0)
    , altitude(0.0)  {
    }
  CommandHomeRequest_(const ContainerAllocator& _alloc)
    : current_gps(false)
    , latitude(0.0)
    , longitude(0.0)
    , altitude(0.0)  {
    }



   typedef uint8_t _current_gps_type;
  _current_gps_type current_gps;

   typedef float _latitude_type;
  _latitude_type latitude;

   typedef float _longitude_type;
  _longitude_type longitude;

   typedef float _altitude_type;
  _altitude_type altitude;




  typedef boost::shared_ptr< ::mavros::CommandHomeRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mavros::CommandHomeRequest_<ContainerAllocator> const> ConstPtr;

}; // struct CommandHomeRequest_

typedef ::mavros::CommandHomeRequest_<std::allocator<void> > CommandHomeRequest;

typedef boost::shared_ptr< ::mavros::CommandHomeRequest > CommandHomeRequestPtr;
typedef boost::shared_ptr< ::mavros::CommandHomeRequest const> CommandHomeRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mavros::CommandHomeRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mavros::CommandHomeRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::mavros::CommandHomeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mavros::CommandHomeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mavros::CommandHomeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mavros::CommandHomeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mavros::CommandHomeRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mavros::CommandHomeRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mavros::CommandHomeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4afab8683774a6cfa862aace483f5274";
  }

  static const char* value(const ::mavros::CommandHomeRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4afab8683774a6cfULL;
  static const uint64_t static_value2 = 0xa862aace483f5274ULL;
};

template<class ContainerAllocator>
struct DataType< ::mavros::CommandHomeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mavros/CommandHomeRequest";
  }

  static const char* value(const ::mavros::CommandHomeRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mavros::CommandHomeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
\n\
bool current_gps\n\
float32 latitude\n\
float32 longitude\n\
float32 altitude\n\
";
  }

  static const char* value(const ::mavros::CommandHomeRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mavros::CommandHomeRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.current_gps);
      stream.next(m.latitude);
      stream.next(m.longitude);
      stream.next(m.altitude);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct CommandHomeRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mavros::CommandHomeRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mavros::CommandHomeRequest_<ContainerAllocator>& v)
  {
    s << indent << "current_gps: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.current_gps);
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

#endif // MAVROS_MESSAGE_COMMANDHOMEREQUEST_H
