; Auto-generated. Do not edit!


(cl:in-package environment-msg)


;//! \htmlinclude obstacleCmd.msg.html

(cl:defclass <obstacleCmd> (roslisp-msg-protocol:ros-message)
  ((cmdSpecifier
    :reader cmdSpecifier
    :initarg :cmdSpecifier
    :type cl:string
    :initform "")
   (receiverID
    :reader receiverID
    :initarg :receiverID
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

(cl:defclass obstacleCmd (<obstacleCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <obstacleCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'obstacleCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name environment-msg:<obstacleCmd> is deprecated: use environment-msg:obstacleCmd instead.")))

(cl:ensure-generic-function 'cmdSpecifier-val :lambda-list '(m))
(cl:defmethod cmdSpecifier-val ((m <obstacleCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader environment-msg:cmdSpecifier-val is deprecated.  Use environment-msg:cmdSpecifier instead.")
  (cmdSpecifier m))

(cl:ensure-generic-function 'receiverID-val :lambda-list '(m))
(cl:defmethod receiverID-val ((m <obstacleCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader environment-msg:receiverID-val is deprecated.  Use environment-msg:receiverID instead.")
  (receiverID m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <obstacleCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader environment-msg:x-val is deprecated.  Use environment-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <obstacleCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader environment-msg:y-val is deprecated.  Use environment-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'psi-val :lambda-list '(m))
(cl:defmethod psi-val ((m <obstacleCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader environment-msg:psi-val is deprecated.  Use environment-msg:psi instead.")
  (psi m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <obstacleCmd>) ostream)
  "Serializes a message object of type '<obstacleCmd>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'cmdSpecifier))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'cmdSpecifier))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'receiverID))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'receiverID))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <obstacleCmd>) istream)
  "Deserializes a message object of type '<obstacleCmd>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmdSpecifier) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'cmdSpecifier) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'receiverID) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'receiverID) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<obstacleCmd>)))
  "Returns string type for a message object of type '<obstacleCmd>"
  "environment/obstacleCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'obstacleCmd)))
  "Returns string type for a message object of type 'obstacleCmd"
  "environment/obstacleCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<obstacleCmd>)))
  "Returns md5sum for a message object of type '<obstacleCmd>"
  "73d0006ff3da56034acc0179aa503208")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'obstacleCmd)))
  "Returns md5sum for a message object of type 'obstacleCmd"
  "73d0006ff3da56034acc0179aa503208")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<obstacleCmd>)))
  "Returns full string definition for message of type '<obstacleCmd>"
  (cl:format cl:nil "string cmdSpecifier~%string receiverID~%float64 x~%float64 y~%float64 psi~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'obstacleCmd)))
  "Returns full string definition for message of type 'obstacleCmd"
  (cl:format cl:nil "string cmdSpecifier~%string receiverID~%float64 x~%float64 y~%float64 psi~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <obstacleCmd>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'cmdSpecifier))
     4 (cl:length (cl:slot-value msg 'receiverID))
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <obstacleCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'obstacleCmd
    (cl:cons ':cmdSpecifier (cmdSpecifier msg))
    (cl:cons ':receiverID (receiverID msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':psi (psi msg))
))
