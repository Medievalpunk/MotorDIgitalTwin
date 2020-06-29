; Auto-generated. Do not edit!


(cl:in-package themis_msgs-msg)


;//! \htmlinclude RpmMessage.msg.html

(cl:defclass <RpmMessage> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (right_rpm
    :reader right_rpm
    :initarg :right_rpm
    :type cl:float
    :initform 0.0)
   (left_rpm
    :reader left_rpm
    :initarg :left_rpm
    :type cl:float
    :initform 0.0))
)

(cl:defclass RpmMessage (<RpmMessage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RpmMessage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RpmMessage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name themis_msgs-msg:<RpmMessage> is deprecated: use themis_msgs-msg:RpmMessage instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RpmMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:header-val is deprecated.  Use themis_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'right_rpm-val :lambda-list '(m))
(cl:defmethod right_rpm-val ((m <RpmMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:right_rpm-val is deprecated.  Use themis_msgs-msg:right_rpm instead.")
  (right_rpm m))

(cl:ensure-generic-function 'left_rpm-val :lambda-list '(m))
(cl:defmethod left_rpm-val ((m <RpmMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:left_rpm-val is deprecated.  Use themis_msgs-msg:left_rpm instead.")
  (left_rpm m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RpmMessage>) ostream)
  "Serializes a message object of type '<RpmMessage>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'right_rpm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'left_rpm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RpmMessage>) istream)
  "Deserializes a message object of type '<RpmMessage>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'right_rpm) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'left_rpm) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RpmMessage>)))
  "Returns string type for a message object of type '<RpmMessage>"
  "themis_msgs/RpmMessage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RpmMessage)))
  "Returns string type for a message object of type 'RpmMessage"
  "themis_msgs/RpmMessage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RpmMessage>)))
  "Returns md5sum for a message object of type '<RpmMessage>"
  "c558b79200b384ff5f1b5baf8d2c219a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RpmMessage)))
  "Returns md5sum for a message object of type 'RpmMessage"
  "c558b79200b384ff5f1b5baf8d2c219a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RpmMessage>)))
  "Returns full string definition for message of type '<RpmMessage>"
  (cl:format cl:nil "std_msgs/Header header~%float32 right_rpm~%float32 left_rpm~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RpmMessage)))
  "Returns full string definition for message of type 'RpmMessage"
  (cl:format cl:nil "std_msgs/Header header~%float32 right_rpm~%float32 left_rpm~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RpmMessage>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RpmMessage>))
  "Converts a ROS message object to a list"
  (cl:list 'RpmMessage
    (cl:cons ':header (header msg))
    (cl:cons ':right_rpm (right_rpm msg))
    (cl:cons ':left_rpm (left_rpm msg))
))
