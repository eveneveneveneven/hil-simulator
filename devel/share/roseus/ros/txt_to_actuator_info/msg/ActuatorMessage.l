;; Auto-generated. Do not edit!


(when (boundp 'txt_to_actuator_info::ActuatorMessage)
  (if (not (find-package "TXT_TO_ACTUATOR_INFO"))
    (make-package "TXT_TO_ACTUATOR_INFO"))
  (shadow 'ActuatorMessage (find-package "TXT_TO_ACTUATOR_INFO")))
(unless (find-package "TXT_TO_ACTUATOR_INFO::ACTUATORMESSAGE")
  (make-package "TXT_TO_ACTUATOR_INFO::ACTUATORMESSAGE"))

(in-package "ROS")
;;//! \htmlinclude ActuatorMessage.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass txt_to_actuator_info::ActuatorMessage
  :super ros::object
  :slots (_header _rightRPM _leftRPM _rightNozzle _leftNozzle _rightDeflector _leftDeflector ))

(defmethod txt_to_actuator_info::ActuatorMessage
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:rightRPM __rightRPM) 0.0)
    ((:leftRPM __leftRPM) 0.0)
    ((:rightNozzle __rightNozzle) 0.0)
    ((:leftNozzle __leftNozzle) 0.0)
    ((:rightDeflector __rightDeflector) 0.0)
    ((:leftDeflector __leftDeflector) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _rightRPM (float __rightRPM))
   (setq _leftRPM (float __leftRPM))
   (setq _rightNozzle (float __rightNozzle))
   (setq _leftNozzle (float __leftNozzle))
   (setq _rightDeflector (float __rightDeflector))
   (setq _leftDeflector (float __leftDeflector))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:rightRPM
   (&optional __rightRPM)
   (if __rightRPM (setq _rightRPM __rightRPM)) _rightRPM)
  (:leftRPM
   (&optional __leftRPM)
   (if __leftRPM (setq _leftRPM __leftRPM)) _leftRPM)
  (:rightNozzle
   (&optional __rightNozzle)
   (if __rightNozzle (setq _rightNozzle __rightNozzle)) _rightNozzle)
  (:leftNozzle
   (&optional __leftNozzle)
   (if __leftNozzle (setq _leftNozzle __leftNozzle)) _leftNozzle)
  (:rightDeflector
   (&optional __rightDeflector)
   (if __rightDeflector (setq _rightDeflector __rightDeflector)) _rightDeflector)
  (:leftDeflector
   (&optional __leftDeflector)
   (if __leftDeflector (setq _leftDeflector __leftDeflector)) _leftDeflector)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _rightRPM
    8
    ;; float64 _leftRPM
    8
    ;; float64 _rightNozzle
    8
    ;; float64 _leftNozzle
    8
    ;; float64 _rightDeflector
    8
    ;; float64 _leftDeflector
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _rightRPM
       (sys::poke _rightRPM (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _leftRPM
       (sys::poke _leftRPM (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rightNozzle
       (sys::poke _rightNozzle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _leftNozzle
       (sys::poke _leftNozzle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rightDeflector
       (sys::poke _rightDeflector (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _leftDeflector
       (sys::poke _leftDeflector (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _rightRPM
     (setq _rightRPM (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _leftRPM
     (setq _leftRPM (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rightNozzle
     (setq _rightNozzle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _leftNozzle
     (setq _leftNozzle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rightDeflector
     (setq _rightDeflector (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _leftDeflector
     (setq _leftDeflector (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get txt_to_actuator_info::ActuatorMessage :md5sum-) "fb829d59d9a04899ffe787adb09f39e9")
(setf (get txt_to_actuator_info::ActuatorMessage :datatype-) "txt_to_actuator_info/ActuatorMessage")
(setf (get txt_to_actuator_info::ActuatorMessage :definition-)
      "Header header
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

")



(provide :txt_to_actuator_info/ActuatorMessage "fb829d59d9a04899ffe787adb09f39e9")


