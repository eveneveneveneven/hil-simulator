;; Auto-generated. Do not edit!


(when (boundp 'simulator_prototype::JolnerActuators)
  (if (not (find-package "SIMULATOR_PROTOTYPE"))
    (make-package "SIMULATOR_PROTOTYPE"))
  (shadow 'JolnerActuators (find-package "SIMULATOR_PROTOTYPE")))
(unless (find-package "SIMULATOR_PROTOTYPE::JOLNERACTUATORS")
  (make-package "SIMULATOR_PROTOTYPE::JOLNERACTUATORS"))

(in-package "ROS")
;;//! \htmlinclude JolnerActuators.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass simulator_prototype::JolnerActuators
  :super ros::object
  :slots (_header _rightRPM _leftRPM ))

(defmethod simulator_prototype::JolnerActuators
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:rightRPM __rightRPM) 0.0)
    ((:leftRPM __leftRPM) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _rightRPM (float __rightRPM))
   (setq _leftRPM (float __leftRPM))
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
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _rightRPM
    8
    ;; float64 _leftRPM
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
   ;;
   self)
  )

(setf (get simulator_prototype::JolnerActuators :md5sum-) "6abadf20b0823728dfa1f1fb87870d1a")
(setf (get simulator_prototype::JolnerActuators :datatype-) "simulator_prototype/JolnerActuators")
(setf (get simulator_prototype::JolnerActuators :definition-)
      "Header header
float64 rightRPM
float64 leftRPM
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



(provide :simulator_prototype/JolnerActuators "6abadf20b0823728dfa1f1fb87870d1a")


