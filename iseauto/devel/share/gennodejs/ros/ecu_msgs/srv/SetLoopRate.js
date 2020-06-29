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

class SetLoopRateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rate = null;
    }
    else {
      if (initObj.hasOwnProperty('rate')) {
        this.rate = initObj.rate
      }
      else {
        this.rate = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetLoopRateRequest
    // Serialize message field [rate]
    bufferOffset = _serializer.int64(obj.rate, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetLoopRateRequest
    let len;
    let data = new SetLoopRateRequest(null);
    // Deserialize message field [rate]
    data.rate = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ecu_msgs/SetLoopRateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9b2ab16752b70cb6f786c76730929609';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    int64 rate
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetLoopRateRequest(null);
    if (msg.rate !== undefined) {
      resolved.rate = msg.rate;
    }
    else {
      resolved.rate = 0
    }

    return resolved;
    }
};

class SetLoopRateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rate_set = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('rate_set')) {
        this.rate_set = initObj.rate_set
      }
      else {
        this.rate_set = 0.0;
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
    // Serializes a message object of type SetLoopRateResponse
    // Serialize message field [rate_set]
    bufferOffset = _serializer.float64(obj.rate_set, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetLoopRateResponse
    let len;
    let data = new SetLoopRateResponse(null);
    // Deserialize message field [rate_set]
    data.rate_set = _deserializer.float64(buffer, bufferOffset);
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
    return 'ecu_msgs/SetLoopRateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '22e8993412728626c32f2e99962674f1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 rate_set
    string message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetLoopRateResponse(null);
    if (msg.rate_set !== undefined) {
      resolved.rate_set = msg.rate_set;
    }
    else {
      resolved.rate_set = 0.0
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
  Request: SetLoopRateRequest,
  Response: SetLoopRateResponse,
  md5sum() { return 'e70f420dd3814e680a1961a45937fb63'; },
  datatype() { return 'ecu_msgs/SetLoopRate'; }
};
