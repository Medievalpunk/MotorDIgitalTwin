; Auto-generated. Do not edit!


(cl:in-package themis_msgs-msg)


;//! \htmlinclude Feedback.msg.html

(cl:defclass <Feedback> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (battery
    :reader battery
    :initarg :battery
    :type themis_msgs-msg:Battery
    :initform (cl:make-instance 'themis_msgs-msg:Battery))
   (left
    :reader left
    :initarg :left
    :type themis_msgs-msg:Track
    :initform (cl:make-instance 'themis_msgs-msg:Track))
   (right
    :reader right
    :initarg :right
    :type themis_msgs-msg:Track
    :initform (cl:make-instance 'themis_msgs-msg:Track))
   (generator
    :reader generator
    :initarg :generator
    :type themis_msgs-msg:Generator
    :initform (cl:make-instance 'themis_msgs-msg:Generator))
   (vehicle
    :reader vehicle
    :initarg :vehicle
    :type themis_msgs-msg:Vehicle
    :initform (cl:make-instance 'themis_msgs-msg:Vehicle)))
)

(cl:defclass Feedback (<Feedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Feedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Feedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name themis_msgs-msg:<Feedback> is deprecated: use themis_msgs-msg:Feedback instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Feedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:header-val is deprecated.  Use themis_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'battery-val :lambda-list '(m))
(cl:defmethod battery-val ((m <Feedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:battery-val is deprecated.  Use themis_msgs-msg:battery instead.")
  (battery m))

(cl:ensure-generic-function 'left-val :lambda-list '(m))
(cl:defmethod left-val ((m <Feedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:left-val is deprecated.  Use themis_msgs-msg:left instead.")
  (left m))

(cl:ensure-generic-function 'right-val :lambda-list '(m))
(cl:defmethod right-val ((m <Feedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:right-val is deprecated.  Use themis_msgs-msg:right instead.")
  (right m))

(cl:ensure-generic-function 'generator-val :lambda-list '(m))
(cl:defmethod generator-val ((m <Feedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:generator-val is deprecated.  Use themis_msgs-msg:generator instead.")
  (generator m))

(cl:ensure-generic-function 'vehicle-val :lambda-list '(m))
(cl:defmethod vehicle-val ((m <Feedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:vehicle-val is deprecated.  Use themis_msgs-msg:vehicle instead.")
  (vehicle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Feedback>) ostream)
  "Serializes a message object of type '<Feedback>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'battery) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'generator) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vehicle) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Feedback>) istream)
  "Deserializes a message object of type '<Feedback>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'battery) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'generator) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vehicle) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Feedback>)))
  "Returns string type for a message object of type '<Feedback>"
  "themis_msgs/Feedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Feedback)))
  "Returns string type for a message object of type 'Feedback"
  "themis_msgs/Feedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Feedback>)))
  "Returns md5sum for a message object of type '<Feedback>"
  "8b3115dccfc099de2189cfdd7df2ec24")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Feedback)))
  "Returns md5sum for a message object of type 'Feedback"
  "8b3115dccfc099de2189cfdd7df2ec24")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Feedback>)))
  "Returns full string definition for message of type '<Feedback>"
  (cl:format cl:nil "Header header~%Battery battery~%Track left~%Track right~%Generator generator~%Vehicle vehicle~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: themis_msgs/Battery~%State air_state~%float32 low_voltage~%float32 high_voltage~%float32 charge_level~%~%# uint16 UNDEFINED_STATE = 0~%# uint16 INIT_STATE = 1~%# uint16 OFF_STATE = 2~%# uint16 SWITCH_ON_STATE = 3~%# uint16 ON_STATE = 4~%# uint16 SWITCH_OFF_STATE = 5~%# uint16 CHARGE_STATE = 6~%~%================================================================================~%MSG: themis_msgs/State~%uint16 id~%string desc~%~%================================================================================~%MSG: themis_msgs/Track~%Sevcon sevcon~%TrackPdm pdm~%~%================================================================================~%MSG: themis_msgs/Sevcon~%uint16 hour_count~%int32 real_rpm~%float32 real_torque~%float32 battery_current~%float32 battery_voltage~%int16 motor_temp~%int8 temp~%~%================================================================================~%MSG: themis_msgs/TrackPdm~%float32 track_coolant_temp~%bool brake_status~%~%================================================================================~%MSG: themis_msgs/Generator~%State state~%float32 fuel_level~%Sevcon sevcon~%GeneratorPdm pdm~%~%================================================================================~%MSG: themis_msgs/GeneratorPdm~%float32 motor_coolant_temp~%float32 engine_coolant_temp~%~%================================================================================~%MSG: themis_msgs/Vehicle~%State state~%float32 speed~%State drive_state~%uint8 brake_feedback~%bool imd_error~%VehicleMode mode~%~%================================================================================~%MSG: themis_msgs/VehicleMode~%State vehicle~%State generator~%State speed~%State brake~%State charge~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Feedback)))
  "Returns full string definition for message of type 'Feedback"
  (cl:format cl:nil "Header header~%Battery battery~%Track left~%Track right~%Generator generator~%Vehicle vehicle~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: themis_msgs/Battery~%State air_state~%float32 low_voltage~%float32 high_voltage~%float32 charge_level~%~%# uint16 UNDEFINED_STATE = 0~%# uint16 INIT_STATE = 1~%# uint16 OFF_STATE = 2~%# uint16 SWITCH_ON_STATE = 3~%# uint16 ON_STATE = 4~%# uint16 SWITCH_OFF_STATE = 5~%# uint16 CHARGE_STATE = 6~%~%================================================================================~%MSG: themis_msgs/State~%uint16 id~%string desc~%~%================================================================================~%MSG: themis_msgs/Track~%Sevcon sevcon~%TrackPdm pdm~%~%================================================================================~%MSG: themis_msgs/Sevcon~%uint16 hour_count~%int32 real_rpm~%float32 real_torque~%float32 battery_current~%float32 battery_voltage~%int16 motor_temp~%int8 temp~%~%================================================================================~%MSG: themis_msgs/TrackPdm~%float32 track_coolant_temp~%bool brake_status~%~%================================================================================~%MSG: themis_msgs/Generator~%State state~%float32 fuel_level~%Sevcon sevcon~%GeneratorPdm pdm~%~%================================================================================~%MSG: themis_msgs/GeneratorPdm~%float32 motor_coolant_temp~%float32 engine_coolant_temp~%~%================================================================================~%MSG: themis_msgs/Vehicle~%State state~%float32 speed~%State drive_state~%uint8 brake_feedback~%bool imd_error~%VehicleMode mode~%~%================================================================================~%MSG: themis_msgs/VehicleMode~%State vehicle~%State generator~%State speed~%State brake~%State charge~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Feedback>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'battery))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'generator))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vehicle))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Feedback>))
  "Converts a ROS message object to a list"
  (cl:list 'Feedback
    (cl:cons ':header (header msg))
    (cl:cons ':battery (battery msg))
    (cl:cons ':left (left msg))
    (cl:cons ':right (right msg))
    (cl:cons ':generator (generator msg))
    (cl:cons ':vehicle (vehicle msg))
))
