;; Auto-generated. Do not edit!


(when (boundp 'themis_msgs::Sevcon)
  (if (not (find-package "THEMIS_MSGS"))
    (make-package "THEMIS_MSGS"))
  (shadow 'Sevcon (find-package "THEMIS_MSGS")))
(unless (find-package "THEMIS_MSGS::SEVCON")
  (make-package "THEMIS_MSGS::SEVCON"))

(in-package "ROS")
;;//! \htmlinclude Sevcon.msg.html


(defclass themis_msgs::Sevcon
  :super ros::object
  :slots (_hour_count _real_rpm _real_torque _battery_current _battery_voltage _motor_temp _temp ))

(defmethod themis_msgs::Sevcon
  (:init
   (&key
    ((:hour_count __hour_count) 0)
    ((:real_rpm __real_rpm) 0)
    ((:real_torque __real_torque) 0.0)
    ((:battery_current __battery_current) 0.0)
    ((:battery_voltage __battery_voltage) 0.0)
    ((:motor_temp __motor_temp) 0)
    ((:temp __temp) 0)
    )
   (send-super :init)
   (setq _hour_count (round __hour_count))
   (setq _real_rpm (round __real_rpm))
   (setq _real_torque (float __real_torque))
   (setq _battery_current (float __battery_current))
   (setq _battery_voltage (float __battery_voltage))
   (setq _motor_temp (round __motor_temp))
   (setq _temp (round __temp))
   self)
  (:hour_count
   (&optional __hour_count)
   (if __hour_count (setq _hour_count __hour_count)) _hour_count)
  (:real_rpm
   (&optional __real_rpm)
   (if __real_rpm (setq _real_rpm __real_rpm)) _real_rpm)
  (:real_torque
   (&optional __real_torque)
   (if __real_torque (setq _real_torque __real_torque)) _real_torque)
  (:battery_current
   (&optional __battery_current)
   (if __battery_current (setq _battery_current __battery_current)) _battery_current)
  (:battery_voltage
   (&optional __battery_voltage)
   (if __battery_voltage (setq _battery_voltage __battery_voltage)) _battery_voltage)
  (:motor_temp
   (&optional __motor_temp)
   (if __motor_temp (setq _motor_temp __motor_temp)) _motor_temp)
  (:temp
   (&optional __temp)
   (if __temp (setq _temp __temp)) _temp)
  (:serialization-length
   ()
   (+
    ;; uint16 _hour_count
    2
    ;; int32 _real_rpm
    4
    ;; float32 _real_torque
    4
    ;; float32 _battery_current
    4
    ;; float32 _battery_voltage
    4
    ;; int16 _motor_temp
    2
    ;; int8 _temp
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _hour_count
       (write-word _hour_count s)
     ;; int32 _real_rpm
       (write-long _real_rpm s)
     ;; float32 _real_torque
       (sys::poke _real_torque (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _battery_current
       (sys::poke _battery_current (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _battery_voltage
       (sys::poke _battery_voltage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int16 _motor_temp
       (write-word _motor_temp s)
     ;; int8 _temp
       (write-byte _temp s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _hour_count
     (setq _hour_count (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int32 _real_rpm
     (setq _real_rpm (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _real_torque
     (setq _real_torque (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _battery_current
     (setq _battery_current (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _battery_voltage
     (setq _battery_voltage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int16 _motor_temp
     (setq _motor_temp (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int8 _temp
     (setq _temp (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _temp 127) (setq _temp (- _temp 256)))
   ;;
   self)
  )

(setf (get themis_msgs::Sevcon :md5sum-) "3b11f79be0926a6b4515869450f7d6aa")
(setf (get themis_msgs::Sevcon :datatype-) "themis_msgs/Sevcon")
(setf (get themis_msgs::Sevcon :definition-)
      "uint16 hour_count
int32 real_rpm
float32 real_torque
float32 battery_current
float32 battery_voltage
int16 motor_temp
int8 temp

")



(provide :themis_msgs/Sevcon "3b11f79be0926a6b4515869450f7d6aa")


