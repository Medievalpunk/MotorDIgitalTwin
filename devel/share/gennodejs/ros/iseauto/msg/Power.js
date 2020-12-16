// Auto-generated. Do not edit!

// (in-package iseauto.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Power {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.phase1 = null;
      this.phase2 = null;
      this.phase3 = null;
      this.total = null;
    }
    else {
      if (initObj.hasOwnProperty('phase1')) {
        this.phase1 = initObj.phase1
      }
      else {
        this.phase1 = 0.0;
      }
      if (initObj.hasOwnProperty('phase2')) {
        this.phase2 = initObj.phase2
      }
      else {
        this.phase2 = 0.0;
      }
      if (initObj.hasOwnProperty('phase3')) {
        this.phase3 = initObj.phase3
      }
      else {
        this.phase3 = 0.0;
      }
      if (initObj.hasOwnProperty('total')) {
        this.total = initObj.total
      }
      else {
        this.total = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Power
    // Serialize message field [phase1]
    bufferOffset = _serializer.float32(obj.phase1, buffer, bufferOffset);
    // Serialize message field [phase2]
    bufferOffset = _serializer.float32(obj.phase2, buffer, bufferOffset);
    // Serialize message field [phase3]
    bufferOffset = _serializer.float32(obj.phase3, buffer, bufferOffset);
    // Serialize message field [total]
    bufferOffset = _serializer.float32(obj.total, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Power
    let len;
    let data = new Power(null);
    // Deserialize message field [phase1]
    data.phase1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [phase2]
    data.phase2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [phase3]
    data.phase3 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [total]
    data.total = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'iseauto/Power';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2da61ddd54b46d41de22ff847920071c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 phase1
    float32 phase2
    float32 phase3
    float32 total
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Power(null);
    if (msg.phase1 !== undefined) {
      resolved.phase1 = msg.phase1;
    }
    else {
      resolved.phase1 = 0.0
    }

    if (msg.phase2 !== undefined) {
      resolved.phase2 = msg.phase2;
    }
    else {
      resolved.phase2 = 0.0
    }

    if (msg.phase3 !== undefined) {
      resolved.phase3 = msg.phase3;
    }
    else {
      resolved.phase3 = 0.0
    }

    if (msg.total !== undefined) {
      resolved.total = msg.total;
    }
    else {
      resolved.total = 0.0
    }

    return resolved;
    }
};

module.exports = Power;
