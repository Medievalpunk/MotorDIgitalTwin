; Auto-generated. Do not edit!


(cl:in-package themis_msgs-msg)


;//! \htmlinclude Battery.msg.html

(cl:defclass <Battery> (roslisp-msg-protocol:ros-message)
  ((air_state
    :reader air_state
    :initarg :air_state
    :type themis_msgs-msg:State
    :initform (cl:make-instance 'themis_msgs-msg:State))
   (low_voltage
    :reader low_voltage
    :initarg :low_voltage
    :type cl:float
    :initform 0.0)
   (high_voltage
    :reader high_voltage
    :initarg :high_voltage
    :type cl:float
    :initform 0.0)
   (charge_level
    :reader charge_level
    :initarg :charge_level
    :type cl:float
    :initform 0.0))
)

(cl:defclass Battery (<Battery>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Battery>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Battery)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name themis_msgs-msg:<Battery> is deprecated: use themis_msgs-msg:Battery instead.")))

(cl:ensure-generic-function 'air_state-val :lambda-list '(m))
(cl:defmethod air_state-val ((m <Battery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:air_state-val is deprecated.  Use themis_msgs-msg:air_state instead.")
  (air_state m))

(cl:ensure-generic-function 'low_voltage-val :lambda-list '(m))
(cl:defmethod low_voltage-val ((m <Battery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:low_voltage-val is deprecated.  Use themis_msgs-msg:low_voltage instead.")
  (low_voltage m))

(cl:ensure-generic-function 'high_voltage-val :lambda-list '(m))
(cl:defmethod high_voltage-val ((m <Battery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:high_voltage-val is deprecated.  Use themis_msgs-msg:high_voltage instead.")
  (high_voltage m))

(cl:ensure-generic-function 'charge_level-val :lambda-list '(m))
(cl:defmethod charge_level-val ((m <Battery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:charge_level-val is deprecated.  Use themis_msgs-msg:charge_level instead.")
  (charge_level m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Battery>) ostream)
  "Serializes a message object of type '<Battery>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'air_state) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'low_voltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'high_voltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'charge_level))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Battery>) istream)
  "Deserializes a message object of type '<Battery>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'air_state) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'low_voltage) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'high_voltage) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'charge_level) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Battery>)))
  "Returns string type for a message object of type '<Battery>"
  "themis_msgs/Battery")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Battery)))
  "Returns string type for a message object of type 'Battery"
  "themis_msgs/Battery")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Battery>)))
  "Returns md5sum for a message object of type '<Battery>"
  "12a9585c62ecbcc51a9af404d663e576")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Battery)))
  "Returns md5sum for a message object of type 'Battery"
  "12a9585c62ecbcc51a9af404d663e576")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Battery>)))
  "Returns full string definition for message of type '<Battery>"
  (cl:format cl:nil "State air_state~%float32 low_voltage~%float32 high_voltage~%float32 charge_level~%~%# uint16 UNDEFINED_STATE = 0~%# uint16 INIT_STATE = 1~%# uint16 OFF_STATE = 2~%# uint16 SWITCH_ON_STATE = 3~%# uint16 ON_STATE = 4~%# uint16 SWITCH_OFF_STATE = 5~%# uint16 CHARGE_STATE = 6~%~%================================================================================~%MSG: themis_msgs/State~%uint16 id~%string desc~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Battery)))
  "Returns full string definition for message of type 'Battery"
  (cl:format cl:nil "State air_state~%float32 low_voltage~%float32 high_voltage~%float32 charge_level~%~%# uint16 UNDEFINED_STATE = 0~%# uint16 INIT_STATE = 1~%# uint16 OFF_STATE = 2~%# uint16 SWITCH_ON_STATE = 3~%# uint16 ON_STATE = 4~%# uint16 SWITCH_OFF_STATE = 5~%# uint16 CHARGE_STATE = 6~%~%================================================================================~%MSG: themis_msgs/State~%uint16 id~%string desc~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Battery>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'air_state))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Battery>))
  "Converts a ROS message object to a list"
  (cl:list 'Battery
    (cl:cons ':air_state (air_state msg))
    (cl:cons ':low_voltage (low_voltage msg))
    (cl:cons ':high_voltage (high_voltage msg))
    (cl:cons ':charge_level (charge_level msg))
))
