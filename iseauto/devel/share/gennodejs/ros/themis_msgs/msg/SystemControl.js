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

class SystemControl {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.high_voltage = null;
      this.fan_override = null;
      this.generator = null;
      this.work_lights = null;
      this.signal_lights = null;
      this.imd_override = null;
    }
    else {
      if (initObj.hasOwnProperty('high_voltage')) {
        this.high_voltage = initObj.high_voltage
      }
      else {
        this.high_voltage = false;
      }
      if (initObj.hasOwnProperty('fan_override')) {
        this.fan_override = initObj.fan_override
      }
      else {
        this.fan_override = false;
      }
      if (initObj.hasOwnProperty('generator')) {
        this.generator = initObj.generator
      }
      else {
        this.generator = false;
      }
      if (initObj.hasOwnProperty('work_lights')) {
        this.work_lights = initObj.work_lights
      }
      else {
        this.work_lights = false;
      }
      if (initObj.hasOwnProperty('signal_lights')) {
        this.signal_lights = initObj.signal_lights
      }
      else {
        this.signal_lights = false;
      }
      if (initObj.hasOwnProperty('imd_override')) {
        this.imd_override = initObj.imd_override
      }
      else {
        this.imd_override = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SystemControl
    // Serialize message field [high_voltage]
    bufferOffset = _serializer.bool(obj.high_voltage, buffer, bufferOffset);
    // Serialize message field [fan_override]
    bufferOffset = _serializer.bool(obj.fan_override, buffer, bufferOffset);
    // Serialize message field [generator]
    bufferOffset = _serializer.bool(obj.generator, buffer, bufferOffset);
    // Serialize message field [work_lights]
    bufferOffset = _serializer.bool(obj.work_lights, buffer, bufferOffset);
    // Serialize message field [signal_lights]
    bufferOffset = _serializer.bool(obj.signal_lights, buffer, bufferOffset);
    // Serialize message field [imd_override]
    bufferOffset = _serializer.bool(obj.imd_override, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SystemControl
    let len;
    let data = new SystemControl(null);
    // Deserialize message field [high_voltage]
    data.high_voltage = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [fan_override]
    data.fan_override = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [generator]
    data.generator = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [work_lights]
    data.work_lights = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [signal_lights]
    data.signal_lights = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [imd_override]
    data.imd_override = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'themis_msgs/SystemControl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c55c2f064ee67c58e2e454e066c5cc98';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool high_voltage
    bool fan_override
    bool generator
    bool work_lights
    bool signal_lights
    bool imd_override
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SystemControl(null);
    if (msg.high_voltage !== undefined) {
      resolved.high_voltage = msg.high_voltage;
    }
    else {
      resolved.high_voltage = false
    }

    if (msg.fan_override !== undefined) {
      resolved.fan_override = msg.fan_override;
    }
    else {
      resolved.fan_override = false
    }

    if (msg.generator !== undefined) {
      resolved.generator = msg.generator;
    }
    else {
      resolved.generator = false
    }

    if (msg.work_lights !== undefined) {
      resolved.work_lights = msg.work_lights;
    }
    else {
      resolved.work_lights = false
    }

    if (msg.signal_lights !== undefined) {
      resolved.signal_lights = msg.signal_lights;
    }
    else {
      resolved.signal_lights = false
    }

    if (msg.imd_override !== undefined) {
      resolved.imd_override = msg.imd_override;
    }
    else {
      resolved.imd_override = false
    }

    return resolved;
    }
};

module.exports = SystemControl;
