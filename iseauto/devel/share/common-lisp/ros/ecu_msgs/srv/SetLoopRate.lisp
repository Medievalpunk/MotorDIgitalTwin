; Auto-generated. Do not edit!


(cl:in-package ecu_msgs-srv)


;//! \htmlinclude SetLoopRate-request.msg.html

(cl:defclass <SetLoopRate-request> (roslisp-msg-protocol:ros-message)
  ((rate
    :reader rate
    :initarg :rate
    :type cl:integer
    :initform 0))
)

(cl:defclass SetLoopRate-request (<SetLoopRate-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetLoopRate-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetLoopRate-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ecu_msgs-srv:<SetLoopRate-request> is deprecated: use ecu_msgs-srv:SetLoopRate-request instead.")))

(cl:ensure-generic-function 'rate-val :lambda-list '(m))
(cl:defmethod rate-val ((m <SetLoopRate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ecu_msgs-srv:rate-val is deprecated.  Use ecu_msgs-srv:rate instead.")
  (rate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetLoopRate-request>) ostream)
  "Serializes a message object of type '<SetLoopRate-request>"
  (cl:let* ((signed (cl:slot-value msg 'rate)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetLoopRate-request>) istream)
  "Deserializes a message object of type '<SetLoopRate-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rate) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetLoopRate-request>)))
  "Returns string type for a service object of type '<SetLoopRate-request>"
  "ecu_msgs/SetLoopRateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLoopRate-request)))
  "Returns string type for a service object of type 'SetLoopRate-request"
  "ecu_msgs/SetLoopRateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetLoopRate-request>)))
  "Returns md5sum for a message object of type '<SetLoopRate-request>"
  "e70f420dd3814e680a1961a45937fb63")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetLoopRate-request)))
  "Returns md5sum for a message object of type 'SetLoopRate-request"
  "e70f420dd3814e680a1961a45937fb63")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetLoopRate-request>)))
  "Returns full string definition for message of type '<SetLoopRate-request>"
  (cl:format cl:nil "~%int64 rate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetLoopRate-request)))
  "Returns full string definition for message of type 'SetLoopRate-request"
  (cl:format cl:nil "~%int64 rate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetLoopRate-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetLoopRate-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetLoopRate-request
    (cl:cons ':rate (rate msg))
))
;//! \htmlinclude SetLoopRate-response.msg.html

(cl:defclass <SetLoopRate-response> (roslisp-msg-protocol:ros-message)
  ((rate_set
    :reader rate_set
    :initarg :rate_set
    :type cl:float
    :initform 0.0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass SetLoopRate-response (<SetLoopRate-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetLoopRate-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetLoopRate-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ecu_msgs-srv:<SetLoopRate-response> is deprecated: use ecu_msgs-srv:SetLoopRate-response instead.")))

(cl:ensure-generic-function 'rate_set-val :lambda-list '(m))
(cl:defmethod rate_set-val ((m <SetLoopRate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ecu_msgs-srv:rate_set-val is deprecated.  Use ecu_msgs-srv:rate_set instead.")
  (rate_set m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetLoopRate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ecu_msgs-srv:message-val is deprecated.  Use ecu_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetLoopRate-response>) ostream)
  "Serializes a message object of type '<SetLoopRate-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rate_set))))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetLoopRate-response>) istream)
  "Deserializes a message object of type '<SetLoopRate-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rate_set) (roslisp-utils:decode-double-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetLoopRate-response>)))
  "Returns string type for a service object of type '<SetLoopRate-response>"
  "ecu_msgs/SetLoopRateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLoopRate-response)))
  "Returns string type for a service object of type 'SetLoopRate-response"
  "ecu_msgs/SetLoopRateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetLoopRate-response>)))
  "Returns md5sum for a message object of type '<SetLoopRate-response>"
  "e70f420dd3814e680a1961a45937fb63")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetLoopRate-response)))
  "Returns md5sum for a message object of type 'SetLoopRate-response"
  "e70f420dd3814e680a1961a45937fb63")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetLoopRate-response>)))
  "Returns full string definition for message of type '<SetLoopRate-response>"
  (cl:format cl:nil "float64 rate_set~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetLoopRate-response)))
  "Returns full string definition for message of type 'SetLoopRate-response"
  (cl:format cl:nil "float64 rate_set~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetLoopRate-response>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetLoopRate-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetLoopRate-response
    (cl:cons ':rate_set (rate_set msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetLoopRate)))
  'SetLoopRate-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetLoopRate)))
  'SetLoopRate-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLoopRate)))
  "Returns string type for a service object of type '<SetLoopRate>"
  "ecu_msgs/SetLoopRate")