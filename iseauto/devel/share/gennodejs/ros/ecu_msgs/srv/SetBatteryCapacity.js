// Auto-generated. Do not edit!

// (in-package ecu_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetBatteryCapacityRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.capacity = null;
    }
    else {
      if (initObj.hasOwnProperty('capacity')) {
        this.capacity = initObj.capacity
      }
      else {
        this.capacity = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetBatteryCapacityRequest
    // Serialize message field [capacity]
    bufferOffset = _serializer.float64(obj.capacity, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetBatteryCapacityRequest
    let len;
    let data = new SetBatteryCapacityRequest(null);
    // Deserialize message field [capacity]
    data.capacity = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ecu_msgs/SetBatteryCapacityRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e6f1e9e76186954ea722a13aaffa39e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    float64 capacity
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetBatteryCapacityRequest(null);
    if (msg.capacity !== undefined) {
      resolved.capacity = msg.capacity;
    }
    else {
      resolved.capacity = 0.0
    }

    return resolved;
    }
};

class SetBatteryCapacityResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.capacity_set = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('capacity_set')) {
        this.capacity_set = initObj.capacity_set
      }
      else {
        this.capacity_set = 0.0;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetBatteryCapacityResponse
    // Serialize message field [capacity_set]
    bufferOffset = _serializer.float64(obj.capacity_set, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetBatteryCapacityResponse
    let len;
    let data = new SetBatteryCapacityResponse(null);
    // Deserialize message field [capacity_set]
    data.capacity_set = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ecu_msgs/SetBatteryCapacityResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5e57c7c66514140c709ea048d183ee86';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 capacity_set
    string message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetBatteryCapacityResponse(null);
    if (msg.capacity_set !== undefined) {
      resolved.capacity_set = msg.capacity_set;
    }
    else {
      resolved.capacity_set = 0.0
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: SetBatteryCapacityRequest,
  Response: SetBatteryCapacityResponse,
  md5sum() { return 'a6c003c4fba299af8275270f5cd8fcb6'; },
  datatype() { return 'ecu_msgs/SetBatteryCapacity'; }
};
