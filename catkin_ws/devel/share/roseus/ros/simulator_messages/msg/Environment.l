;; Auto-generated. Do not edit!


(when (boundp 'simulator_messages::Environment)
  (if (not (find-package "SIMULATOR_MESSAGES"))
    (make-package "SIMULATOR_MESSAGES"))
  (shadow 'Environment (find-package "SIMULATOR_MESSAGES")))
(unless (find-package "SIMULATOR_MESSAGES::ENVIRONMENT")
  (make-package "SIMULATOR_MESSAGES::ENVIRONMENT"))

(in-package "ROS")
;;//! \htmlinclude Environment.msg.html


(defclass simulator_messages::Environment
  :super ros::object
  :slots (_paused _latitude _longitude _meanWindSpeed _meanWindDirection _meanCurrentSpeed _meanCurrentDirection ))

(defmethod simulator_messages::Environment
  (:init
   (&key
    ((:paused __paused) nil)
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:meanWindSpeed __meanWindSpeed) 0.0)
    ((:meanWindDirection __meanWindDirection) 0.0)
    ((:meanCurrentSpeed __meanCurrentSpeed) 0.0)
    ((:meanCurrentDirection __meanCurrentDirection) 0.0)
    )
   (send-super :init)
   (setq _paused __paused)
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _meanWindSpeed (float __meanWindSpeed))
   (setq _meanWindDirection (float __meanWindDirection))
   (setq _meanCurrentSpeed (float __meanCurrentSpeed))
   (setq _meanCurrentDirection (float __meanCurrentDirection))
   self)
  (:paused
   (&optional __paused)
   (if __paused (setq _paused __paused)) _paused)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:meanWindSpeed
   (&optional __meanWindSpeed)
   (if __meanWindSpeed (setq _meanWindSpeed __meanWindSpeed)) _meanWindSpeed)
  (:meanWindDirection
   (&optional __meanWindDirection)
   (if __meanWindDirection (setq _meanWindDirection __meanWindDirection)) _meanWindDirection)
  (:meanCurrentSpeed
   (&optional __meanCurrentSpeed)
   (if __meanCurrentSpeed (setq _meanCurrentSpeed __meanCurrentSpeed)) _meanCurrentSpeed)
  (:meanCurrentDirection
   (&optional __meanCurrentDirection)
   (if __meanCurrentDirection (setq _meanCurrentDirection __meanCurrentDirection)) _meanCurrentDirection)
  (:serialization-length
   ()
   (+
    ;; bool _paused
    1
    ;; float64 _latitude
    8
    ;; float64 _longitude
    8
    ;; float64 _meanWindSpeed
    8
    ;; float64 _meanWindDirection
    8
    ;; float64 _meanCurrentSpeed
    8
    ;; float64 _meanCurrentDirection
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _paused
       (if _paused (write-byte -1 s) (write-byte 0 s))
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _meanWindSpeed
       (sys::poke _meanWindSpeed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _meanWindDirection
       (sys::poke _meanWindDirection (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _meanCurrentSpeed
       (sys::poke _meanCurrentSpeed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _meanCurrentDirection
       (sys::poke _meanCurrentDirection (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _paused
     (setq _paused (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _meanWindSpeed
     (setq _meanWindSpeed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _meanWindDirection
     (setq _meanWindDirection (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _meanCurrentSpeed
     (setq _meanCurrentSpeed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _meanCurrentDirection
     (setq _meanCurrentDirection (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get simulator_messages::Environment :md5sum-) "c7b07d3af6ed0820d5cb2f920af3dd4f")
(setf (get simulator_messages::Environment :datatype-) "simulator_messages/Environment")
(setf (get simulator_messages::Environment :definition-)
      "bool paused
float64 latitude
float64 longitude
float64 meanWindSpeed
float64 meanWindDirection
float64 meanCurrentSpeed
float64 meanCurrentDirection
")



(provide :simulator_messages/Environment "c7b07d3af6ed0820d5cb2f920af3dd4f")


