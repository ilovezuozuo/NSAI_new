// Generated by gencpp from file mir_msgs/PalletLifterStatus.msg
// DO NOT EDIT!


#ifndef MIR_MSGS_MESSAGE_PALLETLIFTERSTATUS_H
#define MIR_MSGS_MESSAGE_PALLETLIFTERSTATUS_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace mir_msgs
{
template <class ContainerAllocator>
struct PalletLifterStatus_
{
  typedef PalletLifterStatus_<ContainerAllocator> Type;

  PalletLifterStatus_()
    : is_enabled(false)
    , state(0)  {
    }
  PalletLifterStatus_(const ContainerAllocator& _alloc)
    : is_enabled(false)
    , state(0)  {
  (void)_alloc;
    }



   typedef uint8_t _is_enabled_type;
  _is_enabled_type is_enabled;

   typedef uint8_t _state_type;
  _state_type state;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(PALLET_LIFT_STATE_DISABLED)
  #undef PALLET_LIFT_STATE_DISABLED
#endif
#if defined(_WIN32) && defined(PALLET_LIFT_STATE_MOVING)
  #undef PALLET_LIFT_STATE_MOVING
#endif
#if defined(_WIN32) && defined(PALLET_LIFT_STATE_DOWN)
  #undef PALLET_LIFT_STATE_DOWN
#endif
#if defined(_WIN32) && defined(PALLET_LIFT_STATE_UP)
  #undef PALLET_LIFT_STATE_UP
#endif

  enum {
    PALLET_LIFT_STATE_DISABLED = 0u,
    PALLET_LIFT_STATE_MOVING = 1u,
    PALLET_LIFT_STATE_DOWN = 2u,
    PALLET_LIFT_STATE_UP = 3u,
  };


  typedef boost::shared_ptr< ::mir_msgs::PalletLifterStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mir_msgs::PalletLifterStatus_<ContainerAllocator> const> ConstPtr;

}; // struct PalletLifterStatus_

typedef ::mir_msgs::PalletLifterStatus_<std::allocator<void> > PalletLifterStatus;

typedef boost::shared_ptr< ::mir_msgs::PalletLifterStatus > PalletLifterStatusPtr;
typedef boost::shared_ptr< ::mir_msgs::PalletLifterStatus const> PalletLifterStatusConstPtr;

// constants requiring out of line definition

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mir_msgs::PalletLifterStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mir_msgs::PalletLifterStatus_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mir_msgs::PalletLifterStatus_<ContainerAllocator1> & lhs, const ::mir_msgs::PalletLifterStatus_<ContainerAllocator2> & rhs)
{
  return lhs.is_enabled == rhs.is_enabled &&
    lhs.state == rhs.state;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mir_msgs::PalletLifterStatus_<ContainerAllocator1> & lhs, const ::mir_msgs::PalletLifterStatus_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mir_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mir_msgs::PalletLifterStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mir_msgs::PalletLifterStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mir_msgs::PalletLifterStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mir_msgs::PalletLifterStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mir_msgs::PalletLifterStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mir_msgs::PalletLifterStatus_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mir_msgs::PalletLifterStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1b1c1243f8d5de94c78546d13226600e";
  }

  static const char* value(const ::mir_msgs::PalletLifterStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1b1c1243f8d5de94ULL;
  static const uint64_t static_value2 = 0xc78546d13226600eULL;
};

template<class ContainerAllocator>
struct DataType< ::mir_msgs::PalletLifterStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mir_msgs/PalletLifterStatus";
  }

  static const char* value(const ::mir_msgs::PalletLifterStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mir_msgs::PalletLifterStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 PALLET_LIFT_STATE_DISABLED = 0\n"
"uint8 PALLET_LIFT_STATE_MOVING = 1\n"
"uint8 PALLET_LIFT_STATE_DOWN = 2\n"
"uint8 PALLET_LIFT_STATE_UP = 3\n"
"\n"
"bool is_enabled\n"
"uint8 state\n"
;
  }

  static const char* value(const ::mir_msgs::PalletLifterStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mir_msgs::PalletLifterStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.is_enabled);
      stream.next(m.state);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PalletLifterStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mir_msgs::PalletLifterStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mir_msgs::PalletLifterStatus_<ContainerAllocator>& v)
  {
    s << indent << "is_enabled: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.is_enabled);
    s << indent << "state: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.state);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MIR_MSGS_MESSAGE_PALLETLIFTERSTATUS_H