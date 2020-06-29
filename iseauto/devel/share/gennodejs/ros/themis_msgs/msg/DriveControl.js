// Auto-generated. Do not edit!

// (in-package themis_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class DriveControl {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.enable = null;
      this.x_axis = null;
      this.y_axis = null;
      this.tank_mode = null;
    }
    else {
      if (initObj.hasOwnProperty('enable')) {
        this.enable = initObj.enable
      }
      else {
        this.enable = false;
      }
      if (initObj.hasOwnProperty('x_axis')) {
        this.x_axis = initObj.x_axis
      }
      else {
        this.x_axis = 0.0;
      }
      if (initObj.hasOwnProperty('y_axis')) {
        this.y_axis = initObj.y_axis
      }
      else {
        this.y_axis = 0.0;
      }
      if (initObj.hasOwnProperty('tank_mode')) {
        this.tank_mode = initObj.tank_mode
      }
      else {
        this.tank_mode = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DriveControl
    // Serialize message field [enable]
    bufferOffset = _serializer.bool(obj.enable, buffer, bufferOffset);
    // Serialize message field [x_axis]
    bufferOffset = _serializer.float32(obj.x_axis, buffer, bufferOffset);
    // Serialize message field [y_axis]
    bufferOffset = _serializer.float32(obj.y_axis, buffer, bufferOffset);
    // Serialize message field [tank_mode]
    bufferOffset = _serializer.bool(obj.tank_mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DriveControl
    let len;
    let data = new DriveControl(null);
    // Deserialize message field [enable]
    data.enable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [x_axis]
    data.x_axis = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y_axis]
    data.y_axis = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [tank_mode]
    data.tank_mode = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'themis_msgs/DriveControl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a3ab8998e46efefe9d244d241f9b70d1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool enable
    float32 x_axis
    float32 y_axis
    bool tank_mode
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DriveControl(null);
    if (msg.enable !== undefined) {
      resolved.enable = msg.enable;
    }
    else {
      resolved.enable = false
    }

    if (msg.x_axis !== undefined) {
      resolved.x_axis = msg.x_axis;
    }
    else {
      resolved.x_axis = 0.0
    }

    if (msg.y_axis !== undefined) {
      resolved.y_axis = msg.y_axis;
    }
    else {
      resolved.y_axis = 0.0
    }

    if (msg.tank_mode !== undefined) {
      resolved.tank_mode = msg.tank_mode;
    }
    else {
      resolved.tank_mode = false
    }

    return resolved;
    }
};

module.exports = DriveControl;
