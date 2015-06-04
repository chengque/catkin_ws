// Generated by gencpp from file mavros/FileRemoveDir.msg
// DO NOT EDIT!


#ifndef MAVROS_MESSAGE_FILEREMOVEDIR_H
#define MAVROS_MESSAGE_FILEREMOVEDIR_H

#include <ros/service_traits.h>


#include <mavros/FileRemoveDirRequest.h>
#include <mavros/FileRemoveDirResponse.h>


namespace mavros
{

struct FileRemoveDir
{

typedef FileRemoveDirRequest Request;
typedef FileRemoveDirResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct FileRemoveDir
} // namespace mavros


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::mavros::FileRemoveDir > {
  static const char* value()
  {
    return "f140c5ef05b00c3cfc30d5a2061b4d63";
  }

  static const char* value(const ::mavros::FileRemoveDir&) { return value(); }
};

template<>
struct DataType< ::mavros::FileRemoveDir > {
  static const char* value()
  {
    return "mavros/FileRemoveDir";
  }

  static const char* value(const ::mavros::FileRemoveDir&) { return value(); }
};


// service_traits::MD5Sum< ::mavros::FileRemoveDirRequest> should match 
// service_traits::MD5Sum< ::mavros::FileRemoveDir > 
template<>
struct MD5Sum< ::mavros::FileRemoveDirRequest>
{
  static const char* value()
  {
    return MD5Sum< ::mavros::FileRemoveDir >::value();
  }
  static const char* value(const ::mavros::FileRemoveDirRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::mavros::FileRemoveDirRequest> should match 
// service_traits::DataType< ::mavros::FileRemoveDir > 
template<>
struct DataType< ::mavros::FileRemoveDirRequest>
{
  static const char* value()
  {
    return DataType< ::mavros::FileRemoveDir >::value();
  }
  static const char* value(const ::mavros::FileRemoveDirRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::mavros::FileRemoveDirResponse> should match 
// service_traits::MD5Sum< ::mavros::FileRemoveDir > 
template<>
struct MD5Sum< ::mavros::FileRemoveDirResponse>
{
  static const char* value()
  {
    return MD5Sum< ::mavros::FileRemoveDir >::value();
  }
  static const char* value(const ::mavros::FileRemoveDirResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::mavros::FileRemoveDirResponse> should match 
// service_traits::DataType< ::mavros::FileRemoveDir > 
template<>
struct DataType< ::mavros::FileRemoveDirResponse>
{
  static const char* value()
  {
    return DataType< ::mavros::FileRemoveDir >::value();
  }
  static const char* value(const ::mavros::FileRemoveDirResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MAVROS_MESSAGE_FILEREMOVEDIR_H