// Auto-generated. Do not edit!

// (in-package robot_nodes.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class actionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.block = null;
      this.bumperside = null;
      this.yaw = null;
      this.yposition = null;
      this.wall = null;
      this.nan = null;
    }
    else {
      if (initObj.hasOwnProperty('block')) {
        this.block = initObj.block
      }
      else {
        this.block = false;
      }
      if (initObj.hasOwnProperty('bumperside')) {
        this.bumperside = initObj.bumperside
      }
      else {
        this.bumperside = 0;
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
      if (initObj.hasOwnProperty('yposition')) {
        this.yposition = initObj.yposition
      }
      else {
        this.yposition = 0.0;
      }
      if (initObj.hasOwnProperty('wall')) {
        this.wall = initObj.wall
      }
      else {
        this.wall = 0;
      }
      if (initObj.hasOwnProperty('nan')) {
        this.nan = initObj.nan
      }
      else {
        this.nan = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type actionRequest
    // Serialize message field [block]
    bufferOffset = _serializer.bool(obj.block, buffer, bufferOffset);
    // Serialize message field [bumperside]
    bufferOffset = _serializer.uint32(obj.bumperside, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float32(obj.yaw, buffer, bufferOffset);
    // Serialize message field [yposition]
    bufferOffset = _serializer.float32(obj.yposition, buffer, bufferOffset);
    // Serialize message field [wall]
    bufferOffset = _serializer.int32(obj.wall, buffer, bufferOffset);
    // Serialize message field [nan]
    bufferOffset = _serializer.int32(obj.nan, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type actionRequest
    let len;
    let data = new actionRequest(null);
    // Deserialize message field [block]
    data.block = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [bumperside]
    data.bumperside = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yposition]
    data.yposition = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [wall]
    data.wall = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [nan]
    data.nan = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 21;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_nodes/actionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4cbd02191233d73a2aeceb6fe421c0d5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool block
    uint32 bumperside
    float32 yaw
    float32 yposition
    int32 wall
    int32 nan
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new actionRequest(null);
    if (msg.block !== undefined) {
      resolved.block = msg.block;
    }
    else {
      resolved.block = false
    }

    if (msg.bumperside !== undefined) {
      resolved.bumperside = msg.bumperside;
    }
    else {
      resolved.bumperside = 0
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    if (msg.yposition !== undefined) {
      resolved.yposition = msg.yposition;
    }
    else {
      resolved.yposition = 0.0
    }

    if (msg.wall !== undefined) {
      resolved.wall = msg.wall;
    }
    else {
      resolved.wall = 0
    }

    if (msg.nan !== undefined) {
      resolved.nan = msg.nan;
    }
    else {
      resolved.nan = 0
    }

    return resolved;
    }
};

class actionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.takingphoto = null;
      this.clean = null;
      this.findingdoor = null;
      this.info = null;
    }
    else {
      if (initObj.hasOwnProperty('takingphoto')) {
        this.takingphoto = initObj.takingphoto
      }
      else {
        this.takingphoto = false;
      }
      if (initObj.hasOwnProperty('clean')) {
        this.clean = initObj.clean
      }
      else {
        this.clean = false;
      }
      if (initObj.hasOwnProperty('findingdoor')) {
        this.findingdoor = initObj.findingdoor
      }
      else {
        this.findingdoor = false;
      }
      if (initObj.hasOwnProperty('info')) {
        this.info = initObj.info
      }
      else {
        this.info = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type actionResponse
    // Serialize message field [takingphoto]
    bufferOffset = _serializer.bool(obj.takingphoto, buffer, bufferOffset);
    // Serialize message field [clean]
    bufferOffset = _serializer.bool(obj.clean, buffer, bufferOffset);
    // Serialize message field [findingdoor]
    bufferOffset = _serializer.bool(obj.findingdoor, buffer, bufferOffset);
    // Serialize message field [info]
    bufferOffset = _serializer.string(obj.info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type actionResponse
    let len;
    let data = new actionResponse(null);
    // Deserialize message field [takingphoto]
    data.takingphoto = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [clean]
    data.clean = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [findingdoor]
    data.findingdoor = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [info]
    data.info = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.info.length;
    return length + 7;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_nodes/actionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a0c1ff9c1c60f1ec537e602d58f5a4f0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool takingphoto
    bool clean
    bool findingdoor
    string info
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new actionResponse(null);
    if (msg.takingphoto !== undefined) {
      resolved.takingphoto = msg.takingphoto;
    }
    else {
      resolved.takingphoto = false
    }

    if (msg.clean !== undefined) {
      resolved.clean = msg.clean;
    }
    else {
      resolved.clean = false
    }

    if (msg.findingdoor !== undefined) {
      resolved.findingdoor = msg.findingdoor;
    }
    else {
      resolved.findingdoor = false
    }

    if (msg.info !== undefined) {
      resolved.info = msg.info;
    }
    else {
      resolved.info = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: actionRequest,
  Response: actionResponse,
  md5sum() { return '2c9f29db40e0d32cd3790aa92a5e2750'; },
  datatype() { return 'robot_nodes/action'; }
};
