; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude DriveMode.msg.html

(cl:defclass <DriveMode> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (deviation
    :reader deviation
    :initarg :deviation
    :type cl:float
    :initform 0.0)
   (change_time
    :reader change_time
    :initarg :change_time
    :type cl:real
    :initform 0))
)

(cl:defclass DriveMode (<DriveMode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DriveMode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DriveMode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<DriveMode> is deprecated: use agv_msgs-msg:DriveMode instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DriveMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:header-val is deprecated.  Use agv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <DriveMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:mode-val is deprecated.  Use agv_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'deviation-val :lambda-list '(m))
(cl:defmethod deviation-val ((m <DriveMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:deviation-val is deprecated.  Use agv_msgs-msg:deviation instead.")
  (deviation m))

(cl:ensure-generic-function 'change_time-val :lambda-list '(m))
(cl:defmethod change_time-val ((m <DriveMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:change_time-val is deprecated.  Use agv_msgs-msg:change_time instead.")
  (change_time m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DriveMode>)))
    "Constants for message type '<DriveMode>"
  '((:UNKNOWN . 0)
    (:SLOW . 1)
    (:TURNING . 2)
    (:BACKWARD . 3)
    (:FORWARD . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DriveMode)))
    "Constants for message type 'DriveMode"
  '((:UNKNOWN . 0)
    (:SLOW . 1)
    (:TURNING . 2)
    (:BACKWARD . 3)
    (:FORWARD . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DriveMode>) ostream)
  "Serializes a message object of type '<DriveMode>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'deviation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'change_time)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'change_time) (cl:floor (cl:slot-value msg 'change_time)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DriveMode>) istream)
  "Deserializes a message object of type '<DriveMode>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'deviation) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'change_time) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DriveMode>)))
  "Returns string type for a message object of type '<DriveMode>"
  "agv_msgs/DriveMode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DriveMode)))
  "Returns string type for a message object of type 'DriveMode"
  "agv_msgs/DriveMode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DriveMode>)))
  "Returns md5sum for a message object of type '<DriveMode>"
  "948b56633c65a320ea3f2c754c335b0b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DriveMode)))
  "Returns md5sum for a message object of type 'DriveMode"
  "948b56633c65a320ea3f2c754c335b0b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DriveMode>)))
  "Returns full string definition for message of type '<DriveMode>"
  (cl:format cl:nil "Header header~%uint8 UNKNOWN = 0~%uint8 SLOW = 1~%uint8 TURNING = 2~%uint8 BACKWARD = 3~%uint8 FORWARD = 4~%uint8 mode~%float64 deviation~%time change_time~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DriveMode)))
  "Returns full string definition for message of type 'DriveMode"
  (cl:format cl:nil "Header header~%uint8 UNKNOWN = 0~%uint8 SLOW = 1~%uint8 TURNING = 2~%uint8 BACKWARD = 3~%uint8 FORWARD = 4~%uint8 mode~%float64 deviation~%time change_time~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DriveMode>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DriveMode>))
  "Converts a ROS message object to a list"
  (cl:list 'DriveMode
    (cl:cons ':header (header msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':deviation (deviation msg))
    (cl:cons ':change_time (change_time msg))
))
