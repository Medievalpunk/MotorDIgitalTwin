; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude WaypointArrayStamped.msg.html

(cl:defclass <WaypointArrayStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (points
    :reader points
    :initarg :points
    :type (cl:vector agv_msgs-msg:Waypoint)
   :initform (cl:make-array 0 :element-type 'agv_msgs-msg:Waypoint :initial-element (cl:make-instance 'agv_msgs-msg:Waypoint)))
   (revision
    :reader revision
    :initarg :revision
    :type cl:fixnum
    :initform 0))
)

(cl:defclass WaypointArrayStamped (<WaypointArrayStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointArrayStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointArrayStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<WaypointArrayStamped> is deprecated: use agv_msgs-msg:WaypointArrayStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <WaypointArrayStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:header-val is deprecated.  Use agv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <WaypointArrayStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:points-val is deprecated.  Use agv_msgs-msg:points instead.")
  (points m))

(cl:ensure-generic-function 'revision-val :lambda-list '(m))
(cl:defmethod revision-val ((m <WaypointArrayStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:revision-val is deprecated.  Use agv_msgs-msg:revision instead.")
  (revision m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointArrayStamped>) ostream)
  "Serializes a message object of type '<WaypointArrayStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'revision)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'revision)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointArrayStamped>) istream)
  "Deserializes a message object of type '<WaypointArrayStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'agv_msgs-msg:Waypoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'revision)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'revision)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointArrayStamped>)))
  "Returns string type for a message object of type '<WaypointArrayStamped>"
  "agv_msgs/WaypointArrayStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointArrayStamped)))
  "Returns string type for a message object of type 'WaypointArrayStamped"
  "agv_msgs/WaypointArrayStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointArrayStamped>)))
  "Returns md5sum for a message object of type '<WaypointArrayStamped>"
  "808c21c32e2c422f32f0484a3daade41")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointArrayStamped)))
  "Returns md5sum for a message object of type 'WaypointArrayStamped"
  "808c21c32e2c422f32f0484a3daade41")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointArrayStamped>)))
  "Returns full string definition for message of type '<WaypointArrayStamped>"
  (cl:format cl:nil "Header header~%agv_msgs/Waypoint[] points~%uint16 revision~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: agv_msgs/Waypoint~%float32 x~%float32 y~%float32 yaw~%string goal_id~%string frame_id~%uint8 state~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointArrayStamped)))
  "Returns full string definition for message of type 'WaypointArrayStamped"
  (cl:format cl:nil "Header header~%agv_msgs/Waypoint[] points~%uint16 revision~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: agv_msgs/Waypoint~%float32 x~%float32 y~%float32 yaw~%string goal_id~%string frame_id~%uint8 state~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointArrayStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointArrayStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointArrayStamped
    (cl:cons ':header (header msg))
    (cl:cons ':points (points msg))
    (cl:cons ':revision (revision msg))
))
