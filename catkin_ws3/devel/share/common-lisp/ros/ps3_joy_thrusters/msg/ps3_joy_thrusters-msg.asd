
(cl:in-package :asdf)

(defsystem "ps3_joy_thrusters-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ActuatorMessage" :depends-on ("_package_ActuatorMessage"))
    (:file "_package_ActuatorMessage" :depends-on ("_package"))
    (:file "JolnerActuators" :depends-on ("_package_JolnerActuators"))
    (:file "_package_JolnerActuators" :depends-on ("_package"))
  ))