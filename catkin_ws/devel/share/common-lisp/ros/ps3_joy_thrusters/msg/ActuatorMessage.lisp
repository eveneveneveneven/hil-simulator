; Auto-generated. Do not edit!


(cl:in-package ps3_joy_thrusters-msg)


;//! \htmlinclude ActuatorMessage.msg.html

(cl:defclass <ActuatorMessage> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (rightRPM
    :reader rightRPM
    :initarg :rightRPM
    :type cl:float
    :initform 0.0)
   (leftRPM
    :reader leftRPM
    :initarg :leftRPM
    :type cl:float
    :initform 0.0)
   (rightNozzle
    :reader rightNozzle
    :initarg :rightNozzle
    :type cl:float
    :initform 0.0)
   (leftNozzle
    :reader leftNozzle
    :initarg :leftNozzle
    :type cl:float
    :initform 0.0)
   (rightDeflector
    :reader rightDeflector
    :initarg :rightDeflector
    :type cl:float
    :initform 0.0)
   (leftDeflector
    :reader leftDeflector
    :initarg :leftDeflector
    :type cl:float
    :initform 0.0))
)

(cl:defclass ActuatorMessage (<ActuatorMessage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ActuatorMessage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ActuatorMessage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ps3_joy_thrusters-msg:<ActuatorMessage> is deprecated: use ps3_joy_thrusters-msg:ActuatorMessage instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ActuatorMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ps3_joy_thrusters-msg:header-val is deprecated.  Use ps3_joy_thrusters-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'rightRPM-val :lambda-list '(m))
(cl:defmethod rightRPM-val ((m <ActuatorMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ps3_joy_thrusters-msg:rightRPM-val is deprecated.  Use ps3_joy_thrusters-msg:rightRPM instead.")
  (rightRPM m))

(cl:ensure-generic-function 'leftRPM-val :lambda-list '(m))
(cl:defmethod leftRPM-val ((m <ActuatorMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ps3_joy_thrusters-msg:leftRPM-val is deprecated.  Use ps3_joy_thrusters-msg:leftRPM instead.")
  (leftRPM m))

(cl:ensure-generic-function 'rightNozzle-val :lambda-list '(m))
(cl:defmethod rightNozzle-val ((m <ActuatorMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ps3_joy_thrusters-msg:rightNozzle-val is deprecated.  Use ps3_joy_thrusters-msg:rightNozzle instead.")
  (rightNozzle m))

(cl:ensure-generic-function 'leftNozzle-val :lambda-list '(m))
(cl:defmethod leftNozzle-val ((m <ActuatorMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ps3_joy_thrusters-msg:leftNozzle-val is deprecated.  Use ps3_joy_thrusters-msg:leftNozzle instead.")
  (leftNozzle m))

(cl:ensure-generic-function 'rightDeflector-val :lambda-list '(m))
(cl:defmethod rightDeflector-val ((m <ActuatorMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ps3_joy_thrusters-msg:rightDeflector-val is deprecated.  Use ps3_joy_thrusters-msg:rightDeflector instead.")
  (rightDeflector m))

(cl:ensure-generic-function 'leftDeflector-val :lambda-list '(m))
(cl:defmethod leftDeflector-val ((m <ActuatorMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ps3_joy_thrusters-msg:leftDeflector-val is deprecated.  Use ps3_joy_thrusters-msg:leftDeflector instead.")
  (leftDeflector m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ActuatorMessage>) ostream)
  "Serializes a message object of type '<ActuatorMessage>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rightRPM))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'leftRPM))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rightNozzle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'leftNozzle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rightDeflector))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'leftDeflector))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ActuatorMessage>) istream)
  "Deserializes a message object of type '<ActuatorMessage>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rightRPM) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'leftRPM) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rightNozzle) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'leftNozzle) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rightDeflector) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'leftDeflector) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ActuatorMessage>)))
  "Returns string type for a message object of type '<ActuatorMessage>"
  "ps3_joy_thrusters/ActuatorMessage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ActuatorMessage)))
  "Returns string type for a message object of type 'ActuatorMessage"
  "ps3_joy_thrusters/ActuatorMessage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ActuatorMessage>)))
  "Returns md5sum for a message object of type '<ActuatorMessage>"
  "fb829d59d9a04899ffe787adb09f39e9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ActuatorMessage)))
  "Returns md5sum for a message object of type 'ActuatorMessage"
  "fb829d59d9a04899ffe787adb09f39e9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ActuatorMessage>)))
  "Returns full string definition for message of type '<ActuatorMessage>"
  (cl:format cl:nil "Header header~%float64 rightRPM~%float64 leftRPM~%float64 rightNozzle~%float64 leftNozzle~%float64 rightDeflector~%float64 leftDeflector~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ActuatorMessage)))
  "Returns full string definition for message of type 'ActuatorMessage"
  (cl:format cl:nil "Header header~%float64 rightRPM~%float64 leftRPM~%float64 rightNozzle~%float64 leftNozzle~%float64 rightDeflector~%float64 leftDeflector~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ActuatorMessage>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ActuatorMessage>))
  "Converts a ROS message object to a list"
  (cl:list 'ActuatorMessage
    (cl:cons ':header (header msg))
    (cl:cons ':rightRPM (rightRPM msg))
    (cl:cons ':leftRPM (leftRPM msg))
    (cl:cons ':rightNozzle (rightNozzle msg))
    (cl:cons ':leftNozzle (leftNozzle msg))
    (cl:cons ':rightDeflector (rightDeflector msg))
    (cl:cons ':leftDeflector (leftDeflector msg))
))
