; Auto-generated. Do not edit!


(cl:in-package simulator_messages-msg)


;//! \htmlinclude Environment.msg.html

(cl:defclass <Environment> (roslisp-msg-protocol:ros-message)
  ((paused
    :reader paused
    :initarg :paused
    :type cl:boolean
    :initform cl:nil)
   (latitude
    :reader latitude
    :initarg :latitude
    :type cl:float
    :initform 0.0)
   (longitude
    :reader longitude
    :initarg :longitude
    :type cl:float
    :initform 0.0)
   (meanWindSpeed
    :reader meanWindSpeed
    :initarg :meanWindSpeed
    :type cl:float
    :initform 0.0)
   (meanWindDirection
    :reader meanWindDirection
    :initarg :meanWindDirection
    :type cl:float
    :initform 0.0)
   (meanCurrentSpeed
    :reader meanCurrentSpeed
    :initarg :meanCurrentSpeed
    :type cl:float
    :initform 0.0)
   (meanCurrentDirection
    :reader meanCurrentDirection
    :initarg :meanCurrentDirection
    :type cl:float
    :initform 0.0))
)

(cl:defclass Environment (<Environment>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Environment>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Environment)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simulator_messages-msg:<Environment> is deprecated: use simulator_messages-msg:Environment instead.")))

(cl:ensure-generic-function 'paused-val :lambda-list '(m))
(cl:defmethod paused-val ((m <Environment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator_messages-msg:paused-val is deprecated.  Use simulator_messages-msg:paused instead.")
  (paused m))

(cl:ensure-generic-function 'latitude-val :lambda-list '(m))
(cl:defmethod latitude-val ((m <Environment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator_messages-msg:latitude-val is deprecated.  Use simulator_messages-msg:latitude instead.")
  (latitude m))

(cl:ensure-generic-function 'longitude-val :lambda-list '(m))
(cl:defmethod longitude-val ((m <Environment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator_messages-msg:longitude-val is deprecated.  Use simulator_messages-msg:longitude instead.")
  (longitude m))

(cl:ensure-generic-function 'meanWindSpeed-val :lambda-list '(m))
(cl:defmethod meanWindSpeed-val ((m <Environment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator_messages-msg:meanWindSpeed-val is deprecated.  Use simulator_messages-msg:meanWindSpeed instead.")
  (meanWindSpeed m))

(cl:ensure-generic-function 'meanWindDirection-val :lambda-list '(m))
(cl:defmethod meanWindDirection-val ((m <Environment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator_messages-msg:meanWindDirection-val is deprecated.  Use simulator_messages-msg:meanWindDirection instead.")
  (meanWindDirection m))

(cl:ensure-generic-function 'meanCurrentSpeed-val :lambda-list '(m))
(cl:defmethod meanCurrentSpeed-val ((m <Environment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator_messages-msg:meanCurrentSpeed-val is deprecated.  Use simulator_messages-msg:meanCurrentSpeed instead.")
  (meanCurrentSpeed m))

(cl:ensure-generic-function 'meanCurrentDirection-val :lambda-list '(m))
(cl:defmethod meanCurrentDirection-val ((m <Environment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator_messages-msg:meanCurrentDirection-val is deprecated.  Use simulator_messages-msg:meanCurrentDirection instead.")
  (meanCurrentDirection m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Environment>) ostream)
  "Serializes a message object of type '<Environment>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'paused) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'latitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'longitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'meanWindSpeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'meanWindDirection))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'meanCurrentSpeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'meanCurrentDirection))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Environment>) istream)
  "Deserializes a message object of type '<Environment>"
    (cl:setf (cl:slot-value msg 'paused) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'latitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'longitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'meanWindSpeed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'meanWindDirection) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'meanCurrentSpeed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'meanCurrentDirection) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Environment>)))
  "Returns string type for a message object of type '<Environment>"
  "simulator_messages/Environment")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Environment)))
  "Returns string type for a message object of type 'Environment"
  "simulator_messages/Environment")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Environment>)))
  "Returns md5sum for a message object of type '<Environment>"
  "c7b07d3af6ed0820d5cb2f920af3dd4f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Environment)))
  "Returns md5sum for a message object of type 'Environment"
  "c7b07d3af6ed0820d5cb2f920af3dd4f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Environment>)))
  "Returns full string definition for message of type '<Environment>"
  (cl:format cl:nil "bool paused~%float64 latitude~%float64 longitude~%float64 meanWindSpeed~%float64 meanWindDirection~%float64 meanCurrentSpeed~%float64 meanCurrentDirection~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Environment)))
  "Returns full string definition for message of type 'Environment"
  (cl:format cl:nil "bool paused~%float64 latitude~%float64 longitude~%float64 meanWindSpeed~%float64 meanWindDirection~%float64 meanCurrentSpeed~%float64 meanCurrentDirection~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Environment>))
  (cl:+ 0
     1
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Environment>))
  "Converts a ROS message object to a list"
  (cl:list 'Environment
    (cl:cons ':paused (paused msg))
    (cl:cons ':latitude (latitude msg))
    (cl:cons ':longitude (longitude msg))
    (cl:cons ':meanWindSpeed (meanWindSpeed msg))
    (cl:cons ':meanWindDirection (meanWindDirection msg))
    (cl:cons ':meanCurrentSpeed (meanCurrentSpeed msg))
    (cl:cons ':meanCurrentDirection (meanCurrentDirection msg))
))
