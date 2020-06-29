; Auto-generated. Do not edit!


(cl:in-package themis_msgs-msg)


;//! \htmlinclude Generator.msg.html

(cl:defclass <Generator> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type themis_msgs-msg:State
    :initform (cl:make-instance 'themis_msgs-msg:State))
   (fuel_level
    :reader fuel_level
    :initarg :fuel_level
    :type cl:float
    :initform 0.0)
   (sevcon
    :reader sevcon
    :initarg :sevcon
    :type themis_msgs-msg:Sevcon
    :initform (cl:make-instance 'themis_msgs-msg:Sevcon))
   (pdm
    :reader pdm
    :initarg :pdm
    :type themis_msgs-msg:GeneratorPdm
    :initform (cl:make-instance 'themis_msgs-msg:GeneratorPdm)))
)

(cl:defclass Generator (<Generator>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Generator>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Generator)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name themis_msgs-msg:<Generator> is deprecated: use themis_msgs-msg:Generator instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <Generator>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:state-val is deprecated.  Use themis_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'fuel_level-val :lambda-list '(m))
(cl:defmethod fuel_level-val ((m <Generator>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:fuel_level-val is deprecated.  Use themis_msgs-msg:fuel_level instead.")
  (fuel_level m))

(cl:ensure-generic-function 'sevcon-val :lambda-list '(m))
(cl:defmethod sevcon-val ((m <Generator>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:sevcon-val is deprecated.  Use themis_msgs-msg:sevcon instead.")
  (sevcon m))

(cl:ensure-generic-function 'pdm-val :lambda-list '(m))
(cl:defmethod pdm-val ((m <Generator>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:pdm-val is deprecated.  Use themis_msgs-msg:pdm instead.")
  (pdm m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Generator>) ostream)
  "Serializes a message object of type '<Generator>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fuel_level))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sevcon) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pdm) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Generator>) istream)
  "Deserializes a message object of type '<Generator>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fuel_level) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sevcon) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pdm) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Generator>)))
  "Returns string type for a message object of type '<Generator>"
  "themis_msgs/Generator")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Generator)))
  "Returns string type for a message object of type 'Generator"
  "themis_msgs/Generator")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Generator>)))
  "Returns md5sum for a message object of type '<Generator>"
  "b946db57ad5e2a3d65d4478369d1c9e1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Generator)))
  "Returns md5sum for a message object of type 'Generator"
  "b946db57ad5e2a3d65d4478369d1c9e1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Generator>)))
  "Returns full string definition for message of type '<Generator>"
  (cl:format cl:nil "State state~%float32 fuel_level~%Sevcon sevcon~%GeneratorPdm pdm~%~%================================================================================~%MSG: themis_msgs/State~%uint16 id~%string desc~%~%================================================================================~%MSG: themis_msgs/Sevcon~%uint16 hour_count~%int32 real_rpm~%float32 real_torque~%float32 battery_current~%float32 battery_voltage~%int16 motor_temp~%int8 temp~%~%================================================================================~%MSG: themis_msgs/GeneratorPdm~%float32 motor_coolant_temp~%float32 engine_coolant_temp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Generator)))
  "Returns full string definition for message of type 'Generator"
  (cl:format cl:nil "State state~%float32 fuel_level~%Sevcon sevcon~%GeneratorPdm pdm~%~%================================================================================~%MSG: themis_msgs/State~%uint16 id~%string desc~%~%================================================================================~%MSG: themis_msgs/Sevcon~%uint16 hour_count~%int32 real_rpm~%float32 real_torque~%float32 battery_current~%float32 battery_voltage~%int16 motor_temp~%int8 temp~%~%================================================================================~%MSG: themis_msgs/GeneratorPdm~%float32 motor_coolant_temp~%float32 engine_coolant_temp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Generator>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sevcon))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pdm))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Generator>))
  "Converts a ROS message object to a list"
  (cl:list 'Generator
    (cl:cons ':state (state msg))
    (cl:cons ':fuel_level (fuel_level msg))
    (cl:cons ':sevcon (sevcon msg))
    (cl:cons ':pdm (pdm msg))
))
