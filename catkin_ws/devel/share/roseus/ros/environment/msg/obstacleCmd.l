;; Auto-generated. Do not edit!


(when (boundp 'environment::obstacleCmd)
  (if (not (find-package "ENVIRONMENT"))
    (make-package "ENVIRONMENT"))
  (shadow 'obstacleCmd (find-package "ENVIRONMENT")))
(unless (find-package "ENVIRONMENT::OBSTACLECMD")
  (make-package "ENVIRONMENT::OBSTACLECMD"))

(in-package "ROS")
;;//! \htmlinclude obstacleCmd.msg.html


(defclass environment::obstacleCmd
  :super ros::object
  :slots (_cmdSpecifier _receiverID _x _y _psi ))

(defmethod environment::obstacleCmd
  (:init
   (&key
    ((:cmdSpecifier __cmdSpecifier) "")
    ((:receiverID __receiverID) "")
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:psi __psi) 0.0)
    )
   (send-super :init)
   (setq _cmdSpecifier (string __cmdSpecifier))
   (setq _receiverID (string __receiverID))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _psi (float __psi))
   self)
  (:cmdSpecifier
   (&optional __cmdSpecifier)
   (if __cmdSpecifier (setq _cmdSpecifier __cmdSpecifier)) _cmdSpecifier)
  (:receiverID
   (&optional __receiverID)
   (if __receiverID (setq _receiverID __receiverID)) _receiverID)
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
    ;; string _cmdSpecifier
    4 (length _cmdSpecifier)
    ;; string _receiverID
    4 (length _receiverID)
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
     ;; string _cmdSpecifier
       (write-long (length _cmdSpecifier) s) (princ _cmdSpecifier s)
     ;; string _receiverID
       (write-long (length _receiverID) s) (princ _receiverID s)
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
   ;; string _cmdSpecifier
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _cmdSpecifier (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _receiverID
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _receiverID (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _psi
     (setq _psi (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get environment::obstacleCmd :md5sum-) "73d0006ff3da56034acc0179aa503208")
(setf (get environment::obstacleCmd :datatype-) "environment/obstacleCmd")
(setf (get environment::obstacleCmd :definition-)
      "string cmdSpecifier
string receiverID
float64 x
float64 y
float64 psi

")



(provide :environment/obstacleCmd "73d0006ff3da56034acc0179aa503208")


