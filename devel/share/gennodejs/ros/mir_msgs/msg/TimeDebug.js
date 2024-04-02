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

class TimeDebug {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.description = null;
      this.time_elapsed = null;
    }
    else {
      if (initObj.hasOwnProperty('description')) {
        this.description = initObj.description
      }
      else {
        this.description = [];
      }
      if (initObj.hasOwnProperty('time_elapsed')) {
        this.time_elapsed = initObj.time_elapsed
      }
      else {
        this.time_elapsed = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TimeDebug
    // Serialize message field [description]
    bufferOffset = _arraySerializer.string(obj.description, buffer, bufferOffset, null);
    // Serialize message field [time_elapsed]
    bufferOffset = _arraySerializer.float64(obj.time_elapsed, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TimeDebug
    let len;
    let data = new TimeDebug(null);
    // Deserialize message field [description]
    data.description = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [time_elapsed]
    data.time_elapsed = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.description.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += 8 * object.time_elapsed.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mir_msgs/TimeDebug';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '28aa4a0605ad62536b39104e60b07150';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] description
    float64[] time_elapsed
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TimeDebug(null);
    if (msg.description !== undefined) {
      resolved.description = msg.description;
    }
    else {
      resolved.description = []
    }

    if (msg.time_elapsed !== undefined) {
      resolved.time_elapsed = msg.time_elapsed;
    }
    else {
      resolved.time_elapsed = []
    }

    return resolved;
    }
};

module.exports = TimeDebug;
