// Auto-generated. Do not edit!

// (in-package mir_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let AngleMeasurment = require('./AngleMeasurment.js');

//-----------------------------------------------------------

class HookData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.angle = null;
      this.height = null;
      this.length = null;
      this.brake_state = null;
      this.gripper_state = null;
      this.height_state = null;
    }
    else {
      if (initObj.hasOwnProperty('angle')) {
        this.angle = initObj.angle
      }
      else {
        this.angle = new AngleMeasurment();
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0.0;
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0.0;
      }
      if (initObj.hasOwnProperty('brake_state')) {
        this.brake_state = initObj.brake_state
      }
      else {
        this.brake_state = 0;
      }
      if (initObj.hasOwnProperty('gripper_state')) {
        this.gripper_state = initObj.gripper_state
      }
      else {
        this.gripper_state = 0;
      }
      if (initObj.hasOwnProperty('height_state')) {
        this.height_state = initObj.height_state
      }
      else {
        this.height_state = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HookData
    // Serialize message field [angle]
    bufferOffset = AngleMeasurment.serialize(obj.angle, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.float64(obj.height, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.float64(obj.length, buffer, bufferOffset);
    // Serialize message field [brake_state]
    bufferOffset = _serializer.uint8(obj.brake_state, buffer, bufferOffset);
    // Serialize message field [gripper_state]
    bufferOffset = _serializer.uint8(obj.gripper_state, buffer, bufferOffset);
    // Serialize message field [height_state]
    bufferOffset = _serializer.uint8(obj.height_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HookData
    let len;
    let data = new HookData(null);
    // Deserialize message field [angle]
    data.angle = AngleMeasurment.deserialize(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [brake_state]
    data.brake_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gripper_state]
    data.gripper_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [height_state]
    data.height_state = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 35;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mir_msgs/HookData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6ea6712dc44c7a41f6da42b055292240';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    AngleMeasurment angle
    float64 height
    float64 length
    uint8 brake_state
    uint8 gripper_state
    uint8 height_state
    
    ================================================================================
    MSG: mir_msgs/AngleMeasurment
    float64 angle #radians
    time timestamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HookData(null);
    if (msg.angle !== undefined) {
      resolved.angle = AngleMeasurment.Resolve(msg.angle)
    }
    else {
      resolved.angle = new AngleMeasurment()
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0.0
    }

    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0.0
    }

    if (msg.brake_state !== undefined) {
      resolved.brake_state = msg.brake_state;
    }
    else {
      resolved.brake_state = 0
    }

    if (msg.gripper_state !== undefined) {
      resolved.gripper_state = msg.gripper_state;
    }
    else {
      resolved.gripper_state = 0
    }

    if (msg.height_state !== undefined) {
      resolved.height_state = msg.height_state;
    }
    else {
      resolved.height_state = 0
    }

    return resolved;
    }
};

module.exports = HookData;
