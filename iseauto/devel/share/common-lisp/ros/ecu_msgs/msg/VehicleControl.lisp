; Auto-generated. Do not edit!


(cl:in-package ecu_msgs-msg)


;//! \htmlinclude VehicleControl.msg.html

(cl:defclass <VehicleControl> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (track_right
    :reader track_right
    :initarg :track_right
    :type ecu_msgs-msg:TrackControl
    :initform (cl:make-instance 'ecu_msgs-msg:TrackControl))
   (track_left
    :reader track_left
    :initarg :track_left
    :type ecu_msgs-msg:TrackControl
    :initform (cl:make-instance 'ecu_msgs-msg:TrackControl))
   (breaks
    :reader breaks
    :initarg :breaks
    :type cl:boolean
    :initform cl:nil)
   (lights
    :reader lights
    :initarg :lights
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass VehicleControl (<VehicleControl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleControl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleControl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ecu_msgs-msg:<VehicleControl> is deprecated: use ecu_msgs-msg:VehicleControl instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <VehicleControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ecu_msgs-msg:header-val is deprecated.  Use ecu_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'track_right-val :lambda-list '(m))
(cl:defmethod track_right-val ((m <VehicleControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ecu_msgs-msg:track_right-val is deprecated.  Use ecu_msgs-msg:track_right instead.")
  (track_right m))

(cl:ensure-generic-function 'track_left-val :lambda-list '(m))
(cl:defmethod track_left-val ((m <VehicleControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ecu_msgs-msg:track_left-val is deprecated.  Use ecu_msgs-msg:track_left instead.")
  (track_left m))

(cl:ensure-generic-function 'breaks-val :lambda-list '(m))
(cl:defmethod breaks-val ((m <VehicleControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ecu_msgs-msg:breaks-val is deprecated.  Use ecu_msgs-msg:breaks instead.")
  (breaks m))

(cl:ensure-generic-function 'lights-val :lambda-list '(m))
(cl:defmethod lights-val ((m <VehicleControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ecu_msgs-msg:lights-val is deprecated.  Use ecu_msgs-msg:lights instead.")
  (lights m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleControl>) ostream)
  "Serializes a message object of type '<VehicleControl>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'track_right) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'track_left) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'breaks) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'lights) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleControl>) istream)
  "Deserializes a message object of type '<VehicleControl>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'track_right) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'track_left) istream)
    (cl:setf (cl:slot-value msg 'breaks) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'lights) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleControl>)))
  "Returns string type for a message object of type '<VehicleControl>"
  "ecu_msgs/VehicleControl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleControl)))
  "Returns string type for a message object of type 'VehicleControl"
  "ecu_msgs/VehicleControl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleControl>)))
  "Returns md5sum for a message object of type '<VehicleControl>"
  "c8b5113bd5fc6dbf622ebbca4f18f295")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleControl)))
  "Returns md5sum for a message object of type 'VehicleControl"
  "c8b5113bd5fc6dbf622ebbca4f18f295")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleControl>)))
  "Returns full string definition for message of type '<VehicleControl>"
  (cl:format cl:nil "Header header~%TrackControl track_right~%TrackControl track_left~%bool breaks~%bool lights~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ecu_msgs/TrackControl~%float64 speed~%bool break_status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleControl)))
  "Returns full string definition for message of type 'VehicleControl"
  (cl:format cl:nil "Header header~%TrackControl track_right~%TrackControl track_left~%bool breaks~%bool lights~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ecu_msgs/TrackControl~%float64 speed~%bool break_status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleControl>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'track_right))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'track_left))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleControl>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleControl
    (cl:cons ':header (header msg))
    (cl:cons ':track_right (track_right msg))
    (cl:cons ':track_left (track_left msg))
    (cl:cons ':breaks (breaks msg))
    (cl:cons ':lights (lights msg))
))
