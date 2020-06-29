
(cl:in-package :asdf)

(defsystem "themis_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SetState" :depends-on ("_package_SetState"))
    (:file "_package_SetState" :depends-on ("_package"))
  ))