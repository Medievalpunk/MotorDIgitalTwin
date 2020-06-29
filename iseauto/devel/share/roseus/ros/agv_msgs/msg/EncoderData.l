;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::EncoderData)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'EncoderData (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::ENCODERDATA")
  (make-package "AGV_MSGS::ENCODERDATA"))

(in-package "ROS")
;;//! \htmlinclude EncoderData.msg.html


(intern "*RPM*" (find-package "AGV_MSGS::ENCODERDATA"))
(shadow '*RPM* (find-package "AGV_MSGS::ENCODERDATA"))
(defconstant agv_msgs::EncoderData::*RPM* 0)
(intern "*RAD_S*" (find-package "AGV_MSGS::ENCODERDATA"))
(shadow '*RAD_S* (find-package "AGV_MSGS::ENCODERDATA"))
(defconstant agv_msgs::EncoderData::*RAD_S* 1)
(intern "*M_S*" (find-package "AGV_MSGS::ENCODERDATA"))
(shadow '*M_S* (find-package "AGV_MSGS::ENCODERDATA"))
(defconstant agv_msgs::EncoderData::*M_S* 2)
(intern "*TICKS*" (find-package "AGV_MSGS::ENCODERDATA"))
(shadow '*TICKS* (find-package "AGV_MSGS::ENCODERDATA"))
(defconstant agv_msgs::EncoderData::*TICKS* 3)
(defclass agv_msgs::EncoderData
  :super ros::object
  :slots (_velocity _distance _units ))

(defmethod agv_msgs::EncoderData
  (:init
   (&key
    ((:velocity __velocity) 0.0)
    ((:distance __distance) 0.0)
    ((:units __units) 0)
    )
   (send-super :init)
   (setq _velocity (float __velocity))
   (setq _distance (float __distance))
   (setq _units (round __units))
   self)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:units
   (&optional __units)
   (if __units (setq _units __units)) _units)
  (:serialization-length
   ()
   (+
    ;; float32 _velocity
    4
    ;; float32 _distance
    4
    ;; uint8 _units
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _units
       (write-byte _units s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _velocity
     (setq _velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _distance
     (setq _distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _units
     (setq _units (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get agv_msgs::EncoderData :md5sum-) "5ed93d667b28e9c960e1b5b4789dc7c5")
(setf (get agv_msgs::EncoderData :datatype-) "agv_msgs/EncoderData")
(setf (get agv_msgs::EncoderData :definition-)
      "float32 velocity
float32 distance

uint8 units
uint8 RPM=0     # velocity in rpm,      distance in rotations
uint8 RAD_S=1   # velocity in rad/s,    distance in radians
uint8 M_S=2     # velocity in m/s,      distance in metres
uint8 TICKS=3   # velocity in ticks/s,  distance in ticks

")



(provide :agv_msgs/EncoderData "5ed93d667b28e9c960e1b5b4789dc7c5")


