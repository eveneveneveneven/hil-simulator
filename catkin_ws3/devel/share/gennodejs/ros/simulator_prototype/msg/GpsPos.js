// Auto-generated. Do not edit!

// (in-package simulator_prototype.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------

class GpsPos {
  constructor() {
    this.Time = 0;
    this.Latitude = 0.0;
    this.Longitude = 0.0;
    this.Altitude = 0.0;
    this.Heading = 0.0;
    this.X_vel = 0.0;
    this.Y_vel = 0.0;
    this.Z_vel = 0.0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type GpsPos
    // Serialize message field [Time]
    bufferInfo = _serializer.int64(obj.Time, bufferInfo);
    // Serialize message field [Latitude]
    bufferInfo = _serializer.float64(obj.Latitude, bufferInfo);
    // Serialize message field [Longitude]
    bufferInfo = _serializer.float64(obj.Longitude, bufferInfo);
    // Serialize message field [Altitude]
    bufferInfo = _serializer.float64(obj.Altitude, bufferInfo);
    // Serialize message field [Heading]
    bufferInfo = _serializer.float64(obj.Heading, bufferInfo);
    // Serialize message field [X_vel]
    bufferInfo = _serializer.float64(obj.X_vel, bufferInfo);
    // Serialize message field [Y_vel]
    bufferInfo = _serializer.float64(obj.Y_vel, bufferInfo);
    // Serialize message field [Z_vel]
    bufferInfo = _serializer.float64(obj.Z_vel, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type GpsPos
    let tmp;
    let len;
    let data = new GpsPos();
    // Deserialize message field [Time]
    tmp = _deserializer.int64(buffer);
    data.Time = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [Latitude]
    tmp = _deserializer.float64(buffer);
    data.Latitude = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [Longitude]
    tmp = _deserializer.float64(buffer);
    data.Longitude = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [Altitude]
    tmp = _deserializer.float64(buffer);
    data.Altitude = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [Heading]
    tmp = _deserializer.float64(buffer);
    data.Heading = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [X_vel]
    tmp = _deserializer.float64(buffer);
    data.X_vel = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [Y_vel]
    tmp = _deserializer.float64(buffer);
    data.Y_vel = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [Z_vel]
    tmp = _deserializer.float64(buffer);
    data.Z_vel = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'simulator_prototype/GpsPos';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'efb31c51c19a644c903697a51ea46779';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 Time
    float64 Latitude
    float64 Longitude
    float64 Altitude
    float64 Heading
    float64 X_vel
    float64 Y_vel
    float64 Z_vel
    
    `;
  }

};

module.exports = GpsPos;
