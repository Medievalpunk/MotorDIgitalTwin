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

class Sevcon {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.hour_count = null;
      this.real_rpm = null;
      this.real_torque = null;
      this.battery_current = null;
      this.battery_voltage = null;
      this.motor_temp = null;
      this.temp = null;
    }
    else {
      if (initObj.hasOwnProperty('hour_count')) {
        this.hour_count = initObj.hour_count
      }
      else {
        this.hour_count = 0;
      }
      if (initObj.hasOwnProperty('real_rpm')) {
        this.real_rpm = initObj.real_rpm
      }
      else {
        this.real_rpm = 0;
      }
      if (initObj.hasOwnProperty('real_torque')) {
        this.real_torque = initObj.real_torque
      }
      else {
        this.real_torque = 0.0;
      }
      if (initObj.hasOwnProperty('battery_current')) {
        this.battery_current = initObj.battery_current
      }
      else {
        this.battery_current = 0.0;
      }
      if (initObj.hasOwnProperty('battery_voltage')) {
        this.battery_voltage = initObj.battery_voltage
      }
      else {
        this.battery_voltage = 0.0;
      }
      if (initObj.hasOwnProperty('motor_temp')) {
        this.motor_temp = initObj.motor_temp
      }
      else {
        this.motor_temp = 0;
      }
      if (initObj.hasOwnProperty('temp')) {
        this.temp = initObj.temp
      }
      else {
        this.temp = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Sevcon
    // Serialize message field [hour_count]
    bufferOffset = _serializer.uint16(obj.hour_count, buffer, bufferOffset);
    // Serialize message field [real_rpm]
    bufferOffset = _serializer.int32(obj.real_rpm, buffer, bufferOffset);
    // Serialize message field [real_torque]
    bufferOffset = _serializer.float32(obj.real_torque, buffer, bufferOffset);
    // Serialize message field [battery_current]
    bufferOffset = _serializer.float32(obj.battery_current, buffer, bufferOffset);
    // Serialize message field [battery_voltage]
    bufferOffset = _serializer.float32(obj.battery_voltage, buffer, bufferOffset);
    // Serialize message field [motor_temp]
    bufferOffset = _serializer.int16(obj.motor_temp, buffer, bufferOffset);
    // Serialize message field [temp]
    bufferOffset = _serializer.int8(obj.temp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Sevcon
    let len;
    let data = new Sevcon(null);
    // Deserialize message field [hour_count]
    data.hour_count = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [real_rpm]
    data.real_rpm = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [real_torque]
    data.real_torque = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [battery_current]
    data.battery_current = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [battery_voltage]
    data.battery_voltage = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [motor_temp]
    data.motor_temp = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [temp]
    data.temp = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'themis_msgs/Sevcon';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3b11f79be0926a6b4515869450f7d6aa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 hour_count
    int32 real_rpm
    float32 real_torque
    float32 battery_current
    float32 battery_voltage
    int16 motor_temp
    int8 temp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Sevcon(null);
    if (msg.hour_count !== undefined) {
      resolved.hour_count = msg.hour_count;
    }
    else {
      resolved.hour_count = 0
    }

    if (msg.real_rpm !== undefined) {
      resolved.real_rpm = msg.real_rpm;
    }
    else {
      resolved.real_rpm = 0
    }

    if (msg.real_torque !== undefined) {
      resolved.real_torque = msg.real_torque;
    }
    else {
      resolved.real_torque = 0.0
    }

    if (msg.battery_current !== undefined) {
      resolved.battery_current = msg.battery_current;
    }
    else {
      resolved.battery_current = 0.0
    }

    if (msg.battery_voltage !== undefined) {
      resolved.battery_voltage = msg.battery_voltage;
    }
    else {
      resolved.battery_voltage = 0.0
    }

    if (msg.motor_temp !== undefined) {
      resolved.motor_temp = msg.motor_temp;
    }
    else {
      resolved.motor_temp = 0
    }

    if (msg.temp !== undefined) {
      resolved.temp = msg.temp;
    }
    else {
      resolved.temp = 0
    }

    return resolved;
    }
};

module.exports = Sevcon;
