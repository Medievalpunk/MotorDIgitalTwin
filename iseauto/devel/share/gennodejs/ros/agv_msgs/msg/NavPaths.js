// Auto-generated. Do not edit!

// (in-package agv_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let NavPath = require('./NavPath.js');

//-----------------------------------------------------------

class NavPaths {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.paths = null;
    }
    else {
      if (initObj.hasOwnProperty('paths')) {
        this.paths = initObj.paths
      }
      else {
        this.paths = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NavPaths
    // Serialize message field [paths]
    // Serialize the length for message field [paths]
    bufferOffset = _serializer.uint32(obj.paths.length, buffer, bufferOffset);
    obj.paths.forEach((val) => {
      bufferOffset = NavPath.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NavPaths
    let len;
    let data = new NavPaths(null);
    // Deserialize message field [paths]
    // Deserialize array length for message field [paths]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.paths = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.paths[i] = NavPath.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.paths.forEach((val) => {
      length += NavPath.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/NavPaths';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd8ca5b9769932f260f0331e043f67520';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    NavPath[] paths
    
    ================================================================================
    MSG: agv_msgs/NavPath
    string[] ids
    uint16 type
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NavPaths(null);
    if (msg.paths !== undefined) {
      resolved.paths = new Array(msg.paths.length);
      for (let i = 0; i < resolved.paths.length; ++i) {
        resolved.paths[i] = NavPath.Resolve(msg.paths[i]);
      }
    }
    else {
      resolved.paths = []
    }

    return resolved;
    }
};

module.exports = NavPaths;
