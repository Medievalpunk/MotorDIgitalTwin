// Auto-generated. Do not edit!

// (in-package themis_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let State = require('./State.js');

//-----------------------------------------------------------

class Battery {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.air_state = null;
      this.low_voltage = null;
      this.high_voltage = null;
      this.charge_level = null;
    }
    else {
      if (initObj.hasOwnProperty('air_state')) {
        this.air_state = initObj.air_state
      }
      else {
        this.air_state = new State();
      }
      if (initObj.hasOwnProperty('low_voltage')) {
        this.low_voltage = initObj.low_voltage
      }
      else {
        this.low_voltage = 0.0;
      }
      if (initObj.hasOwnProperty('high_voltage')) {
        this.high_voltage = initObj.high_voltage
      }
      else {
        this.high_voltage = 0.0;
      }
      if (initObj.hasOwnProperty('charge_level')) {
        this.charge_level = initObj.charge_level
      }
      else {
        this.charge_level = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Battery
    // Serialize message field [air_state]
    bufferOffset = State.serialize(obj.air_state, buffer, bufferOffset);
    // Serialize message field [low_voltage]
    bufferOffset = _serializer.float32(obj.low_voltage, buffer, bufferOffset);
    // Serialize message field [high_voltage]
    bufferOffset = _serializer.float32(obj.high_voltage, buffer, bufferOffset);
    // Serialize message field [charge_level]
    bufferOffset = _serializer.float32(obj.charge_level, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Battery
    let len;
    let data = new Battery(null);
    // Deserialize message field [air_state]
    data.air_state = State.deserialize(buffer, bufferOffset);
    // Deserialize message field [low_voltage]
    data.low_voltage = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [high_voltage]
    data.high_voltage = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [charge_level]
    data.charge_level = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += State.getMessageSize(object.air_state);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'themis_msgs/Battery';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '12a9585c62ecbcc51a9af404d663e576';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    State air_state
    float32 low_voltage
    float32 high_voltage
    float32 charge_level
    
    # uint16 UNDEFINED_STATE = 0
    # uint16 INIT_STATE = 1
    # uint16 OFF_STATE = 2
    # uint16 SWITCH_ON_STATE = 3
    # uint16 ON_STATE = 4
    # uint16 SWITCH_OFF_STATE = 5
    # uint16 CHARGE_STATE = 6
    
    ================================================================================
    MSG: themis_msgs/State
    uint16 id
    string desc
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Battery(null);
    if (msg.air_state !== undefined) {
      resolved.air_state = State.Resolve(msg.air_state)
    }
    else {
      resolved.air_state = new State()
    }

    if (msg.low_voltage !== undefined) {
      resolved.low_voltage = msg.low_voltage;
    }
    else {
      resolved.low_voltage = 0.0
    }

    if (msg.high_voltage !== undefined) {
      resolved.high_voltage = msg.high_voltage;
    }
    else {
      resolved.high_voltage = 0.0
    }

    if (msg.charge_level !== undefined) {
      resolved.charge_level = msg.charge_level;
    }
    else {
      resolved.charge_level = 0.0
    }

    return resolved;
    }
};

module.exports = Battery;
