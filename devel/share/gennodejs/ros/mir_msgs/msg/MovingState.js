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

class MovingState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.moving_state = null;
    }
    else {
      if (initObj.hasOwnProperty('moving_state')) {
        this.moving_state = initObj.moving_state
      }
      else {
        this.moving_state = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MovingState
    // Serialize message field [moving_state]
    bufferOffset = _serializer.uint8(obj.moving_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MovingState
    let len;
    let data = new MovingState(null);
    // Deserialize message field [moving_state]
    data.moving_state = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mir_msgs/MovingState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '639d77af43d34fd858063576e3ed66eb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 UNKNOWN=0
    uint8 MOVING=1
    uint8 STOPPED=2
    uint8 STANDING_STILL=3
    
    uint8 moving_state	# Current robot moving state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MovingState(null);
    if (msg.moving_state !== undefined) {
      resolved.moving_state = msg.moving_state;
    }
    else {
      resolved.moving_state = 0
    }

    return resolved;
    }
};

// Constants for message
MovingState.Constants = {
  UNKNOWN: 0,
  MOVING: 1,
  STOPPED: 2,
  STANDING_STILL: 3,
}

module.exports = MovingState;
