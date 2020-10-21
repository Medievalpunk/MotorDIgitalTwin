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

class Current {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.current1 = null;
      this.current2 = null;
      this.current3 = null;
    }
    else {
      if (initObj.hasOwnProperty('current1')) {
        this.current1 = initObj.current1
      }
      else {
        this.current1 = 0.0;
      }
      if (initObj.hasOwnProperty('current2')) {
        this.current2 = initObj.current2
      }
      else {
        this.current2 = 0.0;
      }
      if (initObj.hasOwnProperty('current3')) {
        this.current3 = initObj.current3
      }
      else {
        this.current3 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Current
    // Serialize message field [current1]
    bufferOffset = _serializer.float32(obj.current1, buffer, bufferOffset);
    // Serialize message field [current2]
    bufferOffset = _serializer.float32(obj.current2, buffer, bufferOffset);
    // Serialize message field [current3]
    bufferOffset = _serializer.float32(obj.current3, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Current
    let len;
    let data = new Current(null);
    // Deserialize message field [current1]
    data.current1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [current2]
    data.current2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [current3]
    data.current3 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'iseauto/Current';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd72878699e445dfbd8b757130d3ba7c0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 current1
    float32 current2
    float32 current3
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Current(null);
    if (msg.current1 !== undefined) {
      resolved.current1 = msg.current1;
    }
    else {
      resolved.current1 = 0.0
    }

    if (msg.current2 !== undefined) {
      resolved.current2 = msg.current2;
    }
    else {
      resolved.current2 = 0.0
    }

    if (msg.current3 !== undefined) {
      resolved.current3 = msg.current3;
    }
    else {
      resolved.current3 = 0.0
    }

    return resolved;
    }
};

module.exports = Current;
