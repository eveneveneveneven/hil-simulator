;; Auto-generated. Do not edit!


(when (boundp 'simulator_messages::Gps)
  (if (not (find-package "SIMULATOR_MESSAGES"))
    (make-package "SIMULATOR_MESSAGES"))
  (shadow 'Gps (find-package "SIMULATOR_MESSAGES")))
(unless (find-package "SIMULATOR_MESSAGES::GPS")
  (make-package "SIMULATOR_MESSAGES::GPS"))

(in-package "ROS")
;;//! \htmlinclude Gps.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass simulator_messages::Gps
  :super ros::object
  :slots (_header _latitude _longitude _altitude _heading _headingRate _track _speed ))

(defmethod simulator_messages::Gps
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:altitude __altitude) 0.0)
    ((:heading __heading) 0.0)
    ((:headingRate __headingRate) 0.0)
    ((:track __track) 0.0)
    ((:speed __speed) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _altitude (float __altitude))
   (setq _heading (float __heading))
   (setq _headingRate (float __headingRate))
   (setq _track (float __track))
   (setq _speed (float __speed))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:headingRate
   (&optional __headingRate)
   (if __headingRate (setq _headingRate __headingRate)) _headingRate)
  (:track
   (&optional __track)
   (if __track (setq _track __track)) _track)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _latitude
    8
    ;; float64 _longitude
    8
    ;; float64 _altitude
    8
    ;; float64 _heading
    8
    ;; float64 _headingRate
    8
    ;; float64 _track
    8
    ;; float64 _speed
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _headingRate
       (sys::poke _headingRate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _track
       (sys::poke _track (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _altitude
     (setq _altitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _heading
     (setq _heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _headingRate
     (setq _headingRate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _track
     (setq _track (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _speed
     (setq _speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get simulator_messages::Gps :md5sum-) "fabe52f68c7f92616561ddbc3f435aee")
(setf (get simulator_messages::Gps :datatype-) "simulator_messages/Gps")
(setf (get simulator_messages::Gps :definition-)
      "Header header
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

")



(provide :simulator_messages/Gps "fabe52f68c7f92616561ddbc3f435aee")


