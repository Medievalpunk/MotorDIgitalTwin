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

class NavPath {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ids = null;
      this.type = null;
    }
    else {
      if (initObj.hasOwnProperty('ids')) {
        this.ids = initObj.ids
      }
      else {
        this.ids = [];
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NavPath
    // Serialize message field [ids]
    bufferOffset = _arraySerializer.string(obj.ids, buffer, bufferOffset, null);
    // Serialize message field [type]
    bufferOffset = _serializer.uint16(obj.type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NavPath
    let len;
    let data = new NavPath(null);
    // Deserialize message field [ids]
    data.ids = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [type]
    data.type = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.ids.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/NavPath';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '711def7d6763ad1633c19a26fb883e46';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] ids
    uint16 type
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NavPath(null);
    if (msg.ids !== undefined) {
      resolved.ids = msg.ids;
    }
    else {
      resolved.ids = []
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    return resolved;
    }
};

module.exports = NavPath;
