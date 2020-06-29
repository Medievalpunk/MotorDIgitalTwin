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

class VehicleMode {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vehicle = null;
      this.generator = null;
      this.speed = null;
      this.brake = null;
      this.charge = null;
    }
    else {
      if (initObj.hasOwnProperty('vehicle')) {
        this.vehicle = initObj.vehicle
      }
      else {
        this.vehicle = new State();
      }
      if (initObj.hasOwnProperty('generator')) {
        this.generator = initObj.generator
      }
      else {
        this.generator = new State();
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = new State();
      }
      if (initObj.hasOwnProperty('brake')) {
        this.brake = initObj.brake
      }
      else {
        this.brake = new State();
      }
      if (initObj.hasOwnProperty('charge')) {
        this.charge = initObj.charge
      }
      else {
        this.charge = new State();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleMode
    // Serialize message field [vehicle]
    bufferOffset = State.serialize(obj.vehicle, buffer, bufferOffset);
    // Serialize message field [generator]
    bufferOffset = State.serialize(obj.generator, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = State.serialize(obj.speed, buffer, bufferOffset);
    // Serialize message field [brake]
    bufferOffset = State.serialize(obj.brake, buffer, bufferOffset);
    // Serialize message field [charge]
    bufferOffset = State.serialize(obj.charge, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleMode
    let len;
    let data = new VehicleMode(null);
    // Deserialize message field [vehicle]
    data.vehicle = State.deserialize(buffer, bufferOffset);
    // Deserialize message field [generator]
    data.generator = State.deserialize(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = State.deserialize(buffer, bufferOffset);
    // Deserialize message field [brake]
    data.brake = State.deserialize(buffer, bufferOffset);
    // Deserialize message field [charge]
    data.charge = State.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += State.getMessageSize(object.vehicle);
    length += State.getMessageSize(object.generator);
    length += State.getMessageSize(object.speed);
    length += State.getMessageSize(object.brake);
    length += State.getMessageSize(object.charge);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'themis_msgs/VehicleMode';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '565e3240233646eab93d6c6a27f36044';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    State vehicle
    State generator
    State speed
    State brake
    State charge
    
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
    const resolved = new VehicleMode(null);
    if (msg.vehicle !== undefined) {
      resolved.vehicle = State.Resolve(msg.vehicle)
    }
    else {
      resolved.vehicle = new State()
    }

    if (msg.generator !== undefined) {
      resolved.generator = State.Resolve(msg.generator)
    }
    else {
      resolved.generator = new State()
    }

    if (msg.speed !== undefined) {
      resolved.speed = State.Resolve(msg.speed)
    }
    else {
      resolved.speed = new State()
    }

    if (msg.brake !== undefined) {
      resolved.brake = State.Resolve(msg.brake)
    }
    else {
      resolved.brake = new State()
    }

    if (msg.charge !== undefined) {
      resolved.charge = State.Resolve(msg.charge)
    }
    else {
      resolved.charge = new State()
    }

    return resolved;
    }
};

module.exports = VehicleMode;
