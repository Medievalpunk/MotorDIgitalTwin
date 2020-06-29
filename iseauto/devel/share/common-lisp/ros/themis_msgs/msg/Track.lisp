; Auto-generated. Do not edit!


(cl:in-package themis_msgs-msg)


;//! \htmlinclude Track.msg.html

(cl:defclass <Track> (roslisp-msg-protocol:ros-message)
  ((sevcon
    :reader sevcon
    :initarg :sevcon
    :type themis_msgs-msg:Sevcon
    :initform (cl:make-instance 'themis_msgs-msg:Sevcon))
   (pdm
    :reader pdm
    :initarg :pdm
    :type themis_msgs-msg:TrackPdm
    :initform (cl:make-instance 'themis_msgs-msg:TrackPdm)))
)

(cl:defclass Track (<Track>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Track>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Track)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name themis_msgs-msg:<Track> is deprecated: use themis_msgs-msg:Track instead.")))

(cl:ensure-generic-function 'sevcon-val :lambda-list '(m))
(cl:defmethod sevcon-val ((m <Track>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:sevcon-val is deprecated.  Use themis_msgs-msg:sevcon instead.")
  (sevcon m))

(cl:ensure-generic-function 'pdm-val :lambda-list '(m))
(cl:defmethod pdm-val ((m <Track>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:pdm-val is deprecated.  Use themis_msgs-msg:pdm instead.")
  (pdm m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Track>) ostream)
  "Serializes a message object of type '<Track>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sevcon) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pdm) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Track>) istream)
  "Deserializes a message object of type '<Track>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sevcon) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pdm) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Track>)))
  "Returns string type for a message object of type '<Track>"
  "themis_msgs/Track")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Track)))
  "Returns string type for a message object of type 'Track"
  "themis_msgs/Track")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Track>)))
  "Returns md5sum for a message object of type '<Track>"
  "aa218d79e211eae1ef0c9fb3af2a36a1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Track)))
  "Returns md5sum for a message object of type 'Track"
  "aa218d79e211eae1ef0c9fb3af2a36a1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Track>)))
  "Returns full string definition for message of type '<Track>"
  (cl:format cl:nil "Sevcon sevcon~%TrackPdm pdm~%~%================================================================================~%MSG: themis_msgs/Sevcon~%uint16 hour_count~%int32 real_rpm~%float32 real_torque~%float32 battery_current~%float32 battery_voltage~%int16 motor_temp~%int8 temp~%~%================================================================================~%MSG: themis_msgs/TrackPdm~%float32 track_coolant_temp~%bool brake_status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Track)))
  "Returns full string definition for message of type 'Track"
  (cl:format cl:nil "Sevcon sevcon~%TrackPdm pdm~%~%================================================================================~%MSG: themis_msgs/Sevcon~%uint16 hour_count~%int32 real_rpm~%float32 real_torque~%float32 battery_current~%float32 battery_voltage~%int16 motor_temp~%int8 temp~%~%================================================================================~%MSG: themis_msgs/TrackPdm~%float32 track_coolant_temp~%bool brake_status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Track>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sevcon))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pdm))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Track>))
  "Converts a ROS message object to a list"
  (cl:list 'Track
    (cl:cons ':sevcon (sevcon msg))
    (cl:cons ':pdm (pdm msg))
))
