
(cl:in-package :asdf)

(defsystem "crazy_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ranger" :depends-on ("_package_ranger"))
    (:file "_package_ranger" :depends-on ("_package"))
    (:file "stateEstimate" :depends-on ("_package_stateEstimate"))
    (:file "_package_stateEstimate" :depends-on ("_package"))
  ))