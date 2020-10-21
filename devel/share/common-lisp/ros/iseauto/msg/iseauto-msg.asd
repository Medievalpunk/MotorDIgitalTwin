
(cl:in-package :asdf)

(defsystem "iseauto-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Current" :depends-on ("_package_Current"))
    (:file "_package_Current" :depends-on ("_package"))
    (:file "Voltage" :depends-on ("_package_Voltage"))
    (:file "_package_Voltage" :depends-on ("_package"))
  ))