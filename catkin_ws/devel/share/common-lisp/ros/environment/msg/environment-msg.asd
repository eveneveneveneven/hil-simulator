
(cl:in-package :asdf)

(defsystem "environment-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "obstacleCmd" :depends-on ("_package_obstacleCmd"))
    (:file "_package_obstacleCmd" :depends-on ("_package"))
    (:file "obstacleUpdate" :depends-on ("_package_obstacleUpdate"))
    (:file "_package_obstacleUpdate" :depends-on ("_package"))
    (:file "targetPosMsg" :depends-on ("_package_targetPosMsg"))
    (:file "_package_targetPosMsg" :depends-on ("_package"))
  ))