;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::EncoderDataStamped)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'EncoderDataStamped (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::ENCODERDATASTAMPED")
  (make-package "AGV_MSGS::ENCODERDATASTAMPED"))

(in-package "ROS")
;;//! \htmlinclude EncoderDataStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass agv_msgs::EncoderDataStamped
  :super ros::object
  :slots (_header _enc ))

(defmethod agv_msgs::EncoderDataStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:enc __enc) (instance agv_msgs::EncoderData :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _enc __enc)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:enc
   (&rest __enc)
   (if (keywordp (car __enc))
       (send* _enc __enc)
     (progn
       (if __enc (setq _enc (car __enc)))
       _enc)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; agv_msgs/EncoderData _enc
    (send _enc :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; agv_msgs/EncoderData _enc
       (send _enc :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; agv_msgs/EncoderData _enc
     (send _enc :deserialize buf ptr-) (incf ptr- (send _enc :serialization-length))
   ;;
   self)
  )

(setf (get agv_msgs::EncoderDataStamped :md5sum-) "91b91fb5bbd81473685cfae3dfecdbe1")
(setf (get agv_msgs::EncoderDataStamped :datatype-) "agv_msgs/EncoderDataStamped")
(setf (get agv_msgs::EncoderDataStamped :definition-)
      "Header header
EncoderData enc

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
MSG: agv_msgs/EncoderData
float32 velocity
float32 distance

uint8 units
uint8 RPM=0     # velocity in rpm,      distance in rotations
uint8 RAD_S=1   # velocity in rad/s,    distance in radians
uint8 M_S=2     # velocity in m/s,      distance in metres
uint8 TICKS=3   # velocity in ticks/s,  distance in ticks

")



(provide :agv_msgs/EncoderDataStamped "91b91fb5bbd81473685cfae3dfecdbe1")


