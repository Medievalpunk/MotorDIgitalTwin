;; Auto-generated. Do not edit!


(when (boundp 'themis_msgs::VehicleMode)
  (if (not (find-package "THEMIS_MSGS"))
    (make-package "THEMIS_MSGS"))
  (shadow 'VehicleMode (find-package "THEMIS_MSGS")))
(unless (find-package "THEMIS_MSGS::VEHICLEMODE")
  (make-package "THEMIS_MSGS::VEHICLEMODE"))

(in-package "ROS")
;;//! \htmlinclude VehicleMode.msg.html


(defclass themis_msgs::VehicleMode
  :super ros::object
  :slots (_vehicle _generator _speed _brake _charge ))

(defmethod themis_msgs::VehicleMode
  (:init
   (&key
    ((:vehicle __vehicle) (instance themis_msgs::State :init))
    ((:generator __generator) (instance themis_msgs::State :init))
    ((:speed __speed) (instance themis_msgs::State :init))
    ((:brake __brake) (instance themis_msgs::State :init))
    ((:charge __charge) (instance themis_msgs::State :init))
    )
   (send-super :init)
   (setq _vehicle __vehicle)
   (setq _generator __generator)
   (setq _speed __speed)
   (setq _brake __brake)
   (setq _charge __charge)
   self)
  (:vehicle
   (&rest __vehicle)
   (if (keywordp (car __vehicle))
       (send* _vehicle __vehicle)
     (progn
       (if __vehicle (setq _vehicle (car __vehicle)))
       _vehicle)))
  (:generator
   (&rest __generator)
   (if (keywordp (car __generator))
       (send* _generator __generator)
     (progn
       (if __generator (setq _generator (car __generator)))
       _generator)))
  (:speed
   (&rest __speed)
   (if (keywordp (car __speed))
       (send* _speed __speed)
     (progn
       (if __speed (setq _speed (car __speed)))
       _speed)))
  (:brake
   (&rest __brake)
   (if (keywordp (car __brake))
       (send* _brake __brake)
     (progn
       (if __brake (setq _brake (car __brake)))
       _brake)))
  (:charge
   (&rest __charge)
   (if (keywordp (car __charge))
       (send* _charge __charge)
     (progn
       (if __charge (setq _charge (car __charge)))
       _charge)))
  (:serialization-length
   ()
   (+
    ;; themis_msgs/State _vehicle
    (send _vehicle :serialization-length)
    ;; themis_msgs/State _generator
    (send _generator :serialization-length)
    ;; themis_msgs/State _speed
    (send _speed :serialization-length)
    ;; themis_msgs/State _brake
    (send _brake :serialization-length)
    ;; themis_msgs/State _charge
    (send _charge :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; themis_msgs/State _vehicle
       (send _vehicle :serialize s)
     ;; themis_msgs/State _generator
       (send _generator :serialize s)
     ;; themis_msgs/State _speed
       (send _speed :serialize s)
     ;; themis_msgs/State _brake
       (send _brake :serialize s)
     ;; themis_msgs/State _charge
       (send _charge :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; themis_msgs/State _vehicle
     (send _vehicle :deserialize buf ptr-) (incf ptr- (send _vehicle :serialization-length))
   ;; themis_msgs/State _generator
     (send _generator :deserialize buf ptr-) (incf ptr- (send _generator :serialization-length))
   ;; themis_msgs/State _speed
     (send _speed :deserialize buf ptr-) (incf ptr- (send _speed :serialization-length))
   ;; themis_msgs/State _brake
     (send _brake :deserialize buf ptr-) (incf ptr- (send _brake :serialization-length))
   ;; themis_msgs/State _charge
     (send _charge :deserialize buf ptr-) (incf ptr- (send _charge :serialization-length))
   ;;
   self)
  )

(setf (get themis_msgs::VehicleMode :md5sum-) "565e3240233646eab93d6c6a27f36044")
(setf (get themis_msgs::VehicleMode :datatype-) "themis_msgs/VehicleMode")
(setf (get themis_msgs::VehicleMode :definition-)
      "State vehicle
State generator
State speed
State brake
State charge

================================================================================
MSG: themis_msgs/State
uint16 id
string desc

")



(provide :themis_msgs/VehicleMode "565e3240233646eab93d6c6a27f36044")


