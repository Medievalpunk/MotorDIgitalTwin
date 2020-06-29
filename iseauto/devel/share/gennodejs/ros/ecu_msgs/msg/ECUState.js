// Auto-generated. Do not edit!

// (in-package ecu_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ECUState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sensors = null;
      this.drive = null;
      this.battery = null;
      this.running = null;
      this.quit = null;
    }
    else {
      if (initObj.hasOwnProperty('sensors')) {
        this.sensors = initObj.sensors
      }
      else {
        this.sensors = false;
      }
      if (initObj.hasOwnProperty('drive')) {
        this.drive = initObj.drive
      }
      else {
        this.drive = false;
      }
      if (initObj.hasOwnProperty('battery')) {
        this.battery = initObj.battery
      }
      else {
        this.battery = '';
      }
      if (initObj.hasOwnProperty('running')) {
        this.running = initObj.running
      }
      else {
        this.running = false;
      }
      if (initObj.hasOwnProperty('quit')) {
        this.quit = initObj.quit
      }
      else {
        this.quit = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ECUState
    // Serialize message field [sensors]
    bufferOffset = _serializer.bool(obj.sensors, buffer, bufferOffset);
    // Serialize message field [drive]
    bufferOffset = _serializer.bool(obj.drive, buffer, bufferOffset);
    // Serialize message field [battery]
    bufferOffset = _serializer.string(obj.battery, buffer, bufferOffset);
    // Serialize message field [running]
    bufferOffset = _serializer.bool(obj.running, buffer, bufferOffset);
    // Serialize message field [quit]
    bufferOffset = _serializer.bool(obj.quit, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ECUState
    let len;
    let data = new ECUState(null);
    // Deserialize message field [sensors]
    data.sensors = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [drive]
    data.drive = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [battery]
    data.battery = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [running]
    data.running = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [quit]
    data.quit = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.battery.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ecu_msgs/ECUState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '356fcc37a358f36076bdf62f35f15a0d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool sensors
    bool drive
    string battery
    bool running
    bool quit
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ECUState(null);
    if (msg.sensors !== undefined) {
      resolved.sensors = msg.sensors;
    }
    else {
      resolved.sensors = false
    }

    if (msg.drive !== undefined) {
      resolved.drive = msg.drive;
    }
    else {
      resolved.drive = false
    }

    if (msg.battery !== undefined) {
      resolved.battery = msg.battery;
    }
    else {
      resolved.battery = ''
    }

    if (msg.running !== undefined) {
      resolved.running = msg.running;
    }
    else {
      resolved.running = false
    }

    if (msg.quit !== undefined) {
      resolved.quit = msg.quit;
    }
    else {
      resolved.quit = false
    }

    return resolved;
    }
};

module.exports = ECUState;
