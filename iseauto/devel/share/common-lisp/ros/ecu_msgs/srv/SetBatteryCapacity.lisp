; Auto-generated. Do not edit!


(cl:in-package ecu_msgs-srv)


;//! \htmlinclude SetBatteryCapacity-request.msg.html

(cl:defclass <SetBatteryCapacity-request> (roslisp-msg-protocol:ros-message)
  ((capacity
    :reader capacity
    :initarg :capacity
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetBatteryCapacity-request (<SetBatteryCapacity-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetBatteryCapacity-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetBatteryCapacity-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ecu_msgs-srv:<SetBatteryCapacity-request> is deprecated: use ecu_msgs-srv:SetBatteryCapacity-request instead.")))

(cl:ensure-generic-function 'capacity-val :lambda-list '(m))
(cl:defmethod capacity-val ((m <SetBatteryCapacity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ecu_msgs-srv:capacity-val is deprecated.  Use ecu_msgs-srv:capacity instead.")
  (capacity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetBatteryCapacity-request>) ostream)
  "Serializes a message object of type '<SetBatteryCapacity-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'capacity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetBatteryCapacity-request>) istream)
  "Deserializes a message object of type '<SetBatteryCapacity-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'capacity) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetBatteryCapacity-request>)))
  "Returns string type for a service object of type '<SetBatteryCapacity-request>"
  "ecu_msgs/SetBatteryCapacityRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetBatteryCapacity-request)))
  "Returns string type for a service object of type 'SetBatteryCapacity-request"
  "ecu_msgs/SetBatteryCapacityRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetBatteryCapacity-request>)))
  "Returns md5sum for a message object of type '<SetBatteryCapacity-request>"
  "a6c003c4fba299af8275270f5cd8fcb6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetBatteryCapacity-request)))
  "Returns md5sum for a message object of type 'SetBatteryCapacity-request"
  "a6c003c4fba299af8275270f5cd8fcb6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetBatteryCapacity-request>)))
  "Returns full string definition for message of type '<SetBatteryCapacity-request>"
  (cl:format cl:nil "~%float64 capacity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetBatteryCapacity-request)))
  "Returns full string definition for message of type 'SetBatteryCapacity-request"
  (cl:format cl:nil "~%float64 capacity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetBatteryCapacity-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetBatteryCapacity-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetBatteryCapacity-request
    (cl:cons ':capacity (capacity msg))
))
;//! \htmlinclude SetBatteryCapacity-response.msg.html

(cl:defclass <SetBatteryCapacity-response> (roslisp-msg-protocol:ros-message)
  ((capacity_set
    :reader capacity_set
    :initarg :capacity_set
    :type cl:float
    :initform 0.0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass SetBatteryCapacity-response (<SetBatteryCapacity-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetBatteryCapacity-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetBatteryCapacity-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ecu_msgs-srv:<SetBatteryCapacity-response> is deprecated: use ecu_msgs-srv:SetBatteryCapacity-response instead.")))

(cl:ensure-generic-function 'capacity_set-val :lambda-list '(m))
(cl:defmethod capacity_set-val ((m <SetBatteryCapacity-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ecu_msgs-srv:capacity_set-val is deprecated.  Use ecu_msgs-srv:capacity_set instead.")
  (capacity_set m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetBatteryCapacity-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ecu_msgs-srv:message-val is deprecated.  Use ecu_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetBatteryCapacity-response>) ostream)
  "Serializes a message object of type '<SetBatteryCapacity-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'capacity_set))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetBatteryCapacity-response>) istream)
  "Deserializes a message object of type '<SetBatteryCapacity-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetBatteryCapacity-response>)))
  "Returns string type for a service object of type '<SetBatteryCapacity-response>"
  "ecu_msgs/SetBatteryCapacityResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetBatteryCapacity-response)))
  "Returns string type for a service object of type 'SetBatteryCapacity-response"
  "ecu_msgs/SetBatteryCapacityResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetBatteryCapacity-response>)))
  "Returns md5sum for a message object of type '<SetBatteryCapacity-response>"
  "a6c003c4fba299af8275270f5cd8fcb6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetBatteryCapacity-response)))
  "Returns md5sum for a message object of type 'SetBatteryCapacity-response"
  "a6c003c4fba299af8275270f5cd8fcb6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetBatteryCapacity-response>)))
  "Returns full string definition for message of type '<SetBatteryCapacity-response>"
  (cl:format cl:nil "float64 capacity_set~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetBatteryCapacity-response)))
  "Returns full string definition for message of type 'SetBatteryCapacity-response"
  (cl:format cl:nil "float64 capacity_set~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetBatteryCapacity-response>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetBatteryCapacity-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetBatteryCapacity-response
    (cl:cons ':capacity_set (capacity_set msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetBatteryCapacity)))
  'SetBatteryCapacity-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetBatteryCapacity)))
  'SetBatteryCapacity-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetBatteryCapacity)))
  "Returns string type for a service object of type '<SetBatteryCapacity>"
  "ecu_msgs/SetBatteryCapacity")