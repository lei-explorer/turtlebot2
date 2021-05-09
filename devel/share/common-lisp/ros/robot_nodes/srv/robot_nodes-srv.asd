
(cl:in-package :asdf)

(defsystem "robot_nodes-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "action" :depends-on ("_package_action"))
    (:file "_package_action" :depends-on ("_package"))
  ))