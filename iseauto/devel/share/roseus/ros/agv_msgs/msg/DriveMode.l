;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::DriveMode)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'DriveMode (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::DRIVEMODE")
  (make-package "AGV_MSGS::DRIVEMODE"))

(in-package "ROS")
;;//! \htmlinclude DriveMode.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*UNKNOWN*" (find-package "AGV_MSGS::DRIVEMODE"))
(shadow '*UNKNOWN* (find-package "AGV_MSGS::DRIVEMODE"))
(defconstant agv_msgs::DriveMode::*UNKNOWN* 0)
(intern "*SLOW*" (find-package "AGV_MSGS::DRIVEMODE"))
(shadow '*SLOW* (find-package "AGV_MSGS::DRIVEMODE"))
(defconstant agv_msgs::DriveMode::*SLOW* 1)
(intern "*TURNING*" (find-package "AGV_MSGS::DRIVEMODE"))
(shadow '*TURNING* (find-package "AGV_MSGS::DRIVEMODE"))
(defconstant agv_msgs::DriveMode::*TURNING* 2)
(intern "*BACKWARD*" (find-package "AGV_MSGS::DRIVEMODE"))
(shadow '*BACKWARD* (find-package "AGV_MSGS::DRIVEMODE"))
(defconstant agv_msgs::DriveMode::*BACKWARD* 3)
(intern "*FORWARD*" (find-package "AGV_MSGS::DRIVEMODE"))
(shadow '*FORWARD* (find-package "AGV_MSGS::DRIVEMODE"))
(defconstant agv_msgs::DriveMode::*FORWARD* 4)
(defclass agv_msgs::DriveMode
  :super ros::object
  :slots (_header _mode _deviation _change_time ))

(defmethod agv_msgs::DriveMode
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:mode __mode) 0)
    ((:deviation __deviation) 0.0)
    ((:change_time __change_time) (instance ros::time :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _mode (round __mode))
   (setq _deviation (float __deviation))
   (setq _change_time __change_time)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:deviation
   (&optional __deviation)
   (if __deviation (setq _deviation __deviation)) _deviation)
  (:change_time
   (&optional __change_time)
   (if __change_time (setq _change_time __change_time)) _change_time)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _mode
    1
    ;; float64 _deviation
    8
    ;; time _change_time
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _mode
       (write-byte _mode s)
     ;; float64 _deviation
       (sys::poke _deviation (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; time _change_time
       (write-long (send _change_time :sec) s) (write-long (send _change_time :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _deviation
     (setq _deviation (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; time _change_time
     (send _change_time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _change_time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get agv_msgs::DriveMode :md5sum-) "948b56633c65a320ea3f2c754c335b0b")
(setf (get agv_msgs::DriveMode :datatype-) "agv_msgs/DriveMode")
(setf (get agv_msgs::DriveMode :definition-)
      "Header header
uint8 UNKNOWN = 0
uint8 SLOW = 1
uint8 TURNING = 2
uint8 BACKWARD = 3
uint8 FORWARD = 4
uint8 mode
float64 deviation
time change_time
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

")



(provide :agv_msgs/DriveMode "948b56633c65a320ea3f2c754c335b0b")


