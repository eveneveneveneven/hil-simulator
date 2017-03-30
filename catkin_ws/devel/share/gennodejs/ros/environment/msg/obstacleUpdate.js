// Auto-generated. Do not edit!

// (in-package environment.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------

class obstacleUpdate {
  constructor() {
    this.msgType = '';
    this.obstacleID = '';
    this.x = 0.0;
    this.y = 0.0;
    this.psi = 0.0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type obstacleUpdate
    // Serialize message field [msgType]
    bufferInfo = _serializer.string(obj.msgType, bufferInfo);
    // Serialize message field [obstacleID]
    bufferInfo = _serializer.string(obj.obstacleID, bufferInfo);
    // Serialize message field [x]
    bufferInfo = _serializer.float64(obj.x, bufferInfo);
    // Serialize message field [y]
    bufferInfo = _serializer.float64(obj.y, bufferInfo);
    // Serialize message field [psi]
    bufferInfo = _serializer.float64(obj.psi, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type obstacleUpdate
    let tmp;
    let len;
    let data = new obstacleUpdate();
    // Deserialize message field [msgType]
    tmp = _deserializer.string(buffer);
    data.msgType = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [obstacleID]
    tmp = _deserializer.string(buffer);
    data.obstacleID = tmp.data;
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
    return 'environment/obstacleUpdate';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '450f2d7371e74d78202d24aa0ccdfb5b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string msgType
    string obstacleID
    float64 x
    float64 y
    float64 psi
    
    `;
  }

};

module.exports = obstacleUpdate;
