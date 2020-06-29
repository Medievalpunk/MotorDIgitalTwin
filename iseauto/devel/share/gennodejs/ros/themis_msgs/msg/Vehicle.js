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
let VehicleMode = require('./VehicleMode.js');

//-----------------------------------------------------------

class Vehicle {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
      this.speed = null;
      this.drive_state = null;
      this.brake_feedback = null;
      this.imd_error = null;
      this.mode = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = new State();
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
      if (initObj.hasOwnProperty('drive_state')) {
        this.drive_state = initObj.drive_state
      }
      else {
        this.drive_state = new State();
      }
      if (initObj.hasOwnProperty('brake_feedback')) {
        this.brake_feedback = initObj.brake_feedback
      }
      else {
        this.brake_feedback = 0;
      }
      if (initObj.hasOwnProperty('imd_error')) {
        this.imd_error = initObj.imd_error
      }
      else {
        this.imd_error = false;
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = new VehicleMode();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Vehicle
    // Serialize message field [state]
    bufferOffset = State.serialize(obj.state, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float32(obj.speed, buffer, bufferOffset);
    // Serialize message field [drive_state]
    bufferOffset = State.serialize(obj.drive_state, buffer, bufferOffset);
    // Serialize message field [brake_feedback]
    bufferOffset = _serializer.uint8(obj.brake_feedback, buffer, bufferOffset);
    // Serialize message field [imd_error]
    bufferOffset = _serializer.bool(obj.imd_error, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = VehicleMode.serialize(obj.mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Vehicle
    let len;
    let data = new Vehicle(null);
    // Deserialize message field [state]
    data.state = State.deserialize(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [drive_state]
    data.drive_state = State.deserialize(buffer, bufferOffset);
    // Deserialize message field [brake_feedback]
    data.brake_feedback = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [imd_error]
    data.imd_error = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = VehicleMode.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += State.getMessageSize(object.state);
    length += State.getMessageSize(object.drive_state);
    length += VehicleMode.getMessageSize(object.mode);
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'themis_msgs/Vehicle';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f2f224fad34514175362e87aeae2016a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    State state
    float32 speed
    State drive_state
    uint8 brake_feedback
    bool imd_error
    VehicleMode mode
    
    ================================================================================
    MSG: themis_msgs/State
    uint16 id
    string desc
    
    ================================================================================
    MSG: themis_msgs/VehicleMode
    State vehicle
    State generator
    State speed
    State brake
    State charge
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Vehicle(null);
    if (msg.state !== undefined) {
      resolved.state = State.Resolve(msg.state)
    }
    else {
      resolved.state = new State()
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    if (msg.drive_state !== undefined) {
      resolved.drive_state = State.Resolve(msg.drive_state)
    }
    else {
      resolved.drive_state = new State()
    }

    if (msg.brake_feedback !== undefined) {
      resolved.brake_feedback = msg.brake_feedback;
    }
    else {
      resolved.brake_feedback = 0
    }

    if (msg.imd_error !== undefined) {
      resolved.imd_error = msg.imd_error;
    }
    else {
      resolved.imd_error = false
    }

    if (msg.mode !== undefined) {
      resolved.mode = VehicleMode.Resolve(msg.mode)
    }
    else {
      resolved.mode = new VehicleMode()
    }

    return resolved;
    }
};

module.exports = Vehicle;
