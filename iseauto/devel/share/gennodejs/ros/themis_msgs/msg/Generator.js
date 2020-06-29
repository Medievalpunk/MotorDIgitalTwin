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
let Sevcon = require('./Sevcon.js');
let GeneratorPdm = require('./GeneratorPdm.js');

//-----------------------------------------------------------

class Generator {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
      this.fuel_level = null;
      this.sevcon = null;
      this.pdm = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = new State();
      }
      if (initObj.hasOwnProperty('fuel_level')) {
        this.fuel_level = initObj.fuel_level
      }
      else {
        this.fuel_level = 0.0;
      }
      if (initObj.hasOwnProperty('sevcon')) {
        this.sevcon = initObj.sevcon
      }
      else {
        this.sevcon = new Sevcon();
      }
      if (initObj.hasOwnProperty('pdm')) {
        this.pdm = initObj.pdm
      }
      else {
        this.pdm = new GeneratorPdm();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Generator
    // Serialize message field [state]
    bufferOffset = State.serialize(obj.state, buffer, bufferOffset);
    // Serialize message field [fuel_level]
    bufferOffset = _serializer.float32(obj.fuel_level, buffer, bufferOffset);
    // Serialize message field [sevcon]
    bufferOffset = Sevcon.serialize(obj.sevcon, buffer, bufferOffset);
    // Serialize message field [pdm]
    bufferOffset = GeneratorPdm.serialize(obj.pdm, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Generator
    let len;
    let data = new Generator(null);
    // Deserialize message field [state]
    data.state = State.deserialize(buffer, bufferOffset);
    // Deserialize message field [fuel_level]
    data.fuel_level = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [sevcon]
    data.sevcon = Sevcon.deserialize(buffer, bufferOffset);
    // Deserialize message field [pdm]
    data.pdm = GeneratorPdm.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += State.getMessageSize(object.state);
    return length + 33;
  }

  static datatype() {
    // Returns string type for a message object
    return 'themis_msgs/Generator';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b946db57ad5e2a3d65d4478369d1c9e1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    State state
    float32 fuel_level
    Sevcon sevcon
    GeneratorPdm pdm
    
    ================================================================================
    MSG: themis_msgs/State
    uint16 id
    string desc
    
    ================================================================================
    MSG: themis_msgs/Sevcon
    uint16 hour_count
    int32 real_rpm
    float32 real_torque
    float32 battery_current
    float32 battery_voltage
    int16 motor_temp
    int8 temp
    
    ================================================================================
    MSG: themis_msgs/GeneratorPdm
    float32 motor_coolant_temp
    float32 engine_coolant_temp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Generator(null);
    if (msg.state !== undefined) {
      resolved.state = State.Resolve(msg.state)
    }
    else {
      resolved.state = new State()
    }

    if (msg.fuel_level !== undefined) {
      resolved.fuel_level = msg.fuel_level;
    }
    else {
      resolved.fuel_level = 0.0
    }

    if (msg.sevcon !== undefined) {
      resolved.sevcon = Sevcon.Resolve(msg.sevcon)
    }
    else {
      resolved.sevcon = new Sevcon()
    }

    if (msg.pdm !== undefined) {
      resolved.pdm = GeneratorPdm.Resolve(msg.pdm)
    }
    else {
      resolved.pdm = new GeneratorPdm()
    }

    return resolved;
    }
};

module.exports = Generator;
