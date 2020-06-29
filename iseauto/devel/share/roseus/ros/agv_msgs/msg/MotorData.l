;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::MotorData)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'MotorData (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::MOTORDATA")
  (make-package "AGV_MSGS::MOTORDATA"))

(in-package "ROS")
;;//! \htmlinclude MotorData.msg.html


(defclass agv_msgs::MotorData
  :super ros::object
  :slots (_enc _torque _current _voltage _temperature ))

(defmethod agv_msgs::MotorData
  (:init
   (&key
    ((:enc __enc) (instance agv_msgs::EncoderData :init))
    ((:torque __torque) 0.0)
    ((:current __current) 0.0)
    ((:voltage __voltage) 0.0)
    ((:temperature __temperature) 0.0)
    )
   (send-super :init)
   (setq _enc __enc)
   (setq _torque (float __torque))
   (setq _current (float __current))
   (setq _voltage (float __voltage))
   (setq _temperature (float __temperature))
   self)
  (:enc
   (&rest __enc)
   (if (keywordp (car __enc))
       (send* _enc __enc)
     (progn
       (if __enc (setq _enc (car __enc)))
       _enc)))
  (:torque
   (&optional __torque)
   (if __torque (setq _torque __torque)) _torque)
  (:current
   (&optional __current)
   (if __current (setq _current __current)) _current)
  (:voltage
   (&optional __voltage)
   (if __voltage (setq _voltage __voltage)) _voltage)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:serialization-length
   ()
   (+
    ;; agv_msgs/EncoderData _enc
    (send _enc :serialization-length)
    ;; float32 _torque
    4
    ;; float32 _current
    4
    ;; float32 _voltage
    4
    ;; float32 _temperature
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; agv_msgs/EncoderData _enc
       (send _enc :serialize s)
     ;; float32 _torque
       (sys::poke _torque (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _current
       (sys::poke _current (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _voltage
       (sys::poke _voltage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _temperature
       (sys::poke _temperature (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; agv_msgs/EncoderData _enc
     (send _enc :deserialize buf ptr-) (incf ptr- (send _enc :serialization-length))
   ;; float32 _torque
     (setq _torque (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _current
     (setq _current (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _voltage
     (setq _voltage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _temperature
     (setq _temperature (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get agv_msgs::MotorData :md5sum-) "f9f1240e471258014c99a0aa28d83052")
(setf (get agv_msgs::MotorData :datatype-) "agv_msgs/MotorData")
(setf (get agv_msgs::MotorData :definition-)
      "EncoderData enc
float32 torque            # Nm
float32 current           # A
float32 voltage           # V
float32 temperature       # C

# Some useful formulas for reference (use Si units)
# Mechanical power = torque * angular_velocity
# Electrical power = current * voltage
# Efficiency = mech. power / elec. power

================================================================================
MSG: agv_msgs/EncoderData
float32 velocity
float32 distance

uint8 units
uint8 RPM=0     # velocity in rpm,      distance in rotations
uint8 RAD_S=1   # velocity in rad/s,    distance in radians
uint8 M_S=2     # velocity in m/s,      distance in metres
uint8 TICKS=3   # velocity in ticks/s,  distance in ticks

")



(provide :agv_msgs/MotorData "f9f1240e471258014c99a0aa28d83052")


