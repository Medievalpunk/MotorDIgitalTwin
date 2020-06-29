;; Auto-generated. Do not edit!


(when (boundp 'themis_msgs::Feedback)
  (if (not (find-package "THEMIS_MSGS"))
    (make-package "THEMIS_MSGS"))
  (shadow 'Feedback (find-package "THEMIS_MSGS")))
(unless (find-package "THEMIS_MSGS::FEEDBACK")
  (make-package "THEMIS_MSGS::FEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude Feedback.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass themis_msgs::Feedback
  :super ros::object
  :slots (_header _battery _left _right _generator _vehicle ))

(defmethod themis_msgs::Feedback
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:battery __battery) (instance themis_msgs::Battery :init))
    ((:left __left) (instance themis_msgs::Track :init))
    ((:right __right) (instance themis_msgs::Track :init))
    ((:generator __generator) (instance themis_msgs::Generator :init))
    ((:vehicle __vehicle) (instance themis_msgs::Vehicle :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _battery __battery)
   (setq _left __left)
   (setq _right __right)
   (setq _generator __generator)
   (setq _vehicle __vehicle)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:battery
   (&rest __battery)
   (if (keywordp (car __battery))
       (send* _battery __battery)
     (progn
       (if __battery (setq _battery (car __battery)))
       _battery)))
  (:left
   (&rest __left)
   (if (keywordp (car __left))
       (send* _left __left)
     (progn
       (if __left (setq _left (car __left)))
       _left)))
  (:right
   (&rest __right)
   (if (keywordp (car __right))
       (send* _right __right)
     (progn
       (if __right (setq _right (car __right)))
       _right)))
  (:generator
   (&rest __generator)
   (if (keywordp (car __generator))
       (send* _generator __generator)
     (progn
       (if __generator (setq _generator (car __generator)))
       _generator)))
  (:vehicle
   (&rest __vehicle)
   (if (keywordp (car __vehicle))
       (send* _vehicle __vehicle)
     (progn
       (if __vehicle (setq _vehicle (car __vehicle)))
       _vehicle)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; themis_msgs/Battery _battery
    (send _battery :serialization-length)
    ;; themis_msgs/Track _left
    (send _left :serialization-length)
    ;; themis_msgs/Track _right
    (send _right :serialization-length)
    ;; themis_msgs/Generator _generator
    (send _generator :serialization-length)
    ;; themis_msgs/Vehicle _vehicle
    (send _vehicle :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; themis_msgs/Battery _battery
       (send _battery :serialize s)
     ;; themis_msgs/Track _left
       (send _left :serialize s)
     ;; themis_msgs/Track _right
       (send _right :serialize s)
     ;; themis_msgs/Generator _generator
       (send _generator :serialize s)
     ;; themis_msgs/Vehicle _vehicle
       (send _vehicle :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; themis_msgs/Battery _battery
     (send _battery :deserialize buf ptr-) (incf ptr- (send _battery :serialization-length))
   ;; themis_msgs/Track _left
     (send _left :deserialize buf ptr-) (incf ptr- (send _left :serialization-length))
   ;; themis_msgs/Track _right
     (send _right :deserialize buf ptr-) (incf ptr- (send _right :serialization-length))
   ;; themis_msgs/Generator _generator
     (send _generator :deserialize buf ptr-) (incf ptr- (send _generator :serialization-length))
   ;; themis_msgs/Vehicle _vehicle
     (send _vehicle :deserialize buf ptr-) (incf ptr- (send _vehicle :serialization-length))
   ;;
   self)
  )

(setf (get themis_msgs::Feedback :md5sum-) "8b3115dccfc099de2189cfdd7df2ec24")
(setf (get themis_msgs::Feedback :datatype-) "themis_msgs/Feedback")
(setf (get themis_msgs::Feedback :definition-)
      "Header header
Battery battery
Track left
Track right
Generator generator
Vehicle vehicle

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: themis_msgs/Battery
State air_state
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

================================================================================
MSG: themis_msgs/Track
Sevcon sevcon
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

================================================================================
MSG: themis_msgs/Generator
State state
float32 fuel_level
Sevcon sevcon
GeneratorPdm pdm

================================================================================
MSG: themis_msgs/GeneratorPdm
float32 motor_coolant_temp
float32 engine_coolant_temp

================================================================================
MSG: themis_msgs/Vehicle
State state
float32 speed
State drive_state
uint8 brake_feedback
bool imd_error
VehicleMode mode

================================================================================
MSG: themis_msgs/VehicleMode
State vehicle
State generator
State speed
State brake
State charge

")



(provide :themis_msgs/Feedback "8b3115dccfc099de2189cfdd7df2ec24")


