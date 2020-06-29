;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::TractionData)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'TractionData (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::TRACTIONDATA")
  (make-package "AGV_MSGS::TRACTIONDATA"))

(in-package "ROS")
;;//! \htmlinclude TractionData.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass agv_msgs::TractionData
  :super ros::object
  :slots (_header _left _right ))

(defmethod agv_msgs::TractionData
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:left __left) (instance agv_msgs::MotorData :init))
    ((:right __right) (instance agv_msgs::MotorData :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _left __left)
   (setq _right __right)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
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
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; agv_msgs/MotorData _left
    (send _left :serialization-length)
    ;; agv_msgs/MotorData _right
    (send _right :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; agv_msgs/MotorData _left
       (send _left :serialize s)
     ;; agv_msgs/MotorData _right
       (send _right :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; agv_msgs/MotorData _left
     (send _left :deserialize buf ptr-) (incf ptr- (send _left :serialization-length))
   ;; agv_msgs/MotorData _right
     (send _right :deserialize buf ptr-) (incf ptr- (send _right :serialization-length))
   ;;
   self)
  )

(setf (get agv_msgs::TractionData :md5sum-) "6b382b54a342799235e892a0035f8c7b")
(setf (get agv_msgs::TractionData :datatype-) "agv_msgs/TractionData")
(setf (get agv_msgs::TractionData :definition-)
      "Header header
MotorData left
MotorData right

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
MSG: agv_msgs/MotorData
EncoderData enc
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



(provide :agv_msgs/TractionData "6b382b54a342799235e892a0035f8c7b")


