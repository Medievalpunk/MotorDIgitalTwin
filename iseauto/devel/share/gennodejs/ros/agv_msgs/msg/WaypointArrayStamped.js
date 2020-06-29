// Auto-generated. Do not edit!

// (in-package agv_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Waypoint = require('./Waypoint.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class WaypointArrayStamped {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.points = null;
      this.revision = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('points')) {
        this.points = initObj.points
      }
      else {
        this.points = [];
      }
      if (initObj.hasOwnProperty('revision')) {
        this.revision = initObj.revision
      }
      else {
        this.revision = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WaypointArrayStamped
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [points]
    // Serialize the length for message field [points]
    bufferOffset = _serializer.uint32(obj.points.length, buffer, bufferOffset);
    obj.points.forEach((val) => {
      bufferOffset = Waypoint.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [revision]
    bufferOffset = _serializer.uint16(obj.revision, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WaypointArrayStamped
    let len;
    let data = new WaypointArrayStamped(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [points]
    // Deserialize array length for message field [points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points[i] = Waypoint.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [revision]
    data.revision = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.points.forEach((val) => {
      length += Waypoint.getMessageSize(val);
    });
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/WaypointArrayStamped';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '808c21c32e2c422f32f0484a3daade41';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    agv_msgs/Waypoint[] points
    uint16 revision
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: agv_msgs/Waypoint
    float32 x
    float32 y
    float32 yaw
    string goal_id
    string frame_id
    uint8 state
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WaypointArrayStamped(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.points !== undefined) {
      resolved.points = new Array(msg.points.length);
      for (let i = 0; i < resolved.points.length; ++i) {
        resolved.points[i] = Waypoint.Resolve(msg.points[i]);
      }
    }
    else {
      resolved.points = []
    }

    if (msg.revision !== undefined) {
      resolved.revision = msg.revision;
    }
    else {
      resolved.revision = 0
    }

    return resolved;
    }
};

module.exports = WaypointArrayStamped;
