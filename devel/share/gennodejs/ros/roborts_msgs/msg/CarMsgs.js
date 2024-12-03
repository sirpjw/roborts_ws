// Auto-generated. Do not edit!

// (in-package roborts_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CarMsg = require('./CarMsg.js');

//-----------------------------------------------------------

class CarMsgs {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp_guard = null;
      this.car_msgs = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp_guard')) {
        this.stamp_guard = initObj.stamp_guard
      }
      else {
        this.stamp_guard = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('car_msgs')) {
        this.car_msgs = initObj.car_msgs
      }
      else {
        this.car_msgs = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CarMsgs
    // Serialize message field [stamp_guard]
    bufferOffset = _serializer.time(obj.stamp_guard, buffer, bufferOffset);
    // Serialize message field [car_msgs]
    // Serialize the length for message field [car_msgs]
    bufferOffset = _serializer.uint32(obj.car_msgs.length, buffer, bufferOffset);
    obj.car_msgs.forEach((val) => {
      bufferOffset = CarMsg.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CarMsgs
    let len;
    let data = new CarMsgs(null);
    // Deserialize message field [stamp_guard]
    data.stamp_guard = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [car_msgs]
    // Deserialize array length for message field [car_msgs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.car_msgs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.car_msgs[i] = CarMsg.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 18 * object.car_msgs.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roborts_msgs/CarMsgs';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4c4dd9fe02c25c3ec9d783997231c682';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time stamp_guard
    CarMsg[]  car_msgs
    
    ================================================================================
    MSG: roborts_msgs/CarMsg
    uint8 id
    char color
    float64 x
    float64 y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CarMsgs(null);
    if (msg.stamp_guard !== undefined) {
      resolved.stamp_guard = msg.stamp_guard;
    }
    else {
      resolved.stamp_guard = {secs: 0, nsecs: 0}
    }

    if (msg.car_msgs !== undefined) {
      resolved.car_msgs = new Array(msg.car_msgs.length);
      for (let i = 0; i < resolved.car_msgs.length; ++i) {
        resolved.car_msgs[i] = CarMsg.Resolve(msg.car_msgs[i]);
      }
    }
    else {
      resolved.car_msgs = []
    }

    return resolved;
    }
};

module.exports = CarMsgs;
