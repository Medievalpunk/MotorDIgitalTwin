; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude Tag.msg.html

(cl:defclass <Tag> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (tag_addr
    :reader tag_addr
    :initarg :tag_addr
    :type cl:string
    :initform "")
   (anchor_addr
    :reader anchor_addr
    :initarg :anchor_addr
    :type cl:string
    :initform "")
   (dist_to_anchor
    :reader dist_to_anchor
    :initarg :dist_to_anchor
    :type cl:float
    :initform 0.0)
   (tag_timestamp
    :reader tag_timestamp
    :initarg :tag_timestamp
    :type cl:integer
    :initform 0))
)

(cl:defclass Tag (<Tag>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Tag>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Tag)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<Tag> is deprecated: use agv_msgs-msg:Tag instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Tag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:header-val is deprecated.  Use agv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'tag_addr-val :lambda-list '(m))
(cl:defmethod tag_addr-val ((m <Tag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:tag_addr-val is deprecated.  Use agv_msgs-msg:tag_addr instead.")
  (tag_addr m))

(cl:ensure-generic-function 'anchor_addr-val :lambda-list '(m))
(cl:defmethod anchor_addr-val ((m <Tag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:anchor_addr-val is deprecated.  Use agv_msgs-msg:anchor_addr instead.")
  (anchor_addr m))

(cl:ensure-generic-function 'dist_to_anchor-val :lambda-list '(m))
(cl:defmethod dist_to_anchor-val ((m <Tag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:dist_to_anchor-val is deprecated.  Use agv_msgs-msg:dist_to_anchor instead.")
  (dist_to_anchor m))

(cl:ensure-generic-function 'tag_timestamp-val :lambda-list '(m))
(cl:defmethod tag_timestamp-val ((m <Tag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:tag_timestamp-val is deprecated.  Use agv_msgs-msg:tag_timestamp instead.")
  (tag_timestamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Tag>) ostream)
  "Serializes a message object of type '<Tag>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'tag_addr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'tag_addr))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'anchor_addr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'anchor_addr))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dist_to_anchor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'tag_timestamp)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Tag>) istream)
  "Deserializes a message object of type '<Tag>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tag_addr) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'tag_addr) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'anchor_addr) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'anchor_addr) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dist_to_anchor) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tag_timestamp) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Tag>)))
  "Returns string type for a message object of type '<Tag>"
  "agv_msgs/Tag")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Tag)))
  "Returns string type for a message object of type 'Tag"
  "agv_msgs/Tag")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Tag>)))
  "Returns md5sum for a message object of type '<Tag>"
  "5c6cb49b278d3ac5d857f32bab6a3e0e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Tag)))
  "Returns md5sum for a message object of type 'Tag"
  "5c6cb49b278d3ac5d857f32bab6a3e0e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Tag>)))
  "Returns full string definition for message of type '<Tag>"
  (cl:format cl:nil "Header header~%string tag_addr~%string anchor_addr~%float32 dist_to_anchor~%int32 tag_timestamp~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Tag)))
  "Returns full string definition for message of type 'Tag"
  (cl:format cl:nil "Header header~%string tag_addr~%string anchor_addr~%float32 dist_to_anchor~%int32 tag_timestamp~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Tag>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'tag_addr))
     4 (cl:length (cl:slot-value msg 'anchor_addr))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Tag>))
  "Converts a ROS message object to a list"
  (cl:list 'Tag
    (cl:cons ':header (header msg))
    (cl:cons ':tag_addr (tag_addr msg))
    (cl:cons ':anchor_addr (anchor_addr msg))
    (cl:cons ':dist_to_anchor (dist_to_anchor msg))
    (cl:cons ':tag_timestamp (tag_timestamp msg))
))
