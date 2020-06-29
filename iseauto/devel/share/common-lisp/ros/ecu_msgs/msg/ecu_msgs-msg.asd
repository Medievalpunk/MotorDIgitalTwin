
(cl:in-package :asdf)

(defsystem "ecu_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ECUStatus" :depends-on ("_package_ECUStatus"))
    (:file "_package_ECUStatus" :depends-on ("_package"))
    (:file "TrackControl" :depends-on ("_package_TrackControl"))
    (:file "_package_TrackControl" :depends-on ("_package"))
    (:file "VehicleControl" :depends-on ("_package_VehicleControl"))
    (:file "_package_VehicleControl" :depends-on ("_package"))
  ))