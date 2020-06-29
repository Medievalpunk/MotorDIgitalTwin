;; Auto-generated. Do not edit!


(when (boundp 'themis_msgs::Track)
  (if (not (find-package "THEMIS_MSGS"))
    (make-package "THEMIS_MSGS"))
  (shadow 'Track (find-package "THEMIS_MSGS")))
(unless (find-package "THEMIS_MSGS::TRACK")
  (make-package "THEMIS_MSGS::TRACK"))

(in-package "ROS")
;;//! \htmlinclude Track.msg.html


(defclass themis_msgs::Track
  :super ros::object
  :slots (_sevcon _pdm ))

(defmethod themis_msgs::Track
  (:init
   (&key
    ((:sevcon __sevcon) (instance themis_msgs::Sevcon :init))
    ((:pdm __pdm) (instance themis_msgs::TrackPdm :init))
    )
   (send-super :init)
   (setq _sevcon __sevcon)
   (setq _pdm __pdm)
   self)
  (:sevcon
   (&rest __sevcon)
   (if (keywordp (car __sevcon))
       (send* _sevcon __sevcon)
     (progn
       (if __sevcon (setq _sevcon (car __sevcon)))
       _sevcon)))
  (:pdm
   (&rest __pdm)
   (if (keywordp (car __pdm))
       (send* _pdm __pdm)
     (progn
       (if __pdm (setq _pdm (car __pdm)))
       _pdm)))
  (:serialization-length
   ()
   (+
    ;; themis_msgs/Sevcon _sevcon
    (send _sevcon :serialization-length)
    ;; themis_msgs/TrackPdm _pdm
    (send _pdm :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; themis_msgs/Sevcon _sevcon
       (send _sevcon :serialize s)
     ;; themis_msgs/TrackPdm _pdm
       (send _pdm :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; themis_msgs/Sevcon _sevcon
     (send _sevcon :deserialize buf ptr-) (incf ptr- (send _sevcon :serialization-length))
   ;; themis_msgs/TrackPdm _pdm
     (send _pdm :deserialize buf ptr-) (incf ptr- (send _pdm :serialization-length))
   ;;
   self)
  )

(setf (get themis_msgs::Track :md5sum-) "aa218d79e211eae1ef0c9fb3af2a36a1")
(setf (get themis_msgs::Track :datatype-) "themis_msgs/Track")
(setf (get themis_msgs::Track :definition-)
      "Sevcon sevcon
TrackPdm pdm

================================================================================
MSG: themis_msgs/Sevcon
uint16 hour_count
int32 real_rpm
float32 real_torque
float32 battery_current
float32 battery_voltage
int16 motor_temp
int8 temp

================================================================================
MSG: themis_msgs/TrackPdm
float32 track_coolant_temp
bool brake_status

")



(provide :themis_msgs/Track "aa218d79e211eae1ef0c9fb3af2a36a1")


