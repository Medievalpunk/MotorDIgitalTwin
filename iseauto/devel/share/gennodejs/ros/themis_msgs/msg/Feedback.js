// Auto-generated. Do not edit!

// (in-package themis_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Battery = require('./Battery.js');
let Track = require('./Track.js');
let Generator = require('./Generator.js');
let Vehicle = require('./Vehicle.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Feedback {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.battery = null;
      this.left = null;
      this.right = null;
      this.generator = null;
      this.vehicle = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('battery')) {
        this.battery = initObj.battery
      }
      else {
        this.battery = new Battery();
      }
      if (initObj.hasOwnProperty('left')) {
        this.left = initObj.left
      }
      else {
        this.left = new Track();
      }
      if (initObj.hasOwnProperty('right')) {
        this.right = initObj.right
      }
      else {
        this.right = new Track();
      }
      if (initObj.hasOwnProperty('generator')) {
        this.generator = initObj.generator
      }
      else {
        this.generator = new Generator();
      }
      if (initObj.hasOwnProperty('vehicle')) {
        this.vehicle = initObj.vehicle
      }
      else {
        this.vehicle = new Vehicle();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Feedback
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [battery]
    bufferOffset = Battery.serialize(obj.battery, buffer, bufferOffset);
    // Serialize message field [left]
    bufferOffset = Track.serialize(obj.left, buffer, bufferOffset);
    // Serialize message field [right]
    bufferOffset = Track.serialize(obj.right, buffer, bufferOffset);
    // Serialize message field [generator]
    bufferOffset = Generator.serialize(obj.generator, buffer, bufferOffset);
    // Serialize message field [vehicle]
    bufferOffset = Vehicle.serialize(obj.vehicle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Feedback
    let len;
    let data = new Feedback(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [battery]
    data.battery = Battery.deserialize(buffer, bufferOffset);
    // Deserialize message field [left]
    data.left = Track.deserialize(buffer, bufferOffset);
    // Deserialize message field [right]
    data.right = Track.deserialize(buffer, bufferOffset);
    // Deserialize message field [generator]
    data.generator = Generator.deserialize(buffer, bufferOffset);
    // Deserialize message field [vehicle]
    data.vehicle = Vehicle.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += Battery.getMessageSize(object.battery);
    length += Generator.getMessageSize(object.generator);
    length += Vehicle.getMessageSize(object.vehicle);
    return length + 52;
  }

  static datatype() {
    // Returns string type for a message object
    return 'themis_msgs/Feedback';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8b3115dccfc099de2189cfdd7df2ec24';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    Battery battery
    Track left
    Track right
    Generator generator
    Vehicle vehicle
    
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
    MSG: themis_msgs/Battery
    State air_state
    float32 low_voltage
    float32 high_voltage
    float32 charge_level
    
    # uint16 UNDEFINED_STATE = 0
    # uint16 INIT_STATE = 1
    # uint16 OFF_STATE = 2
    # uint16 SWITCH_ON_STATE = 3
    # uint16 ON_STATE = 4
    # uint16 SWITCH_OFF_STATE = 5
    # uint16 CHARGE_STATE = 6
    
    ================================================================================
    MSG: themis_msgs/State
    uint16 id
    string desc
    
    ================================================================================
    MSG: themis_msgs/Track
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
    
    ================================================================================
    MSG: themis_msgs/Generator
    State state
    float32 fuel_level
    Sevcon sevcon
    GeneratorPdm pdm
    
    ================================================================================
    MSG: themis_msgs/GeneratorPdm
    float32 motor_coolant_temp
    float32 engine_coolant_temp
    
    ================================================================================
    MSG: themis_msgs/Vehicle
    State state
    float32 speed
    State drive_state
    uint8 brake_feedback
    bool imd_error
    VehicleMode mode
    
    ================================================================================
    MSG: themis_msgs/VehicleMode
    State vehicle
    State generator
    State speed
    State brake
    State charge
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Feedback(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.battery !== undefined) {
      resolved.battery = Battery.Resolve(msg.battery)
    }
    else {
      resolved.battery = new Battery()
    }

    if (msg.left !== undefined) {
      resolved.left = Track.Resolve(msg.left)
    }
    else {
      resolved.left = new Track()
    }

    if (msg.right !== undefined) {
      resolved.right = Track.Resolve(msg.right)
    }
    else {
      resolved.right = new Track()
    }

    if (msg.generator !== undefined) {
      resolved.generator = Generator.Resolve(msg.generator)
    }
    else {
      resolved.generator = new Generator()
    }

    if (msg.vehicle !== undefined) {
      resolved.vehicle = Vehicle.Resolve(msg.vehicle)
    }
    else {
      resolved.vehicle = new Vehicle()
    }

    return resolved;
    }
};

module.exports = Feedback;
