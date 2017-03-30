// Auto-generated. Do not edit!

// (in-package simulator_messages.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------

class Environment {
  constructor() {
    this.paused = false;
    this.latitude = 0.0;
    this.longitude = 0.0;
    this.meanWindSpeed = 0.0;
    this.meanWindDirection = 0.0;
    this.meanCurrentSpeed = 0.0;
    this.meanCurrentDirection = 0.0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type Environment
    // Serialize message field [paused]
    bufferInfo = _serializer.bool(obj.paused, bufferInfo);
    // Serialize message field [latitude]
    bufferInfo = _serializer.float64(obj.latitude, bufferInfo);
    // Serialize message field [longitude]
    bufferInfo = _serializer.float64(obj.longitude, bufferInfo);
    // Serialize message field [meanWindSpeed]
    bufferInfo = _serializer.float64(obj.meanWindSpeed, bufferInfo);
    // Serialize message field [meanWindDirection]
    bufferInfo = _serializer.float64(obj.meanWindDirection, bufferInfo);
    // Serialize message field [meanCurrentSpeed]
    bufferInfo = _serializer.float64(obj.meanCurrentSpeed, bufferInfo);
    // Serialize message field [meanCurrentDirection]
    bufferInfo = _serializer.float64(obj.meanCurrentDirection, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type Environment
    let tmp;
    let len;
    let data = new Environment();
    // Deserialize message field [paused]
    tmp = _deserializer.bool(buffer);
    data.paused = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [latitude]
    tmp = _deserializer.float64(buffer);
    data.latitude = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [longitude]
    tmp = _deserializer.float64(buffer);
    data.longitude = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [meanWindSpeed]
    tmp = _deserializer.float64(buffer);
    data.meanWindSpeed = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [meanWindDirection]
    tmp = _deserializer.float64(buffer);
    data.meanWindDirection = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [meanCurrentSpeed]
    tmp = _deserializer.float64(buffer);
    data.meanCurrentSpeed = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [meanCurrentDirection]
    tmp = _deserializer.float64(buffer);
    data.meanCurrentDirection = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'simulator_messages/Environment';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c7b07d3af6ed0820d5cb2f920af3dd4f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool paused
    float64 latitude
    float64 longitude
    float64 meanWindSpeed
    float64 meanWindDirection
    float64 meanCurrentSpeed
    float64 meanCurrentDirection
    `;
  }

};

module.exports = Environment;
