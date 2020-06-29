;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::Tag)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'Tag (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::TAG")
  (make-package "AGV_MSGS::TAG"))

(in-package "ROS")
;;//! \htmlinclude Tag.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass agv_msgs::Tag
  :super ros::object
  :slots (_header _tag_addr _anchor_addr _dist_to_anchor _tag_timestamp ))

(defmethod agv_msgs::Tag
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:tag_addr __tag_addr) "")
    ((:anchor_addr __anchor_addr) "")
    ((:dist_to_anchor __dist_to_anchor) 0.0)
    ((:tag_timestamp __tag_timestamp) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _tag_addr (string __tag_addr))
   (setq _anchor_addr (string __anchor_addr))
   (setq _dist_to_anchor (float __dist_to_anchor))
   (setq _tag_timestamp (round __tag_timestamp))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:tag_addr
   (&optional __tag_addr)
   (if __tag_addr (setq _tag_addr __tag_addr)) _tag_addr)
  (:anchor_addr
   (&optional __anchor_addr)
   (if __anchor_addr (setq _anchor_addr __anchor_addr)) _anchor_addr)
  (:dist_to_anchor
   (&optional __dist_to_anchor)
   (if __dist_to_anchor (setq _dist_to_anchor __dist_to_anchor)) _dist_to_anchor)
  (:tag_timestamp
   (&optional __tag_timestamp)
   (if __tag_timestamp (setq _tag_timestamp __tag_timestamp)) _tag_timestamp)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _tag_addr
    4 (length _tag_addr)
    ;; string _anchor_addr
    4 (length _anchor_addr)
    ;; float32 _dist_to_anchor
    4
    ;; int32 _tag_timestamp
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _tag_addr
       (write-long (length _tag_addr) s) (princ _tag_addr s)
     ;; string _anchor_addr
       (write-long (length _anchor_addr) s) (princ _anchor_addr s)
     ;; float32 _dist_to_anchor
       (sys::poke _dist_to_anchor (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _tag_timestamp
       (write-long _tag_timestamp s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _tag_addr
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _tag_addr (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _anchor_addr
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _anchor_addr (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _dist_to_anchor
     (setq _dist_to_anchor (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _tag_timestamp
     (setq _tag_timestamp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get agv_msgs::Tag :md5sum-) "5c6cb49b278d3ac5d857f32bab6a3e0e")
(setf (get agv_msgs::Tag :datatype-) "agv_msgs/Tag")
(setf (get agv_msgs::Tag :definition-)
      "Header header
string tag_addr
string anchor_addr
float32 dist_to_anchor
int32 tag_timestamp

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



(provide :agv_msgs/Tag "5c6cb49b278d3ac5d857f32bab6a3e0e")


