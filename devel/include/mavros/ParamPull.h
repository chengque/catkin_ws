// Generated by gencpp from file mavros/ParamPull.msg
// DO NOT EDIT!


#ifndef MAVROS_MESSAGE_PARAMPULL_H
#define MAVROS_MESSAGE_PARAMPULL_H

#include <ros/service_traits.h>


#include <mavros/ParamPullRequest.h>
#include <mavros/ParamPullResponse.h>


namespace mavros
{

struct ParamPull
{

typedef ParamPullRequest Request;
typedef ParamPullResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct ParamPull
} // namespace mavros


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::mavros::ParamPull > {
  static const char* value()
  {
    return "c9628aea2226088718fd240fbd62afc7";
  }

  static const char* value(const ::mavros::ParamPull&) { return value(); }
};

template<>
struct DataType< ::mavros::ParamPull > {
  static const char* value()
  {
    return "mavros/ParamPull";
  }

  static const char* value(const ::mavros::ParamPull&) { return value(); }
};


// service_traits::MD5Sum< ::mavros::ParamPullRequest> should match 
// service_traits::MD5Sum< ::mavros::ParamPull > 
template<>
struct MD5Sum< ::mavros::ParamPullRequest>
{
  static const char* value()
  {
    return MD5Sum< ::mavros::ParamPull >::value();
  }
  static const char* value(const ::mavros::ParamPullRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::mavros::ParamPullRequest> should match 
// service_traits::DataType< ::mavros::ParamPull > 
template<>
struct DataType< ::mavros::ParamPullRequest>
{
  static const char* value()
  {
    return DataType< ::mavros::ParamPull >::value();
  }
  static const char* value(const ::mavros::ParamPullRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::mavros::ParamPullResponse> should match 
// service_traits::MD5Sum< ::mavros::ParamPull > 
template<>
struct MD5Sum< ::mavros::ParamPullResponse>
{
  static const char* value()
  {
    return MD5Sum< ::mavros::ParamPull >::value();
  }
  static const char* value(const ::mavros::ParamPullResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::mavros::ParamPullResponse> should match 
// service_traits::DataType< ::mavros::ParamPull > 
template<>
struct DataType< ::mavros::ParamPullResponse>
{
  static const char* value()
  {
    return DataType< ::mavros::ParamPull >::value();
  }
  static const char* value(const ::mavros::ParamPullResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MAVROS_MESSAGE_PARAMPULL_H