; Auto-generated. Do not edit!


(cl:in-package ecu_msgs-srv)


;//! \htmlinclude SetNoiseCmdVel-request.msg.html

(cl:defclass <SetNoiseCmdVel-request> (roslisp-msg-protocol:ros-message)
  ((linear
    :reader linear
    :initarg :linear
    :type cl:float
    :initform 0.0)
   (angular
    :reader angular
    :initarg :angular
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetNoiseCmdVel-request (<SetNoiseCmdVel-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetNoiseCmdVel-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetNoiseCmdVel-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ecu_msgs-srv:<SetNoiseCmdVel-request> is deprecated: use ecu_msgs-srv:SetNoiseCmdVel-request instead.")))

(cl:ensure-generic-function 'linear-val :lambda-list '(m))
(cl:defmethod linear-val ((m <SetNoiseCmdVel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ecu_msgs-srv:linear-val is deprecated.  Use ecu_msgs-srv:linear instead.")
  (linear m))

(cl:ensure-generic-function 'angular-val :lambda-list '(m))
(cl:defmethod angular-val ((m <SetNoiseCmdVel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ecu_msgs-srv:angular-val is deprecated.  Use ecu_msgs-srv:angular instead.")
  (angular m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetNoiseCmdVel-request>) ostream)
  "Serializes a message object of type '<SetNoiseCmdVel-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'linear))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angular))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetNoiseCmdVel-request>) istream)
  "Deserializes a message object of type '<SetNoiseCmdVel-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'linear) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angular) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetNoiseCmdVel-request>)))
  "Returns string type for a service object of type '<SetNoiseCmdVel-request>"
  "ecu_msgs/SetNoiseCmdVelRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetNoiseCmdVel-request)))
  "Returns string type for a service object of type 'SetNoiseCmdVel-request"
  "ecu_msgs/SetNoiseCmdVelRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetNoiseCmdVel-request>)))
  "Returns md5sum for a message object of type '<SetNoiseCmdVel-request>"
  "d41e247b85cef4fd0ed55934aa9d3071")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetNoiseCmdVel-request)))
  "Returns md5sum for a message object of type 'SetNoiseCmdVel-request"
  "d41e247b85cef4fd0ed55934aa9d3071")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetNoiseCmdVel-request>)))
  "Returns full string definition for message of type '<SetNoiseCmdVel-request>"
  (cl:format cl:nil "float64 linear~%float64 angular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetNoiseCmdVel-request)))
  "Returns full string definition for message of type 'SetNoiseCmdVel-request"
  (cl:format cl:nil "float64 linear~%float64 angular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetNoiseCmdVel-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetNoiseCmdVel-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetNoiseCmdVel-request
    (cl:cons ':linear (linear msg))
    (cl:cons ':angular (angular msg))
))
;//! \htmlinclude SetNoiseCmdVel-response.msg.html

(cl:defclass <SetNoiseCmdVel-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:float
    :initform 0.0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass SetNoiseCmdVel-response (<SetNoiseCmdVel-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetNoiseCmdVel-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetNoiseCmdVel-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ecu_msgs-srv:<SetNoiseCmdVel-response> is deprecated: use ecu_msgs-srv:SetNoiseCmdVel-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetNoiseCmdVel-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ecu_msgs-srv:result-val is deprecated.  Use ecu_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetNoiseCmdVel-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ecu_msgs-srv:message-val is deprecated.  Use ecu_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetNoiseCmdVel-response>) ostream)
  "Serializes a message object of type '<SetNoiseCmdVel-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'result))))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetNoiseCmdVel-response>) istream)
  "Deserializes a message object of type '<SetNoiseCmdVel-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'result) (roslisp-utils:decode-double-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetNoiseCmdVel-response>)))
  "Returns string type for a service object of type '<SetNoiseCmdVel-response>"
  "ecu_msgs/SetNoiseCmdVelResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetNoiseCmdVel-response)))
  "Returns string type for a service object of type 'SetNoiseCmdVel-response"
  "ecu_msgs/SetNoiseCmdVelResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetNoiseCmdVel-response>)))
  "Returns md5sum for a message object of type '<SetNoiseCmdVel-response>"
  "d41e247b85cef4fd0ed55934aa9d3071")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetNoiseCmdVel-response)))
  "Returns md5sum for a message object of type 'SetNoiseCmdVel-response"
  "d41e247b85cef4fd0ed55934aa9d3071")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetNoiseCmdVel-response>)))
  "Returns full string definition for message of type '<SetNoiseCmdVel-response>"
  (cl:format cl:nil "float64 result~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetNoiseCmdVel-response)))
  "Returns full string definition for message of type 'SetNoiseCmdVel-response"
  (cl:format cl:nil "float64 result~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetNoiseCmdVel-response>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetNoiseCmdVel-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetNoiseCmdVel-response
    (cl:cons ':result (result msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetNoiseCmdVel)))
  'SetNoiseCmdVel-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetNoiseCmdVel)))
  'SetNoiseCmdVel-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetNoiseCmdVel)))
  "Returns string type for a service object of type '<SetNoiseCmdVel>"
  "ecu_msgs/SetNoiseCmdVel")