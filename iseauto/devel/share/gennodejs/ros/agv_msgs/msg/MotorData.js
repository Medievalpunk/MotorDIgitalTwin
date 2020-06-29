// Auto-generated. Do not edit!

// (in-package agv_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let EncoderData = require('./EncoderData.js');

//-----------------------------------------------------------

class MotorData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.enc = null;
      this.torque = null;
      this.current = null;
      this.voltage = null;
      this.temperature = null;
    }
    else {
      if (initObj.hasOwnProperty('enc')) {
        this.enc = initObj.enc
      }
      else {
        this.enc = new EncoderData();
      }
      if (initObj.hasOwnProperty('torque')) {
        this.torque = initObj.torque
      }
      else {
        this.torque = 0.0;
      }
      if (initObj.hasOwnProperty('current')) {
        this.current = initObj.current
      }
      else {
        this.current = 0.0;
      }
      if (initObj.hasOwnProperty('voltage')) {
        this.voltage = initObj.voltage
      }
      else {
        this.voltage = 0.0;
      }
      if (initObj.hasOwnProperty('temperature')) {
        this.temperature = initObj.temperature
      }
      else {
        this.temperature = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorData
    // Serialize message field [enc]
    bufferOffset = EncoderData.serialize(obj.enc, buffer, bufferOffset);
    // Serialize message field [torque]
    bufferOffset = _serializer.float32(obj.torque, buffer, bufferOffset);
    // Serialize message field [current]
    bufferOffset = _serializer.float32(obj.current, buffer, bufferOffset);
    // Serialize message field [voltage]
    bufferOffset = _serializer.float32(obj.voltage, buffer, bufferOffset);
    // Serialize message field [temperature]
    bufferOffset = _serializer.float32(obj.temperature, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorData
    let len;
    let data = new MotorData(null);
    // Deserialize message field [enc]
    data.enc = EncoderData.deserialize(buffer, bufferOffset);
    // Deserialize message field [torque]
    data.torque = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [current]
    data.current = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [voltage]
    data.voltage = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [temperature]
    data.temperature = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/MotorData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f9f1240e471258014c99a0aa28d83052';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    EncoderData enc
    float32 torque            # Nm
    float32 current           # A
    float32 voltage           # V
    float32 temperature       # C
    
    # Some useful formulas for reference (use Si units)
    # Mechanical power = torque * angular_velocity
    # Electrical power = current * voltage
    # Efficiency = mech. power / elec. power
    
    ================================================================================
    MSG: agv_msgs/EncoderData
    float32 velocity
    float32 distance
    
    uint8 units
    uint8 RPM=0     # velocity in rpm,      distance in rotations
    uint8 RAD_S=1   # velocity in rad/s,    distance in radians
    uint8 M_S=2     # velocity in m/s,      distance in metres
    uint8 TICKS=3   # velocity in ticks/s,  distance in ticks
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotorData(null);
    if (msg.enc !== undefined) {
      resolved.enc = EncoderData.Resolve(msg.enc)
    }
    else {
      resolved.enc = new EncoderData()
    }

    if (msg.torque !== undefined) {
      resolved.torque = msg.torque;
    }
    else {
      resolved.torque = 0.0
    }

    if (msg.current !== undefined) {
      resolved.current = msg.current;
    }
    else {
      resolved.current = 0.0
    }

    if (msg.voltage !== undefined) {
      resolved.voltage = msg.voltage;
    }
    else {
      resolved.voltage = 0.0
    }

    if (msg.temperature !== undefined) {
      resolved.temperature = msg.temperature;
    }
    else {
      resolved.temperature = 0.0
    }

    return resolved;
    }
};

module.exports = MotorData;
