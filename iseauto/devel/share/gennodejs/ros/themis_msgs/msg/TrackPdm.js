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

class TrackPdm {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.track_coolant_temp = null;
      this.brake_status = null;
    }
    else {
      if (initObj.hasOwnProperty('track_coolant_temp')) {
        this.track_coolant_temp = initObj.track_coolant_temp
      }
      else {
        this.track_coolant_temp = 0.0;
      }
      if (initObj.hasOwnProperty('brake_status')) {
        this.brake_status = initObj.brake_status
      }
      else {
        this.brake_status = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrackPdm
    // Serialize message field [track_coolant_temp]
    bufferOffset = _serializer.float32(obj.track_coolant_temp, buffer, bufferOffset);
    // Serialize message field [brake_status]
    bufferOffset = _serializer.bool(obj.brake_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrackPdm
    let len;
    let data = new TrackPdm(null);
    // Deserialize message field [track_coolant_temp]
    data.track_coolant_temp = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [brake_status]
    data.brake_status = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'themis_msgs/TrackPdm';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '65d433095f8620e2fabfbc1e2f848f60';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 track_coolant_temp
    bool brake_status
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrackPdm(null);
    if (msg.track_coolant_temp !== undefined) {
      resolved.track_coolant_temp = msg.track_coolant_temp;
    }
    else {
      resolved.track_coolant_temp = 0.0
    }

    if (msg.brake_status !== undefined) {
      resolved.brake_status = msg.brake_status;
    }
    else {
      resolved.brake_status = false
    }

    return resolved;
    }
};

module.exports = TrackPdm;
