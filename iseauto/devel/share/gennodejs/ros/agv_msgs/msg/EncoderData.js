// Auto-generated. Do not edit!

// (in-package agv_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class EncoderData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.velocity = null;
      this.distance = null;
      this.units = null;
    }
    else {
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = 0.0;
      }
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0.0;
      }
      if (initObj.hasOwnProperty('units')) {
        this.units = initObj.units
      }
      else {
        this.units = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EncoderData
    // Serialize message field [velocity]
    bufferOffset = _serializer.float32(obj.velocity, buffer, bufferOffset);
    // Serialize message field [distance]
    bufferOffset = _serializer.float32(obj.distance, buffer, bufferOffset);
    // Serialize message field [units]
    bufferOffset = _serializer.uint8(obj.units, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EncoderData
    let len;
    let data = new EncoderData(null);
    // Deserialize message field [velocity]
    data.velocity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [distance]
    data.distance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [units]
    data.units = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/EncoderData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5ed93d667b28e9c960e1b5b4789dc7c5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new EncoderData(null);
    if (msg.velocity !== undefined) {
      resolved.velocity = msg.velocity;
    }
    else {
      resolved.velocity = 0.0
    }

    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0.0
    }

    if (msg.units !== undefined) {
      resolved.units = msg.units;
    }
    else {
      resolved.units = 0
    }

    return resolved;
    }
};

// Constants for message
EncoderData.Constants = {
  RPM: 0,
  RAD_S: 1,
  M_S: 2,
  TICKS: 3,
}

module.exports = EncoderData;
