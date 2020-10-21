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

class Voltage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.voltage1 = null;
      this.voltage2 = null;
      this.voltage3 = null;
    }
    else {
      if (initObj.hasOwnProperty('voltage1')) {
        this.voltage1 = initObj.voltage1
      }
      else {
        this.voltage1 = 0.0;
      }
      if (initObj.hasOwnProperty('voltage2')) {
        this.voltage2 = initObj.voltage2
      }
      else {
        this.voltage2 = 0.0;
      }
      if (initObj.hasOwnProperty('voltage3')) {
        this.voltage3 = initObj.voltage3
      }
      else {
        this.voltage3 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Voltage
    // Serialize message field [voltage1]
    bufferOffset = _serializer.float32(obj.voltage1, buffer, bufferOffset);
    // Serialize message field [voltage2]
    bufferOffset = _serializer.float32(obj.voltage2, buffer, bufferOffset);
    // Serialize message field [voltage3]
    bufferOffset = _serializer.float32(obj.voltage3, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Voltage
    let len;
    let data = new Voltage(null);
    // Deserialize message field [voltage1]
    data.voltage1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [voltage2]
    data.voltage2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [voltage3]
    data.voltage3 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'iseauto/Voltage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '201ad7f8e98b5d0b734069bf861aba7a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 voltage1
    float32 voltage2
    float32 voltage3
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Voltage(null);
    if (msg.voltage1 !== undefined) {
      resolved.voltage1 = msg.voltage1;
    }
    else {
      resolved.voltage1 = 0.0
    }

    if (msg.voltage2 !== undefined) {
      resolved.voltage2 = msg.voltage2;
    }
    else {
      resolved.voltage2 = 0.0
    }

    if (msg.voltage3 !== undefined) {
      resolved.voltage3 = msg.voltage3;
    }
    else {
      resolved.voltage3 = 0.0
    }

    return resolved;
    }
};

module.exports = Voltage;
