;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::CurrentPathStatus)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'CurrentPathStatus (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::CURRENTPATHSTATUS")
  (make-package "AGV_MSGS::CURRENTPATHSTATUS"))

(in-package "ROS")
;;//! \htmlinclude CurrentPathStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass agv_msgs::CurrentPathStatus
  :super ros::object
  :slots (_header _path _blockages _planner_name _revision ))

(defmethod agv_msgs::CurrentPathStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:path __path) (instance agv_msgs::NavPath :init))
    ((:blockages __blockages) (let (r) (dotimes (i 0) (push (instance agv_msgs::PathSegmentInfo :init) r)) r))
    ((:planner_name __planner_name) "")
    ((:revision __revision) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _path __path)
   (setq _blockages __blockages)
   (setq _planner_name (string __planner_name))
   (setq _revision (round __revision))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:path
   (&rest __path)
   (if (keywordp (car __path))
       (send* _path __path)
     (progn
       (if __path (setq _path (car __path)))
       _path)))
  (:blockages
   (&rest __blockages)
   (if (keywordp (car __blockages))
       (send* _blockages __blockages)
     (progn
       (if __blockages (setq _blockages (car __blockages)))
       _blockages)))
  (:planner_name
   (&optional __planner_name)
   (if __planner_name (setq _planner_name __planner_name)) _planner_name)
  (:revision
   (&optional __revision)
   (if __revision (setq _revision __revision)) _revision)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; agv_msgs/NavPath _path
    (send _path :serialization-length)
    ;; agv_msgs/PathSegmentInfo[] _blockages
    (apply #'+ (send-all _blockages :serialization-length)) 4
    ;; string _planner_name
    4 (length _planner_name)
    ;; uint16 _revision
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; agv_msgs/NavPath _path
       (send _path :serialize s)
     ;; agv_msgs/PathSegmentInfo[] _blockages
     (write-long (length _blockages) s)
     (dolist (elem _blockages)
       (send elem :serialize s)
       )
     ;; string _planner_name
       (write-long (length _planner_name) s) (princ _planner_name s)
     ;; uint16 _revision
       (write-word _revision s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; agv_msgs/NavPath _path
     (send _path :deserialize buf ptr-) (incf ptr- (send _path :serialization-length))
   ;; agv_msgs/PathSegmentInfo[] _blockages
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _blockages (let (r) (dotimes (i n) (push (instance agv_msgs::PathSegmentInfo :init) r)) r))
     (dolist (elem- _blockages)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string _planner_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _planner_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint16 _revision
     (setq _revision (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get agv_msgs::CurrentPathStatus :md5sum-) "ea2564236946447786963cb1fb92e625")
(setf (get agv_msgs::CurrentPathStatus :datatype-) "agv_msgs/CurrentPathStatus")
(setf (get agv_msgs::CurrentPathStatus :definition-)
      "Header header
agv_msgs/NavPath path
agv_msgs/PathSegmentInfo[] blockages
string planner_name
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
MSG: agv_msgs/NavPath
string[] ids
uint16 type
================================================================================
MSG: agv_msgs/PathSegmentInfo
string start_id
string end_id
float32 distance
")



(provide :agv_msgs/CurrentPathStatus "ea2564236946447786963cb1fb92e625")


