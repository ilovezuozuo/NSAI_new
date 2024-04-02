// Auto-generated. Do not edit!

// (in-package mir_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MirLocalPlannerPathTypes {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.path_type = null;
    }
    else {
      if (initObj.hasOwnProperty('path_type')) {
        this.path_type = initObj.path_type
      }
      else {
        this.path_type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MirLocalPlannerPathTypes
    // Serialize message field [path_type]
    bufferOffset = _serializer.uint8(obj.path_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MirLocalPlannerPathTypes
    let len;
    let data = new MirLocalPlannerPathTypes(null);
    // Deserialize message field [path_type]
    data.path_type = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mir_msgs/MirLocalPlannerPathTypes';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8623c1975cf9d124008b41d106f7a6df';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 REVERSE_TROLLEY_STANDARD=1
    uint8 REVERSE_TROLLEY_FAST=2
    uint8 REVERSE_TROLLEY_COMPACT=3
    
    
    uint8 path_type
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MirLocalPlannerPathTypes(null);
    if (msg.path_type !== undefined) {
      resolved.path_type = msg.path_type;
    }
    else {
      resolved.path_type = 0
    }

    return resolved;
    }
};

// Constants for message
MirLocalPlannerPathTypes.Constants = {
  REVERSE_TROLLEY_STANDARD: 1,
  REVERSE_TROLLEY_FAST: 2,
  REVERSE_TROLLEY_COMPACT: 3,
}

module.exports = MirLocalPlannerPathTypes;
