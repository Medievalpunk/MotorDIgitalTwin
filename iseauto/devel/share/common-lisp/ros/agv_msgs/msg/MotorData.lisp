; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude MotorData.msg.html

(cl:defclass <MotorData> (roslisp-msg-protocol:ros-message)
  ((enc
    :reader enc
    :initarg :enc
    :type agv_msgs-msg:EncoderData
    :initform (cl:make-instance 'agv_msgs-msg:EncoderData))
   (torque
    :reader torque
    :initarg :torque
    :type cl:float
    :initform 0.0)
   (current
    :reader current
    :initarg :current
    :type cl:float
    :initform 0.0)
   (voltage
    :reader voltage
    :initarg :voltage
    :type cl:float
    :initform 0.0)
   (temperature
    :reader temperature
    :initarg :temperature
    :type cl:float
    :initform 0.0))
)

(cl:defclass MotorData (<MotorData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<MotorData> is deprecated: use agv_msgs-msg:MotorData instead.")))

(cl:ensure-generic-function 'enc-val :lambda-list '(m))
(cl:defmethod enc-val ((m <MotorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:enc-val is deprecated.  Use agv_msgs-msg:enc instead.")
  (enc m))

(cl:ensure-generic-function 'torque-val :lambda-list '(m))
(cl:defmethod torque-val ((m <MotorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:torque-val is deprecated.  Use agv_msgs-msg:torque instead.")
  (torque m))

(cl:ensure-generic-function 'current-val :lambda-list '(m))
(cl:defmethod current-val ((m <MotorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:current-val is deprecated.  Use agv_msgs-msg:current instead.")
  (current m))

(cl:ensure-generic-function 'voltage-val :lambda-list '(m))
(cl:defmethod voltage-val ((m <MotorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:voltage-val is deprecated.  Use agv_msgs-msg:voltage instead.")
  (voltage m))

(cl:ensure-generic-function 'temperature-val :lambda-list '(m))
(cl:defmethod temperature-val ((m <MotorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:temperature-val is deprecated.  Use agv_msgs-msg:temperature instead.")
  (temperature m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorData>) ostream)
  "Serializes a message object of type '<MotorData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'enc) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'torque))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'current))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'voltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'temperature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotorData>) istream)
  "Deserializes a message object of type '<MotorData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'enc) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'torque) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'voltage) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temperature) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorData>)))
  "Returns string type for a message object of type '<MotorData>"
  "agv_msgs/MotorData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorData)))
  "Returns string type for a message object of type 'MotorData"
  "agv_msgs/MotorData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorData>)))
  "Returns md5sum for a message object of type '<MotorData>"
  "f9f1240e471258014c99a0aa28d83052")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorData)))
  "Returns md5sum for a message object of type 'MotorData"
  "f9f1240e471258014c99a0aa28d83052")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorData>)))
  "Returns full string definition for message of type '<MotorData>"
  (cl:format cl:nil "EncoderData enc~%float32 torque            # Nm~%float32 current           # A~%float32 voltage           # V~%float32 temperature       # C~%~%# Some useful formulas for reference (use Si units)~%# Mechanical power = torque * angular_velocity~%# Electrical power = current * voltage~%# Efficiency = mech. power / elec. power~%~%================================================================================~%MSG: agv_msgs/EncoderData~%float32 velocity~%float32 distance~%~%uint8 units~%uint8 RPM=0     # velocity in rpm,      distance in rotations~%uint8 RAD_S=1   # velocity in rad/s,    distance in radians~%uint8 M_S=2     # velocity in m/s,      distance in metres~%uint8 TICKS=3   # velocity in ticks/s,  distance in ticks~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorData)))
  "Returns full string definition for message of type 'MotorData"
  (cl:format cl:nil "EncoderData enc~%float32 torque            # Nm~%float32 current           # A~%float32 voltage           # V~%float32 temperature       # C~%~%# Some useful formulas for reference (use Si units)~%# Mechanical power = torque * angular_velocity~%# Electrical power = current * voltage~%# Efficiency = mech. power / elec. power~%~%================================================================================~%MSG: agv_msgs/EncoderData~%float32 velocity~%float32 distance~%~%uint8 units~%uint8 RPM=0     # velocity in rpm,      distance in rotations~%uint8 RAD_S=1   # velocity in rad/s,    distance in radians~%uint8 M_S=2     # velocity in m/s,      distance in metres~%uint8 TICKS=3   # velocity in ticks/s,  distance in ticks~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotorData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'enc))
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotorData>))
  "Converts a ROS message object to a list"
  (cl:list 'MotorData
    (cl:cons ':enc (enc msg))
    (cl:cons ':torque (torque msg))
    (cl:cons ':current (current msg))
    (cl:cons ':voltage (voltage msg))
    (cl:cons ':temperature (temperature msg))
))
