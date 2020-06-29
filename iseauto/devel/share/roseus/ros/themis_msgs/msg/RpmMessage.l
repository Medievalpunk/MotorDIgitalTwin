;; Auto-generated. Do not edit!


(when (boundp 'themis_msgs::RpmMessage)
  (if (not (find-package "THEMIS_MSGS"))
    (make-package "THEMIS_MSGS"))
  (shadow 'RpmMessage (find-package "THEMIS_MSGS")))
(unless (find-package "THEMIS_MSGS::RPMMESSAGE")
  (make-package "THEMIS_MSGS::RPMMESSAGE"))

(in-package "ROS")
;;//! \htmlinclude RpmMessage.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass themis_msgs::RpmMessage
  :super ros::object
  :slots (_header _right_rpm _left_rpm ))

(defmethod themis_msgs::RpmMessage
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:right_rpm __right_rpm) 0.0)
    ((:left_rpm __left_rpm) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _right_rpm (float __right_rpm))
   (setq _left_rpm (float __left_rpm))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:right_rpm
   (&optional __right_rpm)
   (if __right_rpm (setq _right_rpm __right_rpm)) _right_rpm)
  (:left_rpm
   (&optional __left_rpm)
   (if __left_rpm (setq _left_rpm __left_rpm)) _left_rpm)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _right_rpm
    4
    ;; float32 _left_rpm
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _right_rpm
       (sys::poke _right_rpm (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _left_rpm
       (sys::poke _left_rpm (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _right_rpm
     (setq _right_rpm (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _left_rpm
     (setq _left_rpm (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get themis_msgs::RpmMessage :md5sum-) "c558b79200b384ff5f1b5baf8d2c219a")
(setf (get themis_msgs::RpmMessage :datatype-) "themis_msgs/RpmMessage")
(setf (get themis_msgs::RpmMessage :definition-)
      "std_msgs/Header header
float32 right_rpm
float32 left_rpm

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



(provide :themis_msgs/RpmMessage "c558b79200b384ff5f1b5baf8d2c219a")


