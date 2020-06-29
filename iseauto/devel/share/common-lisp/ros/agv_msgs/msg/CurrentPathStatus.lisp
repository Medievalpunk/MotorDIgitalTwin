; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude CurrentPathStatus.msg.html

(cl:defclass <CurrentPathStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (path
    :reader path
    :initarg :path
    :type agv_msgs-msg:NavPath
    :initform (cl:make-instance 'agv_msgs-msg:NavPath))
   (blockages
    :reader blockages
    :initarg :blockages
    :type (cl:vector agv_msgs-msg:PathSegmentInfo)
   :initform (cl:make-array 0 :element-type 'agv_msgs-msg:PathSegmentInfo :initial-element (cl:make-instance 'agv_msgs-msg:PathSegmentInfo)))
   (planner_name
    :reader planner_name
    :initarg :planner_name
    :type cl:string
    :initform "")
   (revision
    :reader revision
    :initarg :revision
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CurrentPathStatus (<CurrentPathStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CurrentPathStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CurrentPathStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<CurrentPathStatus> is deprecated: use agv_msgs-msg:CurrentPathStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CurrentPathStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:header-val is deprecated.  Use agv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <CurrentPathStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:path-val is deprecated.  Use agv_msgs-msg:path instead.")
  (path m))

(cl:ensure-generic-function 'blockages-val :lambda-list '(m))
(cl:defmethod blockages-val ((m <CurrentPathStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:blockages-val is deprecated.  Use agv_msgs-msg:blockages instead.")
  (blockages m))

(cl:ensure-generic-function 'planner_name-val :lambda-list '(m))
(cl:defmethod planner_name-val ((m <CurrentPathStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:planner_name-val is deprecated.  Use agv_msgs-msg:planner_name instead.")
  (planner_name m))

(cl:ensure-generic-function 'revision-val :lambda-list '(m))
(cl:defmethod revision-val ((m <CurrentPathStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:revision-val is deprecated.  Use agv_msgs-msg:revision instead.")
  (revision m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CurrentPathStatus>) ostream)
  "Serializes a message object of type '<CurrentPathStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'path) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'blockages))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'blockages))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'planner_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'planner_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'revision)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'revision)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CurrentPathStatus>) istream)
  "Deserializes a message object of type '<CurrentPathStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'path) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'blockages) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'blockages)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'agv_msgs-msg:PathSegmentInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'planner_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'planner_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'revision)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'revision)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CurrentPathStatus>)))
  "Returns string type for a message object of type '<CurrentPathStatus>"
  "agv_msgs/CurrentPathStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CurrentPathStatus)))
  "Returns string type for a message object of type 'CurrentPathStatus"
  "agv_msgs/CurrentPathStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CurrentPathStatus>)))
  "Returns md5sum for a message object of type '<CurrentPathStatus>"
  "ea2564236946447786963cb1fb92e625")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CurrentPathStatus)))
  "Returns md5sum for a message object of type 'CurrentPathStatus"
  "ea2564236946447786963cb1fb92e625")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CurrentPathStatus>)))
  "Returns full string definition for message of type '<CurrentPathStatus>"
  (cl:format cl:nil "Header header~%agv_msgs/NavPath path~%agv_msgs/PathSegmentInfo[] blockages~%string planner_name~%uint16 revision~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: agv_msgs/NavPath~%string[] ids~%uint16 type~%================================================================================~%MSG: agv_msgs/PathSegmentInfo~%string start_id~%string end_id~%float32 distance~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CurrentPathStatus)))
  "Returns full string definition for message of type 'CurrentPathStatus"
  (cl:format cl:nil "Header header~%agv_msgs/NavPath path~%agv_msgs/PathSegmentInfo[] blockages~%string planner_name~%uint16 revision~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: agv_msgs/NavPath~%string[] ids~%uint16 type~%================================================================================~%MSG: agv_msgs/PathSegmentInfo~%string start_id~%string end_id~%float32 distance~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CurrentPathStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'path))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'blockages) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:length (cl:slot-value msg 'planner_name))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CurrentPathStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'CurrentPathStatus
    (cl:cons ':header (header msg))
    (cl:cons ':path (path msg))
    (cl:cons ':blockages (blockages msg))
    (cl:cons ':planner_name (planner_name msg))
    (cl:cons ':revision (revision msg))
))
