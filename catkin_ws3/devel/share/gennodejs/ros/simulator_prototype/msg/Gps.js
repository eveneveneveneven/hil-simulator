// Auto-generated. Do not edit!

// (in-package simulator_prototype.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Gps {
  constructor() {
    this.header = new std_msgs.msg.Header();
    this.latitude = 0.0;
    this.longitude = 0.0;
    this.altitude = 0.0;
    this.heading = 0.0;
    this.headingRate = 0.0;
    this.track = 0.0;
    this.speed = 0.0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type Gps
    // Serialize message field [header]
    bufferInfo = std_msgs.msg.Header.serialize(obj.header, bufferInfo);
    // Serialize message field [latitude]
    bufferInfo = _serializer.float64(obj.latitude, bufferInfo);
    // Serialize message field [longitude]
    bufferInfo = _serializer.float64(obj.longitude, bufferInfo);
    // Serialize message field [altitude]
    bufferInfo = _serializer.float64(obj.altitude, bufferInfo);
    // Serialize message field [heading]
    bufferInfo = _serializer.float64(obj.heading, bufferInfo);
    // Serialize message field [headingRate]
    bufferInfo = _serializer.float64(obj.headingRate, bufferInfo);
    // Serialize message field [track]
    bufferInfo = _serializer.float64(obj.track, bufferInfo);
    // Serialize message field [speed]
    bufferInfo = _serializer.float64(obj.speed, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type Gps
    let tmp;
    let len;
    let data = new Gps();
    // Deserialize message field [header]
    tmp = std_msgs.msg.Header.deserialize(buffer);
    data.header = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [latitude]
    tmp = _deserializer.float64(buffer);
    data.latitude = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [longitude]
    tmp = _deserializer.float64(buffer);
    data.longitude = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [altitude]
    tmp = _deserializer.float64(buffer);
    data.altitude = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [heading]
    tmp = _deserializer.float64(buffer);
    data.heading = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [headingRate]
    tmp = _deserializer.float64(buffer);
    data.headingRate = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [track]
    tmp = _deserializer.float64(buffer);
    data.track = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [speed]
    tmp = _deserializer.float64(buffer);
    data.speed = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'simulator_prototype/Gps';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fabe52f68c7f92616561ddbc3f435aee';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    float64 latitude
    float64 longitude
    float64 altitude
    float64 heading
    float64 headingRate
    float64 track
    float64 speed
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
    # 0: no frame
    # 1: global frame
    string frame_id
    
    `;
  }

};

module.exports = Gps;
