;; Auto-generated. Do not edit!


(when (boundp 'themis_msgs::Generator)
  (if (not (find-package "THEMIS_MSGS"))
    (make-package "THEMIS_MSGS"))
  (shadow 'Generator (find-package "THEMIS_MSGS")))
(unless (find-package "THEMIS_MSGS::GENERATOR")
  (make-package "THEMIS_MSGS::GENERATOR"))

(in-package "ROS")
;;//! \htmlinclude Generator.msg.html


(defclass themis_msgs::Generator
  :super ros::object
  :slots (_state _fuel_level _sevcon _pdm ))

(defmethod themis_msgs::Generator
  (:init
   (&key
    ((:state __state) (instance themis_msgs::State :init))
    ((:fuel_level __fuel_level) 0.0)
    ((:sevcon __sevcon) (instance themis_msgs::Sevcon :init))
    ((:pdm __pdm) (instance themis_msgs::GeneratorPdm :init))
    )
   (send-super :init)
   (setq _state __state)
   (setq _fuel_level (float __fuel_level))
   (setq _sevcon __sevcon)
   (setq _pdm __pdm)
   self)
  (:state
   (&rest __state)
   (if (keywordp (car __state))
       (send* _state __state)
     (progn
       (if __state (setq _state (car __state)))
       _state)))
  (:fuel_level
   (&optional __fuel_level)
   (if __fuel_level (setq _fuel_level __fuel_level)) _fuel_level)
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
    ;; themis_msgs/State _state
    (send _state :serialization-length)
    ;; float32 _fuel_level
    4
    ;; themis_msgs/Sevcon _sevcon
    (send _sevcon :serialization-length)
    ;; themis_msgs/GeneratorPdm _pdm
    (send _pdm :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; themis_msgs/State _state
       (send _state :serialize s)
     ;; float32 _fuel_level
       (sys::poke _fuel_level (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; themis_msgs/Sevcon _sevcon
       (send _sevcon :serialize s)
     ;; themis_msgs/GeneratorPdm _pdm
       (send _pdm :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; themis_msgs/State _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;; float32 _fuel_level
     (setq _fuel_level (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; themis_msgs/Sevcon _sevcon
     (send _sevcon :deserialize buf ptr-) (incf ptr- (send _sevcon :serialization-length))
   ;; themis_msgs/GeneratorPdm _pdm
     (send _pdm :deserialize buf ptr-) (incf ptr- (send _pdm :serialization-length))
   ;;
   self)
  )

(setf (get themis_msgs::Generator :md5sum-) "b946db57ad5e2a3d65d4478369d1c9e1")
(setf (get themis_msgs::Generator :datatype-) "themis_msgs/Generator")
(setf (get themis_msgs::Generator :definition-)
      "State state
float32 fuel_level
Sevcon sevcon
GeneratorPdm pdm

================================================================================
MSG: themis_msgs/State
uint16 id
string desc

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
MSG: themis_msgs/GeneratorPdm
float32 motor_coolant_temp
float32 engine_coolant_temp

")



(provide :themis_msgs/Generator "b946db57ad5e2a3d65d4478369d1c9e1")


