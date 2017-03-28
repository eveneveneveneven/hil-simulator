// Auto-generated. Do not edit!

// (in-package simulator_prototype.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ActuatorMessage {
  constructor() {
    this.header = new std_msgs.msg.Header();
    this.rightRPM = 0.0;
    this.leftRPM = 0.0;
    this.rightNozzle = 0.0;
    this.leftNozzle = 0.0;
    this.rightDeflector = 0.0;
    this.leftDeflector = 0.0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type ActuatorMessage
    // Serialize message field [header]
    bufferInfo = std_msgs.msg.Header.serialize(obj.header, bufferInfo);
    // Serialize message field [rightRPM]
    bufferInfo = _serializer.float64(obj.rightRPM, bufferInfo);
    // Serialize message field [leftRPM]
    bufferInfo = _serializer.float64(obj.leftRPM, bufferInfo);
    // Serialize message field [rightNozzle]
    bufferInfo = _serializer.float64(obj.rightNozzle, bufferInfo);
    // Serialize message field [leftNozzle]
    bufferInfo = _serializer.float64(obj.leftNozzle, bufferInfo);
    // Serialize message field [rightDeflector]
    bufferInfo = _serializer.float64(obj.rightDeflector, bufferInfo);
    // Serialize message field [leftDeflector]
    bufferInfo = _serializer.float64(obj.leftDeflector, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type ActuatorMessage
    let tmp;
    let len;
    let data = new ActuatorMessage();
    // Deserialize message field [header]
    tmp = std_msgs.msg.Header.deserialize(buffer);
    data.header = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [rightRPM]
    tmp = _deserializer.float64(buffer);
    data.rightRPM = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [leftRPM]
    tmp = _deserializer.float64(buffer);
    data.leftRPM = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [rightNozzle]
    tmp = _deserializer.float64(buffer);
    data.rightNozzle = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [leftNozzle]
    tmp = _deserializer.float64(buffer);
    data.leftNozzle = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [rightDeflector]
    tmp = _deserializer.float64(buffer);
    data.rightDeflector = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [leftDeflector]
    tmp = _deserializer.float64(buffer);
    data.leftDeflector = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'simulator_prototype/ActuatorMessage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fb829d59d9a04899ffe787adb09f39e9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    float64 rightRPM
    float64 leftRPM
    float64 rightNozzle
    float64 leftNozzle
    float64 rightDeflector
    float64 leftDeflector
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

module.exports = ActuatorMessage;
