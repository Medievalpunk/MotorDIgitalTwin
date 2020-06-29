// Auto-generated. Do not edit!

// (in-package themis_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class GeneratorPdm {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.motor_coolant_temp = null;
      this.engine_coolant_temp = null;
    }
    else {
      if (initObj.hasOwnProperty('motor_coolant_temp')) {
        this.motor_coolant_temp = initObj.motor_coolant_temp
      }
      else {
        this.motor_coolant_temp = 0.0;
      }
      if (initObj.hasOwnProperty('engine_coolant_temp')) {
        this.engine_coolant_temp = initObj.engine_coolant_temp
      }
      else {
        this.engine_coolant_temp = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GeneratorPdm
    // Serialize message field [motor_coolant_temp]
    bufferOffset = _serializer.float32(obj.motor_coolant_temp, buffer, bufferOffset);
    // Serialize message field [engine_coolant_temp]
    bufferOffset = _serializer.float32(obj.engine_coolant_temp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GeneratorPdm
    let len;
    let data = new GeneratorPdm(null);
    // Deserialize message field [motor_coolant_temp]
    data.motor_coolant_temp = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [engine_coolant_temp]
    data.engine_coolant_temp = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'themis_msgs/GeneratorPdm';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '25d429d660d1faae2c98790eb6d65e0e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 motor_coolant_temp
    float32 engine_coolant_temp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GeneratorPdm(null);
    if (msg.motor_coolant_temp !== undefined) {
      resolved.motor_coolant_temp = msg.motor_coolant_temp;
    }
    else {
      resolved.motor_coolant_temp = 0.0
    }

    if (msg.engine_coolant_temp !== undefined) {
      resolved.engine_coolant_temp = msg.engine_coolant_temp;
    }
    else {
      resolved.engine_coolant_temp = 0.0
    }

    return resolved;
    }
};

module.exports = GeneratorPdm;
