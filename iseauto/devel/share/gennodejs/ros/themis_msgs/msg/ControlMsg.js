// Auto-generated. Do not edit!

// (in-package themis_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DriveControl = require('./DriveControl.js');
let SystemControl = require('./SystemControl.js');
let ModeControl = require('./ModeControl.js');

//-----------------------------------------------------------

class ControlMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp = null;
      this.drive = null;
      this.system = null;
      this.mode = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp')) {
        this.timestamp = initObj.timestamp
      }
      else {
        this.timestamp = 0;
      }
      if (initObj.hasOwnProperty('drive')) {
        this.drive = initObj.drive
      }
      else {
        this.drive = new DriveControl();
      }
      if (initObj.hasOwnProperty('system')) {
        this.system = initObj.system
      }
      else {
        this.system = new SystemControl();
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = new ModeControl();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ControlMsg
    // Serialize message field [timestamp]
    bufferOffset = _serializer.uint64(obj.timestamp, buffer, bufferOffset);
    // Serialize message field [drive]
    bufferOffset = DriveControl.serialize(obj.drive, buffer, bufferOffset);
    // Serialize message field [system]
    bufferOffset = SystemControl.serialize(obj.system, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = ModeControl.serialize(obj.mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ControlMsg
    let len;
    let data = new ControlMsg(null);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [drive]
    data.drive = DriveControl.deserialize(buffer, bufferOffset);
    // Deserialize message field [system]
    data.system = SystemControl.deserialize(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = ModeControl.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 29;
  }

  static datatype() {
    // Returns string type for a message object
    return 'themis_msgs/ControlMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eaa6a2d954fb548e6a569f42edcfb266';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 timestamp
    DriveControl drive
    SystemControl system
    ModeControl mode
    
    ================================================================================
    MSG: themis_msgs/DriveControl
    bool enable
    float32 x_axis
    float32 y_axis
    bool tank_mode
    
    ================================================================================
    MSG: themis_msgs/SystemControl
    bool high_voltage
    bool fan_override
    bool generator
    bool work_lights
    bool signal_lights
    bool imd_override
    
    ================================================================================
    MSG: themis_msgs/ModeControl
    uint8 vehicle
    uint8 generator
    uint8 speed
    uint8 brake
    uint8 charge
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ControlMsg(null);
    if (msg.timestamp !== undefined) {
      resolved.timestamp = msg.timestamp;
    }
    else {
      resolved.timestamp = 0
    }

    if (msg.drive !== undefined) {
      resolved.drive = DriveControl.Resolve(msg.drive)
    }
    else {
      resolved.drive = new DriveControl()
    }

    if (msg.system !== undefined) {
      resolved.system = SystemControl.Resolve(msg.system)
    }
    else {
      resolved.system = new SystemControl()
    }

    if (msg.mode !== undefined) {
      resolved.mode = ModeControl.Resolve(msg.mode)
    }
    else {
      resolved.mode = new ModeControl()
    }

    return resolved;
    }
};

module.exports = ControlMsg;
