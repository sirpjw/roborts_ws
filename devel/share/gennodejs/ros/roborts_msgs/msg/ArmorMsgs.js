// Auto-generated. Do not edit!

// (in-package roborts_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ArmorMsg = require('./ArmorMsg.js');

//-----------------------------------------------------------

class ArmorMsgs {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.detected = null;
      this.detected_info = null;
    }
    else {
      if (initObj.hasOwnProperty('detected')) {
        this.detected = initObj.detected
      }
      else {
        this.detected = false;
      }
      if (initObj.hasOwnProperty('detected_info')) {
        this.detected_info = initObj.detected_info
      }
      else {
        this.detected_info = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ArmorMsgs
    // Serialize message field [detected]
    bufferOffset = _serializer.bool(obj.detected, buffer, bufferOffset);
    // Serialize message field [detected_info]
    // Serialize the length for message field [detected_info]
    bufferOffset = _serializer.uint32(obj.detected_info.length, buffer, bufferOffset);
    obj.detected_info.forEach((val) => {
      bufferOffset = ArmorMsg.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ArmorMsgs
    let len;
    let data = new ArmorMsgs(null);
    // Deserialize message field [detected]
    data.detected = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [detected_info]
    // Deserialize array length for message field [detected_info]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.detected_info = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.detected_info[i] = ArmorMsg.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 33 * object.detected_info.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roborts_msgs/ArmorMsgs';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7abd3895cfb29c9d0395c412cceb145f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool detected
    ArmorMsg[] detected_info
    ================================================================================
    MSG: roborts_msgs/ArmorMsg
    bool robot_detected
    bool armor_detected
    int8 robot_pose
    int8 color # 0 RED 1 BLUE
    int8 id # 1 2
    int32 area # area of the armor
    geometry_msgs/Point pose
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
    const resolved = new ArmorMsgs(null);
    if (msg.detected !== undefined) {
      resolved.detected = msg.detected;
    }
    else {
      resolved.detected = false
    }

    if (msg.detected_info !== undefined) {
      resolved.detected_info = new Array(msg.detected_info.length);
      for (let i = 0; i < resolved.detected_info.length; ++i) {
        resolved.detected_info[i] = ArmorMsg.Resolve(msg.detected_info[i]);
      }
    }
    else {
      resolved.detected_info = []
    }

    return resolved;
    }
};

module.exports = ArmorMsgs;
