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

class RobotInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.level = null;
      this.remain_hp = null;
      this.max_hp = null;
      this.remain_bullets = null;
      this.max_bullets = null;
      this.robot_color = null;
      this.chassis_enable = null;
      this.shooter_enable = null;
      this.fricwheel_enable = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('level')) {
        this.level = initObj.level
      }
      else {
        this.level = 0;
      }
      if (initObj.hasOwnProperty('remain_hp')) {
        this.remain_hp = initObj.remain_hp
      }
      else {
        this.remain_hp = 0;
      }
      if (initObj.hasOwnProperty('max_hp')) {
        this.max_hp = initObj.max_hp
      }
      else {
        this.max_hp = 0;
      }
      if (initObj.hasOwnProperty('remain_bullets')) {
        this.remain_bullets = initObj.remain_bullets
      }
      else {
        this.remain_bullets = 0;
      }
      if (initObj.hasOwnProperty('max_bullets')) {
        this.max_bullets = initObj.max_bullets
      }
      else {
        this.max_bullets = 0;
      }
      if (initObj.hasOwnProperty('robot_color')) {
        this.robot_color = initObj.robot_color
      }
      else {
        this.robot_color = 0;
      }
      if (initObj.hasOwnProperty('chassis_enable')) {
        this.chassis_enable = initObj.chassis_enable
      }
      else {
        this.chassis_enable = false;
      }
      if (initObj.hasOwnProperty('shooter_enable')) {
        this.shooter_enable = initObj.shooter_enable
      }
      else {
        this.shooter_enable = false;
      }
      if (initObj.hasOwnProperty('fricwheel_enable')) {
        this.fricwheel_enable = initObj.fricwheel_enable
      }
      else {
        this.fricwheel_enable = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotInfo
    // Serialize message field [id]
    bufferOffset = _serializer.uint8(obj.id, buffer, bufferOffset);
    // Serialize message field [level]
    bufferOffset = _serializer.uint8(obj.level, buffer, bufferOffset);
    // Serialize message field [remain_hp]
    bufferOffset = _serializer.uint16(obj.remain_hp, buffer, bufferOffset);
    // Serialize message field [max_hp]
    bufferOffset = _serializer.uint16(obj.max_hp, buffer, bufferOffset);
    // Serialize message field [remain_bullets]
    bufferOffset = _serializer.uint16(obj.remain_bullets, buffer, bufferOffset);
    // Serialize message field [max_bullets]
    bufferOffset = _serializer.uint16(obj.max_bullets, buffer, bufferOffset);
    // Serialize message field [robot_color]
    bufferOffset = _serializer.uint8(obj.robot_color, buffer, bufferOffset);
    // Serialize message field [chassis_enable]
    bufferOffset = _serializer.bool(obj.chassis_enable, buffer, bufferOffset);
    // Serialize message field [shooter_enable]
    bufferOffset = _serializer.bool(obj.shooter_enable, buffer, bufferOffset);
    // Serialize message field [fricwheel_enable]
    bufferOffset = _serializer.bool(obj.fricwheel_enable, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotInfo
    let len;
    let data = new RobotInfo(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [level]
    data.level = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [remain_hp]
    data.remain_hp = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [max_hp]
    data.max_hp = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [remain_bullets]
    data.remain_bullets = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [max_bullets]
    data.max_bullets = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [robot_color]
    data.robot_color = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [chassis_enable]
    data.chassis_enable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [shooter_enable]
    data.shooter_enable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [fricwheel_enable]
    data.fricwheel_enable = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roborts_msgs/RobotInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '42151e01fd01be2567ca9939a7e62df3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #robot status
    uint8 id
    uint8 level
    uint16 remain_hp
    uint16 max_hp
    
    uint16 remain_bullets
    uint16 max_bullets
    
    uint8 robot_color
    
    # devices enable
    bool chassis_enable
    bool shooter_enable
    bool fricwheel_enable
    
    # color Defined Value
    uint8 RED = 1
    uint8 BLUE = 2
    uint8 UNKONWN = 0
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotInfo(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.level !== undefined) {
      resolved.level = msg.level;
    }
    else {
      resolved.level = 0
    }

    if (msg.remain_hp !== undefined) {
      resolved.remain_hp = msg.remain_hp;
    }
    else {
      resolved.remain_hp = 0
    }

    if (msg.max_hp !== undefined) {
      resolved.max_hp = msg.max_hp;
    }
    else {
      resolved.max_hp = 0
    }

    if (msg.remain_bullets !== undefined) {
      resolved.remain_bullets = msg.remain_bullets;
    }
    else {
      resolved.remain_bullets = 0
    }

    if (msg.max_bullets !== undefined) {
      resolved.max_bullets = msg.max_bullets;
    }
    else {
      resolved.max_bullets = 0
    }

    if (msg.robot_color !== undefined) {
      resolved.robot_color = msg.robot_color;
    }
    else {
      resolved.robot_color = 0
    }

    if (msg.chassis_enable !== undefined) {
      resolved.chassis_enable = msg.chassis_enable;
    }
    else {
      resolved.chassis_enable = false
    }

    if (msg.shooter_enable !== undefined) {
      resolved.shooter_enable = msg.shooter_enable;
    }
    else {
      resolved.shooter_enable = false
    }

    if (msg.fricwheel_enable !== undefined) {
      resolved.fricwheel_enable = msg.fricwheel_enable;
    }
    else {
      resolved.fricwheel_enable = false
    }

    return resolved;
    }
};

// Constants for message
RobotInfo.Constants = {
  RED: 1,
  BLUE: 2,
  UNKONWN: 0,
}

module.exports = RobotInfo;
