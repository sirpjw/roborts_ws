// Auto-generated. Do not edit!

// (in-package roborts_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ShootControl {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.yaw_angle = null;
      this.pitch_angle = null;
    }
    else {
      if (initObj.hasOwnProperty('yaw_angle')) {
        this.yaw_angle = initObj.yaw_angle
      }
      else {
        this.yaw_angle = 0.0;
      }
      if (initObj.hasOwnProperty('pitch_angle')) {
        this.pitch_angle = initObj.pitch_angle
      }
      else {
        this.pitch_angle = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ShootControl
    // Serialize message field [yaw_angle]
    bufferOffset = _serializer.float64(obj.yaw_angle, buffer, bufferOffset);
    // Serialize message field [pitch_angle]
    bufferOffset = _serializer.float64(obj.pitch_angle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ShootControl
    let len;
    let data = new ShootControl(null);
    // Deserialize message field [yaw_angle]
    data.yaw_angle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pitch_angle]
    data.pitch_angle = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roborts_msgs/ShootControl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd142b662823bdbaf886a74b018aab3bd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 调试
    float64 yaw_angle
    float64 pitch_angle
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ShootControl(null);
    if (msg.yaw_angle !== undefined) {
      resolved.yaw_angle = msg.yaw_angle;
    }
    else {
      resolved.yaw_angle = 0.0
    }

    if (msg.pitch_angle !== undefined) {
      resolved.pitch_angle = msg.pitch_angle;
    }
    else {
      resolved.pitch_angle = 0.0
    }

    return resolved;
    }
};

module.exports = ShootControl;
