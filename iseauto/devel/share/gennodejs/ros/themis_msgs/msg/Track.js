// Auto-generated. Do not edit!

// (in-package themis_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Sevcon = require('./Sevcon.js');
let TrackPdm = require('./TrackPdm.js');

//-----------------------------------------------------------

class Track {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sevcon = null;
      this.pdm = null;
    }
    else {
      if (initObj.hasOwnProperty('sevcon')) {
        this.sevcon = initObj.sevcon
      }
      else {
        this.sevcon = new Sevcon();
      }
      if (initObj.hasOwnProperty('pdm')) {
        this.pdm = initObj.pdm
      }
      else {
        this.pdm = new TrackPdm();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Track
    // Serialize message field [sevcon]
    bufferOffset = Sevcon.serialize(obj.sevcon, buffer, bufferOffset);
    // Serialize message field [pdm]
    bufferOffset = TrackPdm.serialize(obj.pdm, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Track
    let len;
    let data = new Track(null);
    // Deserialize message field [sevcon]
    data.sevcon = Sevcon.deserialize(buffer, bufferOffset);
    // Deserialize message field [pdm]
    data.pdm = TrackPdm.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 26;
  }

  static datatype() {
    // Returns string type for a message object
    return 'themis_msgs/Track';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'aa218d79e211eae1ef0c9fb3af2a36a1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Sevcon sevcon
    TrackPdm pdm
    
    ================================================================================
    MSG: themis_msgs/Sevcon
    uint16 hour_count
    int32 real_rpm
    float32 real_torque
    float32 battery_current
    float32 battery_voltage
    int16 motor_temp
    int8 temp
    
    ================================================================================
    MSG: themis_msgs/TrackPdm
    float32 track_coolant_temp
    bool brake_status
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Track(null);
    if (msg.sevcon !== undefined) {
      resolved.sevcon = Sevcon.Resolve(msg.sevcon)
    }
    else {
      resolved.sevcon = new Sevcon()
    }

    if (msg.pdm !== undefined) {
      resolved.pdm = TrackPdm.Resolve(msg.pdm)
    }
    else {
      resolved.pdm = new TrackPdm()
    }

    return resolved;
    }
};

module.exports = Track;
