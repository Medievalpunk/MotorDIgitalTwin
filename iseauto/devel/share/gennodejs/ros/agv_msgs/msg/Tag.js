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

class Tag {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.tag_addr = null;
      this.anchor_addr = null;
      this.dist_to_anchor = null;
      this.tag_timestamp = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('tag_addr')) {
        this.tag_addr = initObj.tag_addr
      }
      else {
        this.tag_addr = '';
      }
      if (initObj.hasOwnProperty('anchor_addr')) {
        this.anchor_addr = initObj.anchor_addr
      }
      else {
        this.anchor_addr = '';
      }
      if (initObj.hasOwnProperty('dist_to_anchor')) {
        this.dist_to_anchor = initObj.dist_to_anchor
      }
      else {
        this.dist_to_anchor = 0.0;
      }
      if (initObj.hasOwnProperty('tag_timestamp')) {
        this.tag_timestamp = initObj.tag_timestamp
      }
      else {
        this.tag_timestamp = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Tag
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [tag_addr]
    bufferOffset = _serializer.string(obj.tag_addr, buffer, bufferOffset);
    // Serialize message field [anchor_addr]
    bufferOffset = _serializer.string(obj.anchor_addr, buffer, bufferOffset);
    // Serialize message field [dist_to_anchor]
    bufferOffset = _serializer.float32(obj.dist_to_anchor, buffer, bufferOffset);
    // Serialize message field [tag_timestamp]
    bufferOffset = _serializer.int32(obj.tag_timestamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Tag
    let len;
    let data = new Tag(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [tag_addr]
    data.tag_addr = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [anchor_addr]
    data.anchor_addr = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [dist_to_anchor]
    data.dist_to_anchor = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [tag_timestamp]
    data.tag_timestamp = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.tag_addr.length;
    length += object.anchor_addr.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/Tag';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5c6cb49b278d3ac5d857f32bab6a3e0e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    string tag_addr
    string anchor_addr
    float32 dist_to_anchor
    int32 tag_timestamp
    
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
    const resolved = new Tag(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.tag_addr !== undefined) {
      resolved.tag_addr = msg.tag_addr;
    }
    else {
      resolved.tag_addr = ''
    }

    if (msg.anchor_addr !== undefined) {
      resolved.anchor_addr = msg.anchor_addr;
    }
    else {
      resolved.anchor_addr = ''
    }

    if (msg.dist_to_anchor !== undefined) {
      resolved.dist_to_anchor = msg.dist_to_anchor;
    }
    else {
      resolved.dist_to_anchor = 0.0
    }

    if (msg.tag_timestamp !== undefined) {
      resolved.tag_timestamp = msg.tag_timestamp;
    }
    else {
      resolved.tag_timestamp = 0
    }

    return resolved;
    }
};

module.exports = Tag;
