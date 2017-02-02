
(cl:in-package :asdf)

(defsystem "simulator_prototype-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GpsPos" :depends-on ("_package_GpsPos"))
    (:file "_package_GpsPos" :depends-on ("_package"))
  ))