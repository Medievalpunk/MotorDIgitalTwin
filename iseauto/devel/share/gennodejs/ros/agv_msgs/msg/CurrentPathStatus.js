// Auto-generated. Do not edit!

// (in-package agv_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let NavPath = require('./NavPath.js');
let PathSegmentInfo = require('./PathSegmentInfo.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class CurrentPathStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.path = null;
      this.blockages = null;
      this.planner_name = null;
      this.revision = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('path')) {
        this.path = initObj.path
      }
      else {
        this.path = new NavPath();
      }
      if (initObj.hasOwnProperty('blockages')) {
        this.blockages = initObj.blockages
      }
      else {
        this.blockages = [];
      }
      if (initObj.hasOwnProperty('planner_name')) {
        this.planner_name = initObj.planner_name
      }
      else {
        this.planner_name = '';
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
    // Serializes a message object of type CurrentPathStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [path]
    bufferOffset = NavPath.serialize(obj.path, buffer, bufferOffset);
    // Serialize message field [blockages]
    // Serialize the length for message field [blockages]
    bufferOffset = _serializer.uint32(obj.blockages.length, buffer, bufferOffset);
    obj.blockages.forEach((val) => {
      bufferOffset = PathSegmentInfo.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [planner_name]
    bufferOffset = _serializer.string(obj.planner_name, buffer, bufferOffset);
    // Serialize message field [revision]
    bufferOffset = _serializer.uint16(obj.revision, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CurrentPathStatus
    let len;
    let data = new CurrentPathStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [path]
    data.path = NavPath.deserialize(buffer, bufferOffset);
    // Deserialize message field [blockages]
    // Deserialize array length for message field [blockages]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.blockages = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.blockages[i] = PathSegmentInfo.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [planner_name]
    data.planner_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [revision]
    data.revision = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += NavPath.getMessageSize(object.path);
    object.blockages.forEach((val) => {
      length += PathSegmentInfo.getMessageSize(val);
    });
    length += object.planner_name.length;
    return length + 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/CurrentPathStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ea2564236946447786963cb1fb92e625';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    agv_msgs/NavPath path
    agv_msgs/PathSegmentInfo[] blockages
    string planner_name
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
    MSG: agv_msgs/NavPath
    string[] ids
    uint16 type
    ================================================================================
    MSG: agv_msgs/PathSegmentInfo
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
    const resolved = new CurrentPathStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.path !== undefined) {
      resolved.path = NavPath.Resolve(msg.path)
    }
    else {
      resolved.path = new NavPath()
    }

    if (msg.blockages !== undefined) {
      resolved.blockages = new Array(msg.blockages.length);
      for (let i = 0; i < resolved.blockages.length; ++i) {
        resolved.blockages[i] = PathSegmentInfo.Resolve(msg.blockages[i]);
      }
    }
    else {
      resolved.blockages = []
    }

    if (msg.planner_name !== undefined) {
      resolved.planner_name = msg.planner_name;
    }
    else {
      resolved.planner_name = ''
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

module.exports = CurrentPathStatus;
