// Auto-generated. Do not edit!

// (in-package mir_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class ResourceState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.assigned = null;
      this.type = null;
      this.path_idx = null;
      this.distance = null;
      this.collision_point = null;
      this.resource_geometry = null;
      this.queue = null;
      this.name = null;
      this.guid = null;
    }
    else {
      if (initObj.hasOwnProperty('assigned')) {
        this.assigned = initObj.assigned
      }
      else {
        this.assigned = [];
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('path_idx')) {
        this.path_idx = initObj.path_idx
      }
      else {
        this.path_idx = 0;
      }
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0.0;
      }
      if (initObj.hasOwnProperty('collision_point')) {
        this.collision_point = initObj.collision_point
      }
      else {
        this.collision_point = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('resource_geometry')) {
        this.resource_geometry = initObj.resource_geometry
      }
      else {
        this.resource_geometry = [];
      }
      if (initObj.hasOwnProperty('queue')) {
        this.queue = initObj.queue
      }
      else {
        this.queue = [];
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('guid')) {
        this.guid = initObj.guid
      }
      else {
        this.guid = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ResourceState
    // Serialize message field [assigned]
    bufferOffset = _arraySerializer.string(obj.assigned, buffer, bufferOffset, null);
    // Serialize message field [type]
    bufferOffset = _serializer.uint32(obj.type, buffer, bufferOffset);
    // Serialize message field [path_idx]
    bufferOffset = _serializer.uint32(obj.path_idx, buffer, bufferOffset);
    // Serialize message field [distance]
    bufferOffset = _serializer.float32(obj.distance, buffer, bufferOffset);
    // Serialize message field [collision_point]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.collision_point, buffer, bufferOffset);
    // Serialize message field [resource_geometry]
    // Serialize the length for message field [resource_geometry]
    bufferOffset = _serializer.uint32(obj.resource_geometry.length, buffer, bufferOffset);
    obj.resource_geometry.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [queue]
    bufferOffset = _arraySerializer.string(obj.queue, buffer, bufferOffset, null);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [guid]
    bufferOffset = _serializer.string(obj.guid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ResourceState
    let len;
    let data = new ResourceState(null);
    // Deserialize message field [assigned]
    data.assigned = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [type]
    data.type = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [path_idx]
    data.path_idx = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [distance]
    data.distance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [collision_point]
    data.collision_point = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [resource_geometry]
    // Deserialize array length for message field [resource_geometry]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.resource_geometry = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.resource_geometry[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [queue]
    data.queue = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [guid]
    data.guid = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.assigned.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += 24 * object.resource_geometry.length;
    object.queue.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += _getByteLength(object.name);
    length += _getByteLength(object.guid);
    return length + 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mir_msgs/ResourceState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '57fcc2e24446160c25e1fac48251c1da';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] assigned # A list of IPs of all assigned robots (Areas can have more than one robot assigned at a time)
    uint32 ROBOT_POSITION=0
    uint32 STAGING_POSITION=1
    uint32 CHARGING_STATION=2
    uint32 AREA=3
    uint32 ELEVATOR_ENTRY_POSITION=26
    uint32 ELEVATOR_POSITION=25
    uint32 type # The resource type
    uint32 path_idx # The index from the global path in which the robot gets into the position
    float32 distance # The distance from the robot to the resource
    geometry_msgs/Point collision_point # The collision point with the resource
    geometry_msgs/Point[] resource_geometry # The resource_geometry
    string[] queue # The queue for a resource. It's a list of robots ips.
    string name # The name of the resource
    string guid # The guid of the resource
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ResourceState(null);
    if (msg.assigned !== undefined) {
      resolved.assigned = msg.assigned;
    }
    else {
      resolved.assigned = []
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.path_idx !== undefined) {
      resolved.path_idx = msg.path_idx;
    }
    else {
      resolved.path_idx = 0
    }

    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0.0
    }

    if (msg.collision_point !== undefined) {
      resolved.collision_point = geometry_msgs.msg.Point.Resolve(msg.collision_point)
    }
    else {
      resolved.collision_point = new geometry_msgs.msg.Point()
    }

    if (msg.resource_geometry !== undefined) {
      resolved.resource_geometry = new Array(msg.resource_geometry.length);
      for (let i = 0; i < resolved.resource_geometry.length; ++i) {
        resolved.resource_geometry[i] = geometry_msgs.msg.Point.Resolve(msg.resource_geometry[i]);
      }
    }
    else {
      resolved.resource_geometry = []
    }

    if (msg.queue !== undefined) {
      resolved.queue = msg.queue;
    }
    else {
      resolved.queue = []
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.guid !== undefined) {
      resolved.guid = msg.guid;
    }
    else {
      resolved.guid = ''
    }

    return resolved;
    }
};

// Constants for message
ResourceState.Constants = {
  ROBOT_POSITION: 0,
  STAGING_POSITION: 1,
  CHARGING_STATION: 2,
  AREA: 3,
  ELEVATOR_ENTRY_POSITION: 26,
  ELEVATOR_POSITION: 25,
}

module.exports = ResourceState;
