
(cl:in-package :asdf)

(defsystem "simulator_prototype-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ActuatorMessage" :depends-on ("_package_ActuatorMessage"))
    (:file "_package_ActuatorMessage" :depends-on ("_package"))
    (:file "Environment" :depends-on ("_package_Environment"))
    (:file "_package_Environment" :depends-on ("_package"))
    (:file "Gps" :depends-on ("_package_Gps"))
    (:file "_package_Gps" :depends-on ("_package"))
    (:file "JolnerActuators" :depends-on ("_package_JolnerActuators"))
    (:file "_package_JolnerActuators" :depends-on ("_package"))
  ))