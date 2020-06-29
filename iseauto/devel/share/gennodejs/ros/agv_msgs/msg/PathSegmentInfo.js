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

class PathSegmentInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.start_id = null;
      this.end_id = null;
      this.distance = null;
    }
    else {
      if (initObj.hasOwnProperty('start_id')) {
        this.start_id = initObj.start_id
      }
      else {
        this.start_id = '';
      }
      if (initObj.hasOwnProperty('end_id')) {
        this.end_id = initObj.end_id
      }
      else {
        this.end_id = '';
      }
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PathSegmentInfo
    // Serialize message field [start_id]
    bufferOffset = _serializer.string(obj.start_id, buffer, bufferOffset);
    // Serialize message field [end_id]
    bufferOffset = _serializer.string(obj.end_id, buffer, bufferOffset);
    // Serialize message field [distance]
    bufferOffset = _serializer.float32(obj.distance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PathSegmentInfo
    let len;
    let data = new PathSegmentInfo(null);
    // Deserialize message field [start_id]
    data.start_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [end_id]
    data.end_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [distance]
    data.distance = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.start_id.length;
    length += object.end_id.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/PathSegmentInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1177108c776ff861a843c40f49c83e33';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string start_id
    string end_id
    float32 distance
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PathSegmentInfo(null);
    if (msg.start_id !== undefined) {
      resolved.start_id = msg.start_id;
    }
    else {
      resolved.start_id = ''
    }

    if (msg.end_id !== undefined) {
      resolved.end_id = msg.end_id;
    }
    else {
      resolved.end_id = ''
    }

    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0.0
    }

    return resolved;
    }
};

module.exports = PathSegmentInfo;
