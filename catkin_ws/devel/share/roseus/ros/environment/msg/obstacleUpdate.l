;; Auto-generated. Do not edit!


(when (boundp 'environment::obstacleUpdate)
  (if (not (find-package "ENVIRONMENT"))
    (make-package "ENVIRONMENT"))
  (shadow 'obstacleUpdate (find-package "ENVIRONMENT")))
(unless (find-package "ENVIRONMENT::OBSTACLEUPDATE")
  (make-package "ENVIRONMENT::OBSTACLEUPDATE"))

(in-package "ROS")
;;//! \htmlinclude obstacleUpdate.msg.html


(defclass environment::obstacleUpdate
  :super ros::object
  :slots (_msgType _obstacleID _x _y _psi ))

(defmethod environment::obstacleUpdate
  (:init
   (&key
    ((:msgType __msgType) "")
    ((:obstacleID __obstacleID) "")
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:psi __psi) 0.0)
    )
   (send-super :init)
   (setq _msgType (string __msgType))
   (setq _obstacleID (string __obstacleID))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _psi (float __psi))
   self)
  (:msgType
   (&optional __msgType)
   (if __msgType (setq _msgType __msgType)) _msgType)
  (:obstacleID
   (&optional __obstacleID)
   (if __obstacleID (setq _obstacleID __obstacleID)) _obstacleID)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:psi
   (&optional __psi)
   (if __psi (setq _psi __psi)) _psi)
  (:serialization-length
   ()
   (+
    ;; string _msgType
    4 (length _msgType)
    ;; string _obstacleID
    4 (length _obstacleID)
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _psi
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _msgType
       (write-long (length _msgType) s) (princ _msgType s)
     ;; string _obstacleID
       (write-long (length _obstacleID) s) (princ _obstacleID s)
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _psi
       (sys::poke _psi (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _msgType
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _msgType (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _obstacleID
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _obstacleID (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _psi
     (setq _psi (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get environment::obstacleUpdate :md5sum-) "450f2d7371e74d78202d24aa0ccdfb5b")
(setf (get environment::obstacleUpdate :datatype-) "environment/obstacleUpdate")
(setf (get environment::obstacleUpdate :definition-)
      "string msgType
string obstacleID
float64 x
float64 y
float64 psi

")



(provide :environment/obstacleUpdate "450f2d7371e74d78202d24aa0ccdfb5b")


