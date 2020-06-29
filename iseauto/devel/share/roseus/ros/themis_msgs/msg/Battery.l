;; Auto-generated. Do not edit!


(when (boundp 'themis_msgs::Battery)
  (if (not (find-package "THEMIS_MSGS"))
    (make-package "THEMIS_MSGS"))
  (shadow 'Battery (find-package "THEMIS_MSGS")))
(unless (find-package "THEMIS_MSGS::BATTERY")
  (make-package "THEMIS_MSGS::BATTERY"))

(in-package "ROS")
;;//! \htmlinclude Battery.msg.html


(defclass themis_msgs::Battery
  :super ros::object
  :slots (_air_state _low_voltage _high_voltage _charge_level ))

(defmethod themis_msgs::Battery
  (:init
   (&key
    ((:air_state __air_state) (instance themis_msgs::State :init))
    ((:low_voltage __low_voltage) 0.0)
    ((:high_voltage __high_voltage) 0.0)
    ((:charge_level __charge_level) 0.0)
    )
   (send-super :init)
   (setq _air_state __air_state)
   (setq _low_voltage (float __low_voltage))
   (setq _high_voltage (float __high_voltage))
   (setq _charge_level (float __charge_level))
   self)
  (:air_state
   (&rest __air_state)
   (if (keywordp (car __air_state))
       (send* _air_state __air_state)
     (progn
       (if __air_state (setq _air_state (car __air_state)))
       _air_state)))
  (:low_voltage
   (&optional __low_voltage)
   (if __low_voltage (setq _low_voltage __low_voltage)) _low_voltage)
  (:high_voltage
   (&optional __high_voltage)
   (if __high_voltage (setq _high_voltage __high_voltage)) _high_voltage)
  (:charge_level
   (&optional __charge_level)
   (if __charge_level (setq _charge_level __charge_level)) _charge_level)
  (:serialization-length
   ()
   (+
    ;; themis_msgs/State _air_state
    (send _air_state :serialization-length)
    ;; float32 _low_voltage
    4
    ;; float32 _high_voltage
    4
    ;; float32 _charge_level
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; themis_msgs/State _air_state
       (send _air_state :serialize s)
     ;; float32 _low_voltage
       (sys::poke _low_voltage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _high_voltage
       (sys::poke _high_voltage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _charge_level
       (sys::poke _charge_level (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; themis_msgs/State _air_state
     (send _air_state :deserialize buf ptr-) (incf ptr- (send _air_state :serialization-length))
   ;; float32 _low_voltage
     (setq _low_voltage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _high_voltage
     (setq _high_voltage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _charge_level
     (setq _charge_level (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get themis_msgs::Battery :md5sum-) "12a9585c62ecbcc51a9af404d663e576")
(setf (get themis_msgs::Battery :datatype-) "themis_msgs/Battery")
(setf (get themis_msgs::Battery :definition-)
      "State air_state
float32 low_voltage
float32 high_voltage
float32 charge_level

# uint16 UNDEFINED_STATE = 0
# uint16 INIT_STATE = 1
# uint16 OFF_STATE = 2
# uint16 SWITCH_ON_STATE = 3
# uint16 ON_STATE = 4
# uint16 SWITCH_OFF_STATE = 5
# uint16 CHARGE_STATE = 6

================================================================================
MSG: themis_msgs/State
uint16 id
string desc

")



(provide :themis_msgs/Battery "12a9585c62ecbcc51a9af404d663e576")


