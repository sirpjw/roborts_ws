// Auto-generated. Do not edit!

// (in-package roborts_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class ArmorMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robot_detected = null;
      this.armor_detected = null;
      this.robot_pose = null;
      this.color = null;
      this.id = null;
      this.area = null;
      this.pose = null;
    }
    else {
      if (initObj.hasOwnProperty('robot_detected')) {
        this.robot_detected = initObj.robot_detected
      }
      else {
        this.robot_detected = false;
      }
      if (initObj.hasOwnProperty('armor_detected')) {
        this.armor_detected = initObj.armor_detected
      }
      else {
        this.armor_detected = false;
      }
      if (initObj.hasOwnProperty('robot_pose')) {
        this.robot_pose = initObj.robot_pose
      }
      else {
        this.robot_pose = 0;
      }
      if (initObj.hasOwnProperty('color')) {
        this.color = initObj.color
      }
      else {
        this.color = 0;
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('area')) {
        this.area = initObj.area
      }
      else {
        this.area = 0;
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ArmorMsg
    // Serialize message field [robot_detected]
    bufferOffset = _serializer.bool(obj.robot_detected, buffer, bufferOffset);
    // Serialize message field [armor_detected]
    bufferOffset = _serializer.bool(obj.armor_detected, buffer, bufferOffset);
    // Serialize message field [robot_pose]
    bufferOffset = _serializer.int8(obj.robot_pose, buffer, bufferOffset);
    // Serialize message field [color]
    bufferOffset = _serializer.int8(obj.color, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.int8(obj.id, buffer, bufferOffset);
    // Serialize message field [area]
    bufferOffset = _serializer.int32(obj.area, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ArmorMsg
    let len;
    let data = new ArmorMsg(null);
    // Deserialize message field [robot_detected]
    data.robot_detected = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [armor_detected]
    data.armor_detected = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [robot_pose]
    data.robot_pose = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [color]
    data.color = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [area]
    data.area = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 33;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roborts_msgs/ArmorMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0168548d106cea9b6c2d1718be86c76f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new ArmorMsg(null);
    if (msg.robot_detected !== undefined) {
      resolved.robot_detected = msg.robot_detected;
    }
    else {
      resolved.robot_detected = false
    }

    if (msg.armor_detected !== undefined) {
      resolved.armor_detected = msg.armor_detected;
    }
    else {
      resolved.armor_detected = false
    }

    if (msg.robot_pose !== undefined) {
      resolved.robot_pose = msg.robot_pose;
    }
    else {
      resolved.robot_pose = 0
    }

    if (msg.color !== undefined) {
      resolved.color = msg.color;
    }
    else {
      resolved.color = 0
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.area !== undefined) {
      resolved.area = msg.area;
    }
    else {
      resolved.area = 0
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Point.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Point()
    }

    return resolved;
    }
};

module.exports = ArmorMsg;
