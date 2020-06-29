; Auto-generated. Do not edit!


(cl:in-package ecu_msgs-srv)


;//! \htmlinclude SetBatteryRate-request.msg.html

(cl:defclass <SetBatteryRate-request> (roslisp-msg-protocol:ros-message)
  ((mAh
    :reader mAh
    :initarg :mAh
    :type cl:float
    :initform 0.0)
   (period
    :reader period
    :initarg :period
    :type cl:integer
    :initform 0))
)

(cl:defclass SetBatteryRate-request (<SetBatteryRate-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetBatteryRate-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetBatteryRate-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ecu_msgs-srv:<SetBatteryRate-request> is deprecated: use ecu_msgs-srv:SetBatteryRate-request instead.")))

(cl:ensure-generic-function 'mAh-val :lambda-list '(m))
(cl:defmethod mAh-val ((m <SetBatteryRate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ecu_msgs-srv:mAh-val is deprecated.  Use ecu_msgs-srv:mAh instead.")
  (mAh m))

(cl:ensure-generic-function 'period-val :lambda-list '(m))
(cl:defmethod period-val ((m <SetBatteryRate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ecu_msgs-srv:period-val is deprecated.  Use ecu_msgs-srv:period instead.")
  (period m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetBatteryRate-request>) ostream)
  "Serializes a message object of type '<SetBatteryRate-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'mAh))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'period)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetBatteryRate-request>) istream)
  "Deserializes a message object of type '<SetBatteryRate-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mAh) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'period) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetBatteryRate-request>)))
  "Returns string type for a service object of type '<SetBatteryRate-request>"
  "ecu_msgs/SetBatteryRateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetBatteryRate-request)))
  "Returns string type for a service object of type 'SetBatteryRate-request"
  "ecu_msgs/SetBatteryRateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetBatteryRate-request>)))
  "Returns md5sum for a message object of type '<SetBatteryRate-request>"
  "d62957aebeb7df19acf301078ca1beab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetBatteryRate-request)))
  "Returns md5sum for a message object of type 'SetBatteryRate-request"
  "d62957aebeb7df19acf301078ca1beab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetBatteryRate-request>)))
  "Returns full string definition for message of type '<SetBatteryRate-request>"
  (cl:format cl:nil "~%float64 mAh~%~%int64 period~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetBatteryRate-request)))
  "Returns full string definition for message of type 'SetBatteryRate-request"
  (cl:format cl:nil "~%float64 mAh~%~%int64 period~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetBatteryRate-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetBatteryRate-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetBatteryRate-request
    (cl:cons ':mAh (mAh msg))
    (cl:cons ':period (period msg))
))
;//! \htmlinclude SetBatteryRate-response.msg.html

(cl:defclass <SetBatteryRate-response> (roslisp-msg-protocol:ros-message)
  ((capacity_set
    :reader capacity_set
    :initarg :capacity_set
    :type cl:float
    :initform 0.0)
   (period_set
    :reader period_set
    :initarg :period_set
    :type cl:integer
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass SetBatteryRate-response (<SetBatteryRate-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetBatteryRate-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetBatteryRate-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ecu_msgs-srv:<SetBatteryRate-response> is deprecated: use ecu_msgs-srv:SetBatteryRate-response instead.")))

(cl:ensure-generic-function 'capacity_set-val :lambda-list '(m))
(cl:defmethod capacity_set-val ((m <SetBatteryRate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ecu_msgs-srv:capacity_set-val is deprecated.  Use ecu_msgs-srv:capacity_set instead.")
  (capacity_set m))

(cl:ensure-generic-function 'period_set-val :lambda-list '(m))
(cl:defmethod period_set-val ((m <SetBatteryRate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ecu_msgs-srv:period_set-val is deprecated.  Use ecu_msgs-srv:period_set instead.")
  (period_set m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetBatteryRate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ecu_msgs-srv:message-val is deprecated.  Use ecu_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetBatteryRate-response>) ostream)
  "Serializes a message object of type '<SetBatteryRate-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'capacity_set))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'period_set)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetBatteryRate-response>) istream)
  "Deserializes a message object of type '<SetBatteryRate-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'capacity_set) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'period_set) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetBatteryRate-response>)))
  "Returns string type for a service object of type '<SetBatteryRate-response>"
  "ecu_msgs/SetBatteryRateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetBatteryRate-response)))
  "Returns string type for a service object of type 'SetBatteryRate-response"
  "ecu_msgs/SetBatteryRateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetBatteryRate-response>)))
  "Returns md5sum for a message object of type '<SetBatteryRate-response>"
  "d62957aebeb7df19acf301078ca1beab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetBatteryRate-response)))
  "Returns md5sum for a message object of type 'SetBatteryRate-response"
  "d62957aebeb7df19acf301078ca1beab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetBatteryRate-response>)))
  "Returns full string definition for message of type '<SetBatteryRate-response>"
  (cl:format cl:nil "float64 capacity_set~%int64 period_set~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetBatteryRate-response)))
  "Returns full string definition for message of type 'SetBatteryRate-response"
  (cl:format cl:nil "float64 capacity_set~%int64 period_set~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetBatteryRate-response>))
  (cl:+ 0
     8
     8
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetBatteryRate-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetBatteryRate-response
    (cl:cons ':capacity_set (capacity_set msg))
    (cl:cons ':period_set (period_set msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetBatteryRate)))
  'SetBatteryRate-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetBatteryRate)))
  'SetBatteryRate-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetBatteryRate)))
  "Returns string type for a service object of type '<SetBatteryRate>"
  "ecu_msgs/SetBatteryRate")