// Auto-generated. Do not edit!

// (in-package ecu_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TrackControl = require('./TrackControl.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class VehicleControl {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.track_right = null;
      this.track_left = null;
      this.breaks = null;
      this.lights = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('track_right')) {
        this.track_right = initObj.track_right
      }
      else {
        this.track_right = new TrackControl();
      }
      if (initObj.hasOwnProperty('track_left')) {
        this.track_left = initObj.track_left
      }
      else {
        this.track_left = new TrackControl();
      }
      if (initObj.hasOwnProperty('breaks')) {
        this.breaks = initObj.breaks
      }
      else {
        this.breaks = false;
      }
      if (initObj.hasOwnProperty('lights')) {
        this.lights = initObj.lights
      }
      else {
        this.lights = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleControl
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [track_right]
    bufferOffset = TrackControl.serialize(obj.track_right, buffer, bufferOffset);
    // Serialize message field [track_left]
    bufferOffset = TrackControl.serialize(obj.track_left, buffer, bufferOffset);
    // Serialize message field [breaks]
    bufferOffset = _serializer.bool(obj.breaks, buffer, bufferOffset);
    // Serialize message field [lights]
    bufferOffset = _serializer.bool(obj.lights, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleControl
    let len;
    let data = new VehicleControl(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [track_right]
    data.track_right = TrackControl.deserialize(buffer, bufferOffset);
    // Deserialize message field [track_left]
    data.track_left = TrackControl.deserialize(buffer, bufferOffset);
    // Deserialize message field [breaks]
    data.breaks = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [lights]
    data.lights = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ecu_msgs/VehicleControl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c8b5113bd5fc6dbf622ebbca4f18f295';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    TrackControl track_right
    TrackControl track_left
    bool breaks
    bool lights
    
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
    MSG: ecu_msgs/TrackControl
    float64 speed
    bool break_status
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehicleControl(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.track_right !== undefined) {
      resolved.track_right = TrackControl.Resolve(msg.track_right)
    }
    else {
      resolved.track_right = new TrackControl()
    }

    if (msg.track_left !== undefined) {
      resolved.track_left = TrackControl.Resolve(msg.track_left)
    }
    else {
      resolved.track_left = new TrackControl()
    }

    if (msg.breaks !== undefined) {
      resolved.breaks = msg.breaks;
    }
    else {
      resolved.breaks = false
    }

    if (msg.lights !== undefined) {
      resolved.lights = msg.lights;
    }
    else {
      resolved.lights = false
    }

    return resolved;
    }
};

module.exports = VehicleControl;
