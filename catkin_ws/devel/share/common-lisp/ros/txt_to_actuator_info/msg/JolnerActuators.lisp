; Auto-generated. Do not edit!


(cl:in-package txt_to_actuator_info-msg)


;//! \htmlinclude JolnerActuators.msg.html

(cl:defclass <JolnerActuators> (roslisp-msg-protocol:ros-message)
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
    :initform 0.0))
)

(cl:defclass JolnerActuators (<JolnerActuators>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JolnerActuators>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JolnerActuators)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name txt_to_actuator_info-msg:<JolnerActuators> is deprecated: use txt_to_actuator_info-msg:JolnerActuators instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <JolnerActuators>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader txt_to_actuator_info-msg:header-val is deprecated.  Use txt_to_actuator_info-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'rightRPM-val :lambda-list '(m))
(cl:defmethod rightRPM-val ((m <JolnerActuators>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader txt_to_actuator_info-msg:rightRPM-val is deprecated.  Use txt_to_actuator_info-msg:rightRPM instead.")
  (rightRPM m))

(cl:ensure-generic-function 'leftRPM-val :lambda-list '(m))
(cl:defmethod leftRPM-val ((m <JolnerActuators>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader txt_to_actuator_info-msg:leftRPM-val is deprecated.  Use txt_to_actuator_info-msg:leftRPM instead.")
  (leftRPM m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JolnerActuators>) ostream)
  "Serializes a message object of type '<JolnerActuators>"
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JolnerActuators>) istream)
  "Deserializes a message object of type '<JolnerActuators>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JolnerActuators>)))
  "Returns string type for a message object of type '<JolnerActuators>"
  "txt_to_actuator_info/JolnerActuators")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JolnerActuators)))
  "Returns string type for a message object of type 'JolnerActuators"
  "txt_to_actuator_info/JolnerActuators")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JolnerActuators>)))
  "Returns md5sum for a message object of type '<JolnerActuators>"
  "6abadf20b0823728dfa1f1fb87870d1a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JolnerActuators)))
  "Returns md5sum for a message object of type 'JolnerActuators"
  "6abadf20b0823728dfa1f1fb87870d1a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JolnerActuators>)))
  "Returns full string definition for message of type '<JolnerActuators>"
  (cl:format cl:nil "Header header~%float64 rightRPM~%float64 leftRPM~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JolnerActuators)))
  "Returns full string definition for message of type 'JolnerActuators"
  (cl:format cl:nil "Header header~%float64 rightRPM~%float64 leftRPM~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JolnerActuators>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JolnerActuators>))
  "Converts a ROS message object to a list"
  (cl:list 'JolnerActuators
    (cl:cons ':header (header msg))
    (cl:cons ':rightRPM (rightRPM msg))
    (cl:cons ':leftRPM (leftRPM msg))
))
