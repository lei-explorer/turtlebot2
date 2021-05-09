// Generated by gencpp from file kobuki_msgs/ButtonEvent.msg
// DO NOT EDIT!


#ifndef KOBUKI_MSGS_MESSAGE_BUTTONEVENT_H
#define KOBUKI_MSGS_MESSAGE_BUTTONEVENT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace kobuki_msgs
{
template <class ContainerAllocator>
struct ButtonEvent_
{
  typedef ButtonEvent_<ContainerAllocator> Type;

  ButtonEvent_()
    : button(0)
    , state(0)  {
    }
  ButtonEvent_(const ContainerAllocator& _alloc)
    : button(0)
    , state(0)  {
  (void)_alloc;
    }



   typedef uint8_t _button_type;
  _button_type button;

   typedef uint8_t _state_type;
  _state_type state;



  enum {
    Button0 = 0u,
    Button1 = 1u,
    Button2 = 2u,
    RELEASED = 0u,
    PRESSED = 1u,
  };


  typedef boost::shared_ptr< ::kobuki_msgs::ButtonEvent_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kobuki_msgs::ButtonEvent_<ContainerAllocator> const> ConstPtr;

}; // struct ButtonEvent_

typedef ::kobuki_msgs::ButtonEvent_<std::allocator<void> > ButtonEvent;

typedef boost::shared_ptr< ::kobuki_msgs::ButtonEvent > ButtonEventPtr;
typedef boost::shared_ptr< ::kobuki_msgs::ButtonEvent const> ButtonEventConstPtr;

// constants requiring out of line definition

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kobuki_msgs::ButtonEvent_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kobuki_msgs::ButtonEvent_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace kobuki_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'kobuki_msgs': ['/home/lzw/turtlebot2/src/kobuki_msgs/msg', '/home/lzw/turtlebot2/devel/share/kobuki_msgs/msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::kobuki_msgs::ButtonEvent_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kobuki_msgs::ButtonEvent_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kobuki_msgs::ButtonEvent_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kobuki_msgs::ButtonEvent_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kobuki_msgs::ButtonEvent_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kobuki_msgs::ButtonEvent_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kobuki_msgs::ButtonEvent_<ContainerAllocator> >
{
  static const char* value()
  {
    return "49eca512765dbdec759a79083ffcec8d";
  }

  static const char* value(const ::kobuki_msgs::ButtonEvent_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x49eca512765dbdecULL;
  static const uint64_t static_value2 = 0x759a79083ffcec8dULL;
};

template<class ContainerAllocator>
struct DataType< ::kobuki_msgs::ButtonEvent_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kobuki_msgs/ButtonEvent";
  }

  static const char* value(const ::kobuki_msgs::ButtonEvent_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kobuki_msgs::ButtonEvent_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Provides a button event.\n\
# This message is generated whenever a particular button is pressed or released.\n\
# Note that, despite buttons field on SensorState messages, state field is not a\n\
# bitmask, but the new state of a single button.\n\
\n\
uint8 Button0 = 0\n\
uint8 Button1 = 1\n\
uint8 Button2 = 2\n\
\n\
uint8 RELEASED = 0\n\
uint8 PRESSED  = 1\n\
\n\
uint8 button\n\
uint8 state\n\
";
  }

  static const char* value(const ::kobuki_msgs::ButtonEvent_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kobuki_msgs::ButtonEvent_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.button);
      stream.next(m.state);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ButtonEvent_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kobuki_msgs::ButtonEvent_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kobuki_msgs::ButtonEvent_<ContainerAllocator>& v)
  {
    s << indent << "button: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.button);
    s << indent << "state: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.state);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KOBUKI_MSGS_MESSAGE_BUTTONEVENT_H
