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

class SetBatteryRateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mAh = null;
      this.period = null;
    }
    else {
      if (initObj.hasOwnProperty('mAh')) {
        this.mAh = initObj.mAh
      }
      else {
        this.mAh = 0.0;
      }
      if (initObj.hasOwnProperty('period')) {
        this.period = initObj.period
      }
      else {
        this.period = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetBatteryRateRequest
    // Serialize message field [mAh]
    bufferOffset = _serializer.float64(obj.mAh, buffer, bufferOffset);
    // Serialize message field [period]
    bufferOffset = _serializer.int64(obj.period, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetBatteryRateRequest
    let len;
    let data = new SetBatteryRateRequest(null);
    // Deserialize message field [mAh]
    data.mAh = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [period]
    data.period = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ecu_msgs/SetBatteryRateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '03e5c7c34c87f97b121c18f8b8079fd5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    float64 mAh
    
    int64 period
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetBatteryRateRequest(null);
    if (msg.mAh !== undefined) {
      resolved.mAh = msg.mAh;
    }
    else {
      resolved.mAh = 0.0
    }

    if (msg.period !== undefined) {
      resolved.period = msg.period;
    }
    else {
      resolved.period = 0
    }

    return resolved;
    }
};

class SetBatteryRateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.capacity_set = null;
      this.period_set = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('capacity_set')) {
        this.capacity_set = initObj.capacity_set
      }
      else {
        this.capacity_set = 0.0;
      }
      if (initObj.hasOwnProperty('period_set')) {
        this.period_set = initObj.period_set
      }
      else {
        this.period_set = 0;
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
    // Serializes a message object of type SetBatteryRateResponse
    // Serialize message field [capacity_set]
    bufferOffset = _serializer.float64(obj.capacity_set, buffer, bufferOffset);
    // Serialize message field [period_set]
    bufferOffset = _serializer.int64(obj.period_set, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetBatteryRateResponse
    let len;
    let data = new SetBatteryRateResponse(null);
    // Deserialize message field [capacity_set]
    data.capacity_set = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [period_set]
    data.period_set = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ecu_msgs/SetBatteryRateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e6cbfcf188dbf6cbcb9db66d8651c9c1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 capacity_set
    int64 period_set
    string message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetBatteryRateResponse(null);
    if (msg.capacity_set !== undefined) {
      resolved.capacity_set = msg.capacity_set;
    }
    else {
      resolved.capacity_set = 0.0
    }

    if (msg.period_set !== undefined) {
      resolved.period_set = msg.period_set;
    }
    else {
      resolved.period_set = 0
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
  Request: SetBatteryRateRequest,
  Response: SetBatteryRateResponse,
  md5sum() { return 'd62957aebeb7df19acf301078ca1beab'; },
  datatype() { return 'ecu_msgs/SetBatteryRate'; }
};
