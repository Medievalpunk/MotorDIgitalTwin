;; Auto-generated. Do not edit!


(when (boundp 'themis_msgs::Error)
  (if (not (find-package "THEMIS_MSGS"))
    (make-package "THEMIS_MSGS"))
  (shadow 'Error (find-package "THEMIS_MSGS")))
(unless (find-package "THEMIS_MSGS::ERROR")
  (make-package "THEMIS_MSGS::ERROR"))

(in-package "ROS")
;;//! \htmlinclude Error.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*WARNING*" (find-package "THEMIS_MSGS::ERROR"))
(shadow '*WARNING* (find-package "THEMIS_MSGS::ERROR"))
(defconstant themis_msgs::Error::*WARNING* 1)
(intern "*INHIBIT*" (find-package "THEMIS_MSGS::ERROR"))
(shadow '*INHIBIT* (find-package "THEMIS_MSGS::ERROR"))
(defconstant themis_msgs::Error::*INHIBIT* 2)
(intern "*SEVERE*" (find-package "THEMIS_MSGS::ERROR"))
(shadow '*SEVERE* (find-package "THEMIS_MSGS::ERROR"))
(defconstant themis_msgs::Error::*SEVERE* 3)
(intern "*VERY_SEVERE*" (find-package "THEMIS_MSGS::ERROR"))
(shadow '*VERY_SEVERE* (find-package "THEMIS_MSGS::ERROR"))
(defconstant themis_msgs::Error::*VERY_SEVERE* 4)
(intern "*CRITICAL*" (find-package "THEMIS_MSGS::ERROR"))
(shadow '*CRITICAL* (find-package "THEMIS_MSGS::ERROR"))
(defconstant themis_msgs::Error::*CRITICAL* 5)
(defclass themis_msgs::Error
  :super ros::object
  :slots (_header _device_id _error_code _level _type _code _message _description _action ))

(defmethod themis_msgs::Error
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:device_id __device_id) "")
    ((:error_code __error_code) "")
    ((:level __level) 0)
    ((:type __type) "")
    ((:code __code) "")
    ((:message __message) "")
    ((:description __description) "")
    ((:action __action) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _device_id (string __device_id))
   (setq _error_code (string __error_code))
   (setq _level (round __level))
   (setq _type (string __type))
   (setq _code (string __code))
   (setq _message (string __message))
   (setq _description (string __description))
   (setq _action (string __action))
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
  (:level
   (&optional __level)
   (if __level (setq _level __level)) _level)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:code
   (&optional __code)
   (if __code (setq _code __code)) _code)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:description
   (&optional __description)
   (if __description (setq _description __description)) _description)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _device_id
    4 (length _device_id)
    ;; string _error_code
    4 (length _error_code)
    ;; uint8 _level
    1
    ;; string _type
    4 (length _type)
    ;; string _code
    4 (length _code)
    ;; string _message
    4 (length _message)
    ;; string _description
    4 (length _description)
    ;; string _action
    4 (length _action)
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
     ;; uint8 _level
       (write-byte _level s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; string _code
       (write-long (length _code) s) (princ _code s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; string _description
       (write-long (length _description) s) (princ _description s)
     ;; string _action
       (write-long (length _action) s) (princ _action s)
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
   ;; uint8 _level
     (setq _level (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _code
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _code (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _action
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _action (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get themis_msgs::Error :md5sum-) "5cc5d80b63d2125c5e6e4b721b310008")
(setf (get themis_msgs::Error :datatype-) "themis_msgs/Error")
(setf (get themis_msgs::Error :definition-)
      "Header header
string device_id
string error_code
uint8 level
string type
string code
string message
string description
string action

# Error levels
uint8 WARNING = 1
uint8 INHIBIT = 2
uint8 SEVERE = 3
uint8 VERY_SEVERE = 4
uint8 CRITICAL = 5

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



(provide :themis_msgs/Error "5cc5d80b63d2125c5e6e4b721b310008")


