// Generated by gencpp from file robot_nodes/action.msg
// DO NOT EDIT!


#ifndef ROBOT_NODES_MESSAGE_ACTION_H
#define ROBOT_NODES_MESSAGE_ACTION_H

#include <ros/service_traits.h>


#include <robot_nodes/actionRequest.h>
#include <robot_nodes/actionResponse.h>


namespace robot_nodes
{

struct action
{

typedef actionRequest Request;
typedef actionResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct action
} // namespace robot_nodes


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::robot_nodes::action > {
  static const char* value()
  {
    return "2c9f29db40e0d32cd3790aa92a5e2750";
  }

  static const char* value(const ::robot_nodes::action&) { return value(); }
};

template<>
struct DataType< ::robot_nodes::action > {
  static const char* value()
  {
    return "robot_nodes/action";
  }

  static const char* value(const ::robot_nodes::action&) { return value(); }
};


// service_traits::MD5Sum< ::robot_nodes::actionRequest> should match 
// service_traits::MD5Sum< ::robot_nodes::action > 
template<>
struct MD5Sum< ::robot_nodes::actionRequest>
{
  static const char* value()
  {
    return MD5Sum< ::robot_nodes::action >::value();
  }
  static const char* value(const ::robot_nodes::actionRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::robot_nodes::actionRequest> should match 
// service_traits::DataType< ::robot_nodes::action > 
template<>
struct DataType< ::robot_nodes::actionRequest>
{
  static const char* value()
  {
    return DataType< ::robot_nodes::action >::value();
  }
  static const char* value(const ::robot_nodes::actionRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::robot_nodes::actionResponse> should match 
// service_traits::MD5Sum< ::robot_nodes::action > 
template<>
struct MD5Sum< ::robot_nodes::actionResponse>
{
  static const char* value()
  {
    return MD5Sum< ::robot_nodes::action >::value();
  }
  static const char* value(const ::robot_nodes::actionResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::robot_nodes::actionResponse> should match 
// service_traits::DataType< ::robot_nodes::action > 
template<>
struct DataType< ::robot_nodes::actionResponse>
{
  static const char* value()
  {
    return DataType< ::robot_nodes::action >::value();
  }
  static const char* value(const ::robot_nodes::actionResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBOT_NODES_MESSAGE_ACTION_H
