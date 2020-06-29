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

class SetActiveOneRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
      this.index = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = false;
      }
      if (initObj.hasOwnProperty('index')) {
        this.index = initObj.index
      }
      else {
        this.index = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetActiveOneRequest
    // Serialize message field [state]
    bufferOffset = _serializer.bool(obj.state, buffer, bufferOffset);
    // Serialize message field [index]
    bufferOffset = _serializer.int64(obj.index, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetActiveOneRequest
    let len;
    let data = new SetActiveOneRequest(null);
    // Deserialize message field [state]
    data.state = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [index]
    data.index = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ecu_msgs/SetActiveOneRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c6ac0aeb0941f5513fea6f06f1e5d3d6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool state
    int64 index
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetActiveOneRequest(null);
    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = false
    }

    if (msg.index !== undefined) {
      resolved.index = msg.index;
    }
    else {
      resolved.index = 0
    }

    return resolved;
    }
};

class SetActiveOneResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.set_state = null;
      this.index_set = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('set_state')) {
        this.set_state = initObj.set_state
      }
      else {
        this.set_state = false;
      }
      if (initObj.hasOwnProperty('index_set')) {
        this.index_set = initObj.index_set
      }
      else {
        this.index_set = 0;
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
    // Serializes a message object of type SetActiveOneResponse
    // Serialize message field [set_state]
    bufferOffset = _serializer.bool(obj.set_state, buffer, bufferOffset);
    // Serialize message field [index_set]
    bufferOffset = _serializer.int64(obj.index_set, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetActiveOneResponse
    let len;
    let data = new SetActiveOneResponse(null);
    // Deserialize message field [set_state]
    data.set_state = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [index_set]
    data.index_set = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    return length + 13;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ecu_msgs/SetActiveOneResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9394940078300ee76a059fbd53af397c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool set_state
    int64 index_set
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetActiveOneResponse(null);
    if (msg.set_state !== undefined) {
      resolved.set_state = msg.set_state;
    }
    else {
      resolved.set_state = false
    }

    if (msg.index_set !== undefined) {
      resolved.index_set = msg.index_set;
    }
    else {
      resolved.index_set = 0
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
  Request: SetActiveOneRequest,
  Response: SetActiveOneResponse,
  md5sum() { return '9f8090badf21f79cbb38a70d7676e26b'; },
  datatype() { return 'ecu_msgs/SetActiveOne'; }
};
