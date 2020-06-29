// Auto-generated. Do not edit!

// (in-package agv_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class DriveMode {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.mode = null;
      this.deviation = null;
      this.change_time = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
      if (initObj.hasOwnProperty('deviation')) {
        this.deviation = initObj.deviation
      }
      else {
        this.deviation = 0.0;
      }
      if (initObj.hasOwnProperty('change_time')) {
        this.change_time = initObj.change_time
      }
      else {
        this.change_time = {secs: 0, nsecs: 0};
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DriveMode
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.uint8(obj.mode, buffer, bufferOffset);
    // Serialize message field [deviation]
    bufferOffset = _serializer.float64(obj.deviation, buffer, bufferOffset);
    // Serialize message field [change_time]
    bufferOffset = _serializer.time(obj.change_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DriveMode
    let len;
    let data = new DriveMode(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [deviation]
    data.deviation = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [change_time]
    data.change_time = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/DriveMode';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '948b56633c65a320ea3f2c754c335b0b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    uint8 UNKNOWN = 0
    uint8 SLOW = 1
    uint8 TURNING = 2
    uint8 BACKWARD = 3
    uint8 FORWARD = 4
    uint8 mode
    float64 deviation
    time change_time
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DriveMode(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    if (msg.deviation !== undefined) {
      resolved.deviation = msg.deviation;
    }
    else {
      resolved.deviation = 0.0
    }

    if (msg.change_time !== undefined) {
      resolved.change_time = msg.change_time;
    }
    else {
      resolved.change_time = {secs: 0, nsecs: 0}
    }

    return resolved;
    }
};

// Constants for message
DriveMode.Constants = {
  UNKNOWN: 0,
  SLOW: 1,
  TURNING: 2,
  BACKWARD: 3,
  FORWARD: 4,
}

module.exports = DriveMode;
