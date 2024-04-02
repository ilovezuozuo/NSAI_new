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

class SkidDetectionDiff {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.time_stamp = null;
      this.enc_acc_x = null;
      this.enc_acc_y = null;
      this.enc_rot_th = null;
      this.imu_acc_x = null;
      this.imu_acc_y = null;
      this.imu_rot_th = null;
      this.diff_acc_x = null;
      this.diff_acc_y = null;
      this.diff_rot_th = null;
    }
    else {
      if (initObj.hasOwnProperty('time_stamp')) {
        this.time_stamp = initObj.time_stamp
      }
      else {
        this.time_stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('enc_acc_x')) {
        this.enc_acc_x = initObj.enc_acc_x
      }
      else {
        this.enc_acc_x = 0.0;
      }
      if (initObj.hasOwnProperty('enc_acc_y')) {
        this.enc_acc_y = initObj.enc_acc_y
      }
      else {
        this.enc_acc_y = 0.0;
      }
      if (initObj.hasOwnProperty('enc_rot_th')) {
        this.enc_rot_th = initObj.enc_rot_th
      }
      else {
        this.enc_rot_th = 0.0;
      }
      if (initObj.hasOwnProperty('imu_acc_x')) {
        this.imu_acc_x = initObj.imu_acc_x
      }
      else {
        this.imu_acc_x = 0.0;
      }
      if (initObj.hasOwnProperty('imu_acc_y')) {
        this.imu_acc_y = initObj.imu_acc_y
      }
      else {
        this.imu_acc_y = 0.0;
      }
      if (initObj.hasOwnProperty('imu_rot_th')) {
        this.imu_rot_th = initObj.imu_rot_th
      }
      else {
        this.imu_rot_th = 0.0;
      }
      if (initObj.hasOwnProperty('diff_acc_x')) {
        this.diff_acc_x = initObj.diff_acc_x
      }
      else {
        this.diff_acc_x = 0.0;
      }
      if (initObj.hasOwnProperty('diff_acc_y')) {
        this.diff_acc_y = initObj.diff_acc_y
      }
      else {
        this.diff_acc_y = 0.0;
      }
      if (initObj.hasOwnProperty('diff_rot_th')) {
        this.diff_rot_th = initObj.diff_rot_th
      }
      else {
        this.diff_rot_th = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SkidDetectionDiff
    // Serialize message field [time_stamp]
    bufferOffset = _serializer.time(obj.time_stamp, buffer, bufferOffset);
    // Serialize message field [enc_acc_x]
    bufferOffset = _serializer.float64(obj.enc_acc_x, buffer, bufferOffset);
    // Serialize message field [enc_acc_y]
    bufferOffset = _serializer.float64(obj.enc_acc_y, buffer, bufferOffset);
    // Serialize message field [enc_rot_th]
    bufferOffset = _serializer.float64(obj.enc_rot_th, buffer, bufferOffset);
    // Serialize message field [imu_acc_x]
    bufferOffset = _serializer.float64(obj.imu_acc_x, buffer, bufferOffset);
    // Serialize message field [imu_acc_y]
    bufferOffset = _serializer.float64(obj.imu_acc_y, buffer, bufferOffset);
    // Serialize message field [imu_rot_th]
    bufferOffset = _serializer.float64(obj.imu_rot_th, buffer, bufferOffset);
    // Serialize message field [diff_acc_x]
    bufferOffset = _serializer.float64(obj.diff_acc_x, buffer, bufferOffset);
    // Serialize message field [diff_acc_y]
    bufferOffset = _serializer.float64(obj.diff_acc_y, buffer, bufferOffset);
    // Serialize message field [diff_rot_th]
    bufferOffset = _serializer.float64(obj.diff_rot_th, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SkidDetectionDiff
    let len;
    let data = new SkidDetectionDiff(null);
    // Deserialize message field [time_stamp]
    data.time_stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [enc_acc_x]
    data.enc_acc_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [enc_acc_y]
    data.enc_acc_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [enc_rot_th]
    data.enc_rot_th = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [imu_acc_x]
    data.imu_acc_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [imu_acc_y]
    data.imu_acc_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [imu_rot_th]
    data.imu_rot_th = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [diff_acc_x]
    data.diff_acc_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [diff_acc_y]
    data.diff_acc_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [diff_rot_th]
    data.diff_rot_th = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 80;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mir_msgs/SkidDetectionDiff';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd37dfc4b9ebb57cf8f2fa9160507f6d5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time time_stamp
    float64 enc_acc_x
    float64 enc_acc_y
    float64 enc_rot_th
    
    
    float64 imu_acc_x
    float64 imu_acc_y
    float64 imu_rot_th
    
    
    float64 diff_acc_x
    float64 diff_acc_y
    float64 diff_rot_th
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SkidDetectionDiff(null);
    if (msg.time_stamp !== undefined) {
      resolved.time_stamp = msg.time_stamp;
    }
    else {
      resolved.time_stamp = {secs: 0, nsecs: 0}
    }

    if (msg.enc_acc_x !== undefined) {
      resolved.enc_acc_x = msg.enc_acc_x;
    }
    else {
      resolved.enc_acc_x = 0.0
    }

    if (msg.enc_acc_y !== undefined) {
      resolved.enc_acc_y = msg.enc_acc_y;
    }
    else {
      resolved.enc_acc_y = 0.0
    }

    if (msg.enc_rot_th !== undefined) {
      resolved.enc_rot_th = msg.enc_rot_th;
    }
    else {
      resolved.enc_rot_th = 0.0
    }

    if (msg.imu_acc_x !== undefined) {
      resolved.imu_acc_x = msg.imu_acc_x;
    }
    else {
      resolved.imu_acc_x = 0.0
    }

    if (msg.imu_acc_y !== undefined) {
      resolved.imu_acc_y = msg.imu_acc_y;
    }
    else {
      resolved.imu_acc_y = 0.0
    }

    if (msg.imu_rot_th !== undefined) {
      resolved.imu_rot_th = msg.imu_rot_th;
    }
    else {
      resolved.imu_rot_th = 0.0
    }

    if (msg.diff_acc_x !== undefined) {
      resolved.diff_acc_x = msg.diff_acc_x;
    }
    else {
      resolved.diff_acc_x = 0.0
    }

    if (msg.diff_acc_y !== undefined) {
      resolved.diff_acc_y = msg.diff_acc_y;
    }
    else {
      resolved.diff_acc_y = 0.0
    }

    if (msg.diff_rot_th !== undefined) {
      resolved.diff_rot_th = msg.diff_rot_th;
    }
    else {
      resolved.diff_rot_th = 0.0
    }

    return resolved;
    }
};

module.exports = SkidDetectionDiff;
