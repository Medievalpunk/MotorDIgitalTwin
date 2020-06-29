; Auto-generated. Do not edit!


(cl:in-package themis_msgs-msg)


;//! \htmlinclude Sevcon.msg.html

(cl:defclass <Sevcon> (roslisp-msg-protocol:ros-message)
  ((hour_count
    :reader hour_count
    :initarg :hour_count
    :type cl:fixnum
    :initform 0)
   (real_rpm
    :reader real_rpm
    :initarg :real_rpm
    :type cl:integer
    :initform 0)
   (real_torque
    :reader real_torque
    :initarg :real_torque
    :type cl:float
    :initform 0.0)
   (battery_current
    :reader battery_current
    :initarg :battery_current
    :type cl:float
    :initform 0.0)
   (battery_voltage
    :reader battery_voltage
    :initarg :battery_voltage
    :type cl:float
    :initform 0.0)
   (motor_temp
    :reader motor_temp
    :initarg :motor_temp
    :type cl:fixnum
    :initform 0)
   (temp
    :reader temp
    :initarg :temp
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Sevcon (<Sevcon>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Sevcon>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Sevcon)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name themis_msgs-msg:<Sevcon> is deprecated: use themis_msgs-msg:Sevcon instead.")))

(cl:ensure-generic-function 'hour_count-val :lambda-list '(m))
(cl:defmethod hour_count-val ((m <Sevcon>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:hour_count-val is deprecated.  Use themis_msgs-msg:hour_count instead.")
  (hour_count m))

(cl:ensure-generic-function 'real_rpm-val :lambda-list '(m))
(cl:defmethod real_rpm-val ((m <Sevcon>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:real_rpm-val is deprecated.  Use themis_msgs-msg:real_rpm instead.")
  (real_rpm m))

(cl:ensure-generic-function 'real_torque-val :lambda-list '(m))
(cl:defmethod real_torque-val ((m <Sevcon>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:real_torque-val is deprecated.  Use themis_msgs-msg:real_torque instead.")
  (real_torque m))

(cl:ensure-generic-function 'battery_current-val :lambda-list '(m))
(cl:defmethod battery_current-val ((m <Sevcon>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:battery_current-val is deprecated.  Use themis_msgs-msg:battery_current instead.")
  (battery_current m))

(cl:ensure-generic-function 'battery_voltage-val :lambda-list '(m))
(cl:defmethod battery_voltage-val ((m <Sevcon>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:battery_voltage-val is deprecated.  Use themis_msgs-msg:battery_voltage instead.")
  (battery_voltage m))

(cl:ensure-generic-function 'motor_temp-val :lambda-list '(m))
(cl:defmethod motor_temp-val ((m <Sevcon>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:motor_temp-val is deprecated.  Use themis_msgs-msg:motor_temp instead.")
  (motor_temp m))

(cl:ensure-generic-function 'temp-val :lambda-list '(m))
(cl:defmethod temp-val ((m <Sevcon>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:temp-val is deprecated.  Use themis_msgs-msg:temp instead.")
  (temp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Sevcon>) ostream)
  "Serializes a message object of type '<Sevcon>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hour_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'hour_count)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'real_rpm)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'real_torque))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'battery_current))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'battery_voltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'motor_temp)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'temp)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Sevcon>) istream)
  "Deserializes a message object of type '<Sevcon>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hour_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'hour_count)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'real_rpm) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'real_torque) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'battery_current) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'battery_voltage) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motor_temp) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'temp) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Sevcon>)))
  "Returns string type for a message object of type '<Sevcon>"
  "themis_msgs/Sevcon")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Sevcon)))
  "Returns string type for a message object of type 'Sevcon"
  "themis_msgs/Sevcon")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Sevcon>)))
  "Returns md5sum for a message object of type '<Sevcon>"
  "3b11f79be0926a6b4515869450f7d6aa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Sevcon)))
  "Returns md5sum for a message object of type 'Sevcon"
  "3b11f79be0926a6b4515869450f7d6aa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Sevcon>)))
  "Returns full string definition for message of type '<Sevcon>"
  (cl:format cl:nil "uint16 hour_count~%int32 real_rpm~%float32 real_torque~%float32 battery_current~%float32 battery_voltage~%int16 motor_temp~%int8 temp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Sevcon)))
  "Returns full string definition for message of type 'Sevcon"
  (cl:format cl:nil "uint16 hour_count~%int32 real_rpm~%float32 real_torque~%float32 battery_current~%float32 battery_voltage~%int16 motor_temp~%int8 temp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Sevcon>))
  (cl:+ 0
     2
     4
     4
     4
     4
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Sevcon>))
  "Converts a ROS message object to a list"
  (cl:list 'Sevcon
    (cl:cons ':hour_count (hour_count msg))
    (cl:cons ':real_rpm (real_rpm msg))
    (cl:cons ':real_torque (real_torque msg))
    (cl:cons ':battery_current (battery_current msg))
    (cl:cons ':battery_voltage (battery_voltage msg))
    (cl:cons ':motor_temp (motor_temp msg))
    (cl:cons ':temp (temp msg))
))
