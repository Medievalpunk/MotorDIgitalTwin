; Auto-generated. Do not edit!


(cl:in-package themis_msgs-msg)


;//! \htmlinclude Emcy.msg.html

(cl:defclass <Emcy> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (device_id
    :reader device_id
    :initarg :device_id
    :type cl:string
    :initform "")
   (error_code
    :reader error_code
    :initarg :error_code
    :type cl:string
    :initform ""))
)

(cl:defclass Emcy (<Emcy>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Emcy>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Emcy)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name themis_msgs-msg:<Emcy> is deprecated: use themis_msgs-msg:Emcy instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Emcy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:header-val is deprecated.  Use themis_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'device_id-val :lambda-list '(m))
(cl:defmethod device_id-val ((m <Emcy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:device_id-val is deprecated.  Use themis_msgs-msg:device_id instead.")
  (device_id m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <Emcy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:error_code-val is deprecated.  Use themis_msgs-msg:error_code instead.")
  (error_code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Emcy>) ostream)
  "Serializes a message object of type '<Emcy>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'device_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'device_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error_code))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error_code))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Emcy>) istream)
  "Deserializes a message object of type '<Emcy>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'device_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'device_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_code) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'error_code) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Emcy>)))
  "Returns string type for a message object of type '<Emcy>"
  "themis_msgs/Emcy")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Emcy)))
  "Returns string type for a message object of type 'Emcy"
  "themis_msgs/Emcy")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Emcy>)))
  "Returns md5sum for a message object of type '<Emcy>"
  "6b0d60587d4af34f8c627383d5960d05")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Emcy)))
  "Returns md5sum for a message object of type 'Emcy"
  "6b0d60587d4af34f8c627383d5960d05")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Emcy>)))
  "Returns full string definition for message of type '<Emcy>"
  (cl:format cl:nil "Header header~%string device_id~%string error_code~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Emcy)))
  "Returns full string definition for message of type 'Emcy"
  (cl:format cl:nil "Header header~%string device_id~%string error_code~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Emcy>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'device_id))
     4 (cl:length (cl:slot-value msg 'error_code))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Emcy>))
  "Converts a ROS message object to a list"
  (cl:list 'Emcy
    (cl:cons ':header (header msg))
    (cl:cons ':device_id (device_id msg))
    (cl:cons ':error_code (error_code msg))
))
