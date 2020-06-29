;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::WaypointArrayStamped)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'WaypointArrayStamped (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::WAYPOINTARRAYSTAMPED")
  (make-package "AGV_MSGS::WAYPOINTARRAYSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude WaypointArrayStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass agv_msgs::WaypointArrayStamped
  :super ros::object
  :slots (_header _points _revision ))

(defmethod agv_msgs::WaypointArrayStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:points __points) (let (r) (dotimes (i 0) (push (instance agv_msgs::Waypoint :init) r)) r))
    ((:revision __revision) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _points __points)
   (setq _revision (round __revision))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:revision
   (&optional __revision)
   (if __revision (setq _revision __revision)) _revision)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; agv_msgs/Waypoint[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ;; uint16 _revision
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; agv_msgs/Waypoint[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;; uint16 _revision
       (write-word _revision s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; agv_msgs/Waypoint[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance agv_msgs::Waypoint :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint16 _revision
     (setq _revision (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get agv_msgs::WaypointArrayStamped :md5sum-) "808c21c32e2c422f32f0484a3daade41")
(setf (get agv_msgs::WaypointArrayStamped :datatype-) "agv_msgs/WaypointArrayStamped")
(setf (get agv_msgs::WaypointArrayStamped :definition-)
      "Header header
agv_msgs/Waypoint[] points
uint16 revision
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
MSG: agv_msgs/Waypoint
float32 x
float32 y
float32 yaw
string goal_id
string frame_id
uint8 state
")



(provide :agv_msgs/WaypointArrayStamped "808c21c32e2c422f32f0484a3daade41")


