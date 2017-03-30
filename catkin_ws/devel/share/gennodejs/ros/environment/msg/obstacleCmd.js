// Auto-generated. Do not edit!

// (in-package environment.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------

class obstacleCmd {
  constructor() {
    this.cmdSpecifier = '';
    this.receiverID = '';
    this.x = 0.0;
    this.y = 0.0;
    this.psi = 0.0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type obstacleCmd
    // Serialize message field [cmdSpecifier]
    bufferInfo = _serializer.string(obj.cmdSpecifier, bufferInfo);
    // Serialize message field [receiverID]
    bufferInfo = _serializer.string(obj.receiverID, bufferInfo);
    // Serialize message field [x]
    bufferInfo = _serializer.float64(obj.x, bufferInfo);
    // Serialize message field [y]
    bufferInfo = _serializer.float64(obj.y, bufferInfo);
    // Serialize message field [psi]
    bufferInfo = _serializer.float64(obj.psi, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type obstacleCmd
    let tmp;
    let len;
    let data = new obstacleCmd();
    // Deserialize message field [cmdSpecifier]
    tmp = _deserializer.string(buffer);
    data.cmdSpecifier = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [receiverID]
    tmp = _deserializer.string(buffer);
    data.receiverID = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [x]
    tmp = _deserializer.float64(buffer);
    data.x = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [y]
    tmp = _deserializer.float64(buffer);
    data.y = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [psi]
    tmp = _deserializer.float64(buffer);
    data.psi = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'environment/obstacleCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '73d0006ff3da56034acc0179aa503208';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string cmdSpecifier
    string receiverID
    float64 x
    float64 y
    float64 psi
    
    `;
  }

};

module.exports = obstacleCmd;
