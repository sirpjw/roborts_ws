// Auto-generated. Do not edit!

// (in-package roborts_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ArmorDetection {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.id = null;
      this.detected_enemy = null;
      this.enemy_x = null;
      this.enemy_y = null;
      this.distance = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('detected_enemy')) {
        this.detected_enemy = initObj.detected_enemy
      }
      else {
        this.detected_enemy = false;
      }
      if (initObj.hasOwnProperty('enemy_x')) {
        this.enemy_x = initObj.enemy_x
      }
      else {
        this.enemy_x = 0.0;
      }
      if (initObj.hasOwnProperty('enemy_y')) {
        this.enemy_y = initObj.enemy_y
      }
      else {
        this.enemy_y = 0.0;
      }
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ArmorDetection
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.uint8(obj.id, buffer, bufferOffset);
    // Serialize message field [detected_enemy]
    bufferOffset = _serializer.bool(obj.detected_enemy, buffer, bufferOffset);
    // Serialize message field [enemy_x]
    bufferOffset = _serializer.float64(obj.enemy_x, buffer, bufferOffset);
    // Serialize message field [enemy_y]
    bufferOffset = _serializer.float64(obj.enemy_y, buffer, bufferOffset);
    // Serialize message field [distance]
    bufferOffset = _serializer.float64(obj.distance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ArmorDetection
    let len;
    let data = new ArmorDetection(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [detected_enemy]
    data.detected_enemy = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [enemy_x]
    data.enemy_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [enemy_y]
    data.enemy_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [distance]
    data.distance = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 26;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roborts_msgs/ArmorDetection';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '73e2d1a46dbd916f5132a3ac033ec3eb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #armor detected msg
    Header header
    uint8 id
    bool detected_enemy
    float64 enemy_x
    float64 enemy_y
    float64 distance
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ArmorDetection(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.detected_enemy !== undefined) {
      resolved.detected_enemy = msg.detected_enemy;
    }
    else {
      resolved.detected_enemy = false
    }

    if (msg.enemy_x !== undefined) {
      resolved.enemy_x = msg.enemy_x;
    }
    else {
      resolved.enemy_x = 0.0
    }

    if (msg.enemy_y !== undefined) {
      resolved.enemy_y = msg.enemy_y;
    }
    else {
      resolved.enemy_y = 0.0
    }

    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0.0
    }

    return resolved;
    }
};

module.exports = ArmorDetection;
