; Auto-generated. Do not edit!


(cl:in-package environment-msg)


;//! \htmlinclude obstacleUpdate.msg.html

(cl:defclass <obstacleUpdate> (roslisp-msg-protocol:ros-message)
  ((msgType
    :reader msgType
    :initarg :msgType
    :type cl:string
    :initform "")
   (obstacleID
    :reader obstacleID
    :initarg :obstacleID
    :type cl:string
    :initform "")
   (x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (psi
    :reader psi
    :initarg :psi
    :type cl:float
    :initform 0.0))
)

(cl:defclass obstacleUpdate (<obstacleUpdate>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <obstacleUpdate>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'obstacleUpdate)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name environment-msg:<obstacleUpdate> is deprecated: use environment-msg:obstacleUpdate instead.")))

(cl:ensure-generic-function 'msgType-val :lambda-list '(m))
(cl:defmethod msgType-val ((m <obstacleUpdate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader environment-msg:msgType-val is deprecated.  Use environment-msg:msgType instead.")
  (msgType m))

(cl:ensure-generic-function 'obstacleID-val :lambda-list '(m))
(cl:defmethod obstacleID-val ((m <obstacleUpdate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader environment-msg:obstacleID-val is deprecated.  Use environment-msg:obstacleID instead.")
  (obstacleID m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <obstacleUpdate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader environment-msg:x-val is deprecated.  Use environment-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <obstacleUpdate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader environment-msg:y-val is deprecated.  Use environment-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'psi-val :lambda-list '(m))
(cl:defmethod psi-val ((m <obstacleUpdate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader environment-msg:psi-val is deprecated.  Use environment-msg:psi instead.")
  (psi m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <obstacleUpdate>) ostream)
  "Serializes a message object of type '<obstacleUpdate>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msgType))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msgType))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'obstacleID))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'obstacleID))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'psi))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <obstacleUpdate>) istream)
  "Deserializes a message object of type '<obstacleUpdate>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'msgType) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'msgType) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'obstacleID) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'obstacleID) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'psi) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<obstacleUpdate>)))
  "Returns string type for a message object of type '<obstacleUpdate>"
  "environment/obstacleUpdate")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'obstacleUpdate)))
  "Returns string type for a message object of type 'obstacleUpdate"
  "environment/obstacleUpdate")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<obstacleUpdate>)))
  "Returns md5sum for a message object of type '<obstacleUpdate>"
  "450f2d7371e74d78202d24aa0ccdfb5b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'obstacleUpdate)))
  "Returns md5sum for a message object of type 'obstacleUpdate"
  "450f2d7371e74d78202d24aa0ccdfb5b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<obstacleUpdate>)))
  "Returns full string definition for message of type '<obstacleUpdate>"
  (cl:format cl:nil "string msgType~%string obstacleID~%float64 x~%float64 y~%float64 psi~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'obstacleUpdate)))
  "Returns full string definition for message of type 'obstacleUpdate"
  (cl:format cl:nil "string msgType~%string obstacleID~%float64 x~%float64 y~%float64 psi~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <obstacleUpdate>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'msgType))
     4 (cl:length (cl:slot-value msg 'obstacleID))
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <obstacleUpdate>))
  "Converts a ROS message object to a list"
  (cl:list 'obstacleUpdate
    (cl:cons ':msgType (msgType msg))
    (cl:cons ':obstacleID (obstacleID msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':psi (psi msg))
))
