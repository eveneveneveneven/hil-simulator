;; Auto-generated. Do not edit!


(when (boundp 'simulator_prototype::GpsPos)
  (if (not (find-package "SIMULATOR_PROTOTYPE"))
    (make-package "SIMULATOR_PROTOTYPE"))
  (shadow 'GpsPos (find-package "SIMULATOR_PROTOTYPE")))
(unless (find-package "SIMULATOR_PROTOTYPE::GPSPOS")
  (make-package "SIMULATOR_PROTOTYPE::GPSPOS"))

(in-package "ROS")
;;//! \htmlinclude GpsPos.msg.html


(defclass simulator_prototype::GpsPos
  :super ros::object
  :slots (_Time _Latitude _Longitude _Altitude _Heading _X_vel _Y_vel _Z_vel ))

(defmethod simulator_prototype::GpsPos
  (:init
   (&key
    ((:Time __Time) 0)
    ((:Latitude __Latitude) 0.0)
    ((:Longitude __Longitude) 0.0)
    ((:Altitude __Altitude) 0.0)
    ((:Heading __Heading) 0.0)
    ((:X_vel __X_vel) 0.0)
    ((:Y_vel __Y_vel) 0.0)
    ((:Z_vel __Z_vel) 0.0)
    )
   (send-super :init)
   (setq _Time (round __Time))
   (setq _Latitude (float __Latitude))
   (setq _Longitude (float __Longitude))
   (setq _Altitude (float __Altitude))
   (setq _Heading (float __Heading))
   (setq _X_vel (float __X_vel))
   (setq _Y_vel (float __Y_vel))
   (setq _Z_vel (float __Z_vel))
   self)
  (:Time
   (&optional __Time)
   (if __Time (setq _Time __Time)) _Time)
  (:Latitude
   (&optional __Latitude)
   (if __Latitude (setq _Latitude __Latitude)) _Latitude)
  (:Longitude
   (&optional __Longitude)
   (if __Longitude (setq _Longitude __Longitude)) _Longitude)
  (:Altitude
   (&optional __Altitude)
   (if __Altitude (setq _Altitude __Altitude)) _Altitude)
  (:Heading
   (&optional __Heading)
   (if __Heading (setq _Heading __Heading)) _Heading)
  (:X_vel
   (&optional __X_vel)
   (if __X_vel (setq _X_vel __X_vel)) _X_vel)
  (:Y_vel
   (&optional __Y_vel)
   (if __Y_vel (setq _Y_vel __Y_vel)) _Y_vel)
  (:Z_vel
   (&optional __Z_vel)
   (if __Z_vel (setq _Z_vel __Z_vel)) _Z_vel)
  (:serialization-length
   ()
   (+
    ;; int64 _Time
    8
    ;; float64 _Latitude
    8
    ;; float64 _Longitude
    8
    ;; float64 _Altitude
    8
    ;; float64 _Heading
    8
    ;; float64 _X_vel
    8
    ;; float64 _Y_vel
    8
    ;; float64 _Z_vel
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _Time
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _Time (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _Time) (= (length (_Time . bv)) 2)) ;; bignum
              (write-long (ash (elt (_Time . bv) 0) 0) s)
              (write-long (ash (elt (_Time . bv) 1) -1) s))
             ((and (class _Time) (= (length (_Time . bv)) 1)) ;; big1
              (write-long (elt (_Time . bv) 0) s)
              (write-long (if (>= _Time 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _Time s)(write-long (if (>= _Time 0) 0 #xffffffff) s)))
     ;; float64 _Latitude
       (sys::poke _Latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Longitude
       (sys::poke _Longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Altitude
       (sys::poke _Altitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Heading
       (sys::poke _Heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _X_vel
       (sys::poke _X_vel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Y_vel
       (sys::poke _Y_vel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Z_vel
       (sys::poke _Z_vel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _Time
#+(or :alpha :irix6 :x86_64)
      (setf _Time (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _Time (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float64 _Latitude
     (setq _Latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Longitude
     (setq _Longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Altitude
     (setq _Altitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Heading
     (setq _Heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _X_vel
     (setq _X_vel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Y_vel
     (setq _Y_vel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Z_vel
     (setq _Z_vel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get simulator_prototype::GpsPos :md5sum-) "efb31c51c19a644c903697a51ea46779")
(setf (get simulator_prototype::GpsPos :datatype-) "simulator_prototype/GpsPos")
(setf (get simulator_prototype::GpsPos :definition-)
      "int64 Time
float64 Latitude
float64 Longitude
float64 Altitude
float64 Heading
float64 X_vel
float64 Y_vel
float64 Z_vel

")



(provide :simulator_prototype/GpsPos "efb31c51c19a644c903697a51ea46779")


