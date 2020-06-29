; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude TractionData.msg.html

(cl:defclass <TractionData> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (left
    :reader left
    :initarg :left
    :type agv_msgs-msg:MotorData
    :initform (cl:make-instance 'agv_msgs-msg:MotorData))
   (right
    :reader right
    :initarg :right
    :type agv_msgs-msg:MotorData
    :initform (cl:make-instance 'agv_msgs-msg:MotorData)))
)

(cl:defclass TractionData (<TractionData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TractionData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TractionData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<TractionData> is deprecated: use agv_msgs-msg:TractionData instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TractionData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:header-val is deprecated.  Use agv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'left-val :lambda-list '(m))
(cl:defmethod left-val ((m <TractionData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:left-val is deprecated.  Use agv_msgs-msg:left instead.")
  (left m))

(cl:ensure-generic-function 'right-val :lambda-list '(m))
(cl:defmethod right-val ((m <TractionData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:right-val is deprecated.  Use agv_msgs-msg:right instead.")
  (right m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TractionData>) ostream)
  "Serializes a message object of type '<TractionData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TractionData>) istream)
  "Deserializes a message object of type '<TractionData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TractionData>)))
  "Returns string type for a message object of type '<TractionData>"
  "agv_msgs/TractionData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TractionData)))
  "Returns string type for a message object of type 'TractionData"
  "agv_msgs/TractionData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TractionData>)))
  "Returns md5sum for a message object of type '<TractionData>"
  "6b382b54a342799235e892a0035f8c7b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TractionData)))
  "Returns md5sum for a message object of type 'TractionData"
  "6b382b54a342799235e892a0035f8c7b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TractionData>)))
  "Returns full string definition for message of type '<TractionData>"
  (cl:format cl:nil "Header header~%MotorData left~%MotorData right~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: agv_msgs/MotorData~%EncoderData enc~%float32 torque            # Nm~%float32 current           # A~%float32 voltage           # V~%float32 temperature       # C~%~%# Some useful formulas for reference (use Si units)~%# Mechanical power = torque * angular_velocity~%# Electrical power = current * voltage~%# Efficiency = mech. power / elec. power~%~%================================================================================~%MSG: agv_msgs/EncoderData~%float32 velocity~%float32 distance~%~%uint8 units~%uint8 RPM=0     # velocity in rpm,      distance in rotations~%uint8 RAD_S=1   # velocity in rad/s,    distance in radians~%uint8 M_S=2     # velocity in m/s,      distance in metres~%uint8 TICKS=3   # velocity in ticks/s,  distance in ticks~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TractionData)))
  "Returns full string definition for message of type 'TractionData"
  (cl:format cl:nil "Header header~%MotorData left~%MotorData right~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: agv_msgs/MotorData~%EncoderData enc~%float32 torque            # Nm~%float32 current           # A~%float32 voltage           # V~%float32 temperature       # C~%~%# Some useful formulas for reference (use Si units)~%# Mechanical power = torque * angular_velocity~%# Electrical power = current * voltage~%# Efficiency = mech. power / elec. power~%~%================================================================================~%MSG: agv_msgs/EncoderData~%float32 velocity~%float32 distance~%~%uint8 units~%uint8 RPM=0     # velocity in rpm,      distance in rotations~%uint8 RAD_S=1   # velocity in rad/s,    distance in radians~%uint8 M_S=2     # velocity in m/s,      distance in metres~%uint8 TICKS=3   # velocity in ticks/s,  distance in ticks~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TractionData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TractionData>))
  "Converts a ROS message object to a list"
  (cl:list 'TractionData
    (cl:cons ':header (header msg))
    (cl:cons ':left (left msg))
    (cl:cons ':right (right msg))
))
