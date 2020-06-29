;; Auto-generated. Do not edit!


(when (boundp 'themis_msgs::Emcy)
  (if (not (find-package "THEMIS_MSGS"))
    (make-package "THEMIS_MSGS"))
  (shadow 'Emcy (find-package "THEMIS_MSGS")))
(unless (find-package "THEMIS_MSGS::EMCY")
  (make-package "THEMIS_MSGS::EMCY"))

(in-package "ROS")
;;//! \htmlinclude Emcy.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass themis_msgs::Emcy
  :super ros::object
  :slots (_header _device_id _error_code ))

(defmethod themis_msgs::Emcy
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:device_id __device_id) "")
    ((:error_code __error_code) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _device_id (string __device_id))
   (setq _error_code (string __error_code))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:device_id
   (&optional __device_id)
   (if __device_id (setq _device_id __device_id)) _device_id)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _device_id
    4 (length _device_id)
    ;; string _error_code
    4 (length _error_code)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _device_id
       (write-long (length _device_id) s) (princ _device_id s)
     ;; string _error_code
       (write-long (length _error_code) s) (princ _error_code s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _device_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _device_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _error_code
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _error_code (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get themis_msgs::Emcy :md5sum-) "6b0d60587d4af34f8c627383d5960d05")
(setf (get themis_msgs::Emcy :datatype-) "themis_msgs/Emcy")
(setf (get themis_msgs::Emcy :definition-)
      "Header header
string device_id
string error_code

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



(provide :themis_msgs/Emcy "6b0d60587d4af34f8c627383d5960d05")


