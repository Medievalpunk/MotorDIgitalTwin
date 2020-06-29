// Auto-generated. Do not edit!

// (in-package agv_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let EncoderData = require('./EncoderData.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class EncoderDataStamped {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.enc = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('enc')) {
        this.enc = initObj.enc
      }
      else {
        this.enc = new EncoderData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EncoderDataStamped
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [enc]
    bufferOffset = EncoderData.serialize(obj.enc, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EncoderDataStamped
    let len;
    let data = new EncoderDataStamped(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [enc]
    data.enc = EncoderData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/EncoderDataStamped';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '91b91fb5bbd81473685cfae3dfecdbe1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    EncoderData enc
    
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
    MSG: agv_msgs/EncoderData
    float32 velocity
    float32 distance
    
    uint8 units
    uint8 RPM=0     # velocity in rpm,      distance in rotations
    uint8 RAD_S=1   # velocity in rad/s,    distance in radians
    uint8 M_S=2     # velocity in m/s,      distance in metres
    uint8 TICKS=3   # velocity in ticks/s,  distance in ticks
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EncoderDataStamped(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.enc !== undefined) {
      resolved.enc = EncoderData.Resolve(msg.enc)
    }
    else {
      resolved.enc = new EncoderData()
    }

    return resolved;
    }
};

module.exports = EncoderDataStamped;
