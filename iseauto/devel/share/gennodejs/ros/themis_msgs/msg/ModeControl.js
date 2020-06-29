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

class ModeControl {
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
        this.vehicle = 0;
      }
      if (initObj.hasOwnProperty('generator')) {
        this.generator = initObj.generator
      }
      else {
        this.generator = 0;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0;
      }
      if (initObj.hasOwnProperty('brake')) {
        this.brake = initObj.brake
      }
      else {
        this.brake = 0;
      }
      if (initObj.hasOwnProperty('charge')) {
        this.charge = initObj.charge
      }
      else {
        this.charge = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ModeControl
    // Serialize message field [vehicle]
    bufferOffset = _serializer.uint8(obj.vehicle, buffer, bufferOffset);
    // Serialize message field [generator]
    bufferOffset = _serializer.uint8(obj.generator, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.uint8(obj.speed, buffer, bufferOffset);
    // Serialize message field [brake]
    bufferOffset = _serializer.uint8(obj.brake, buffer, bufferOffset);
    // Serialize message field [charge]
    bufferOffset = _serializer.uint8(obj.charge, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ModeControl
    let len;
    let data = new ModeControl(null);
    // Deserialize message field [vehicle]
    data.vehicle = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [generator]
    data.generator = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [brake]
    data.brake = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [charge]
    data.charge = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'themis_msgs/ModeControl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ad5484922684f97570b593292ada2bf9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 vehicle
    uint8 generator
    uint8 speed
    uint8 brake
    uint8 charge
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ModeControl(null);
    if (msg.vehicle !== undefined) {
      resolved.vehicle = msg.vehicle;
    }
    else {
      resolved.vehicle = 0
    }

    if (msg.generator !== undefined) {
      resolved.generator = msg.generator;
    }
    else {
      resolved.generator = 0
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0
    }

    if (msg.brake !== undefined) {
      resolved.brake = msg.brake;
    }
    else {
      resolved.brake = 0
    }

    if (msg.charge !== undefined) {
      resolved.charge = msg.charge;
    }
    else {
      resolved.charge = 0
    }

    return resolved;
    }
};

module.exports = ModeControl;
