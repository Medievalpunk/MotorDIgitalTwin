; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude EncoderDataStamped.msg.html

(cl:defclass <EncoderDataStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (enc
    :reader enc
    :initarg :enc
    :type agv_msgs-msg:EncoderData
    :initform (cl:make-instance 'agv_msgs-msg:EncoderData)))
)

(cl:defclass EncoderDataStamped (<EncoderDataStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EncoderDataStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EncoderDataStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<EncoderDataStamped> is deprecated: use agv_msgs-msg:EncoderDataStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <EncoderDataStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:header-val is deprecated.  Use agv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'enc-val :lambda-list '(m))
(cl:defmethod enc-val ((m <EncoderDataStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:enc-val is deprecated.  Use agv_msgs-msg:enc instead.")
  (enc m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EncoderDataStamped>) ostream)
  "Serializes a message object of type '<EncoderDataStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'enc) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EncoderDataStamped>) istream)
  "Deserializes a message object of type '<EncoderDataStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'enc) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EncoderDataStamped>)))
  "Returns string type for a message object of type '<EncoderDataStamped>"
  "agv_msgs/EncoderDataStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EncoderDataStamped)))
  "Returns string type for a message object of type 'EncoderDataStamped"
  "agv_msgs/EncoderDataStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EncoderDataStamped>)))
  "Returns md5sum for a message object of type '<EncoderDataStamped>"
  "91b91fb5bbd81473685cfae3dfecdbe1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EncoderDataStamped)))
  "Returns md5sum for a message object of type 'EncoderDataStamped"
  "91b91fb5bbd81473685cfae3dfecdbe1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EncoderDataStamped>)))
  "Returns full string definition for message of type '<EncoderDataStamped>"
  (cl:format cl:nil "Header header~%EncoderData enc~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: agv_msgs/EncoderData~%float32 velocity~%float32 distance~%~%uint8 units~%uint8 RPM=0     # velocity in rpm,      distance in rotations~%uint8 RAD_S=1   # velocity in rad/s,    distance in radians~%uint8 M_S=2     # velocity in m/s,      distance in metres~%uint8 TICKS=3   # velocity in ticks/s,  distance in ticks~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EncoderDataStamped)))
  "Returns full string definition for message of type 'EncoderDataStamped"
  (cl:format cl:nil "Header header~%EncoderData enc~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: agv_msgs/EncoderData~%float32 velocity~%float32 distance~%~%uint8 units~%uint8 RPM=0     # velocity in rpm,      distance in rotations~%uint8 RAD_S=1   # velocity in rad/s,    distance in radians~%uint8 M_S=2     # velocity in m/s,      distance in metres~%uint8 TICKS=3   # velocity in ticks/s,  distance in ticks~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EncoderDataStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'enc))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EncoderDataStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'EncoderDataStamped
    (cl:cons ':header (header msg))
    (cl:cons ':enc (enc msg))
))
