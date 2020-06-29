; Auto-generated. Do not edit!


(cl:in-package ecu_msgs-srv)


;//! \htmlinclude SetCmdVelTimeout-request.msg.html

(cl:defclass <SetCmdVelTimeout-request> (roslisp-msg-protocol:ros-message)
  ((millis
    :reader millis
    :initarg :millis
    :type cl:integer
    :initform 0))
)

(cl:defclass SetCmdVelTimeout-request (<SetCmdVelTimeout-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetCmdVelTimeout-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetCmdVelTimeout-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ecu_msgs-srv:<SetCmdVelTimeout-request> is deprecated: use ecu_msgs-srv:SetCmdVelTimeout-request instead.")))

(cl:ensure-generic-function 'millis-val :lambda-list '(m))
(cl:defmethod millis-val ((m <SetCmdVelTimeout-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ecu_msgs-srv:millis-val is deprecated.  Use ecu_msgs-srv:millis instead.")
  (millis m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetCmdVelTimeout-request>) ostream)
  "Serializes a message object of type '<SetCmdVelTimeout-request>"
  (cl:let* ((signed (cl:slot-value msg 'millis)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetCmdVelTimeout-request>) istream)
  "Deserializes a message object of type '<SetCmdVelTimeout-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'millis) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetCmdVelTimeout-request>)))
  "Returns string type for a service object of type '<SetCmdVelTimeout-request>"
  "ecu_msgs/SetCmdVelTimeoutRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCmdVelTimeout-request)))
  "Returns string type for a service object of type 'SetCmdVelTimeout-request"
  "ecu_msgs/SetCmdVelTimeoutRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetCmdVelTimeout-request>)))
  "Returns md5sum for a message object of type '<SetCmdVelTimeout-request>"
  "a930c3e567f6e537d684459fe0a47d84")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetCmdVelTimeout-request)))
  "Returns md5sum for a message object of type 'SetCmdVelTimeout-request"
  "a930c3e567f6e537d684459fe0a47d84")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetCmdVelTimeout-request>)))
  "Returns full string definition for message of type '<SetCmdVelTimeout-request>"
  (cl:format cl:nil "int64 millis~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetCmdVelTimeout-request)))
  "Returns full string definition for message of type 'SetCmdVelTimeout-request"
  (cl:format cl:nil "int64 millis~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetCmdVelTimeout-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetCmdVelTimeout-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetCmdVelTimeout-request
    (cl:cons ':millis (millis msg))
))
;//! \htmlinclude SetCmdVelTimeout-response.msg.html

(cl:defclass <SetCmdVelTimeout-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass SetCmdVelTimeout-response (<SetCmdVelTimeout-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetCmdVelTimeout-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetCmdVelTimeout-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ecu_msgs-srv:<SetCmdVelTimeout-response> is deprecated: use ecu_msgs-srv:SetCmdVelTimeout-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetCmdVelTimeout-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ecu_msgs-srv:success-val is deprecated.  Use ecu_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetCmdVelTimeout-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ecu_msgs-srv:message-val is deprecated.  Use ecu_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetCmdVelTimeout-response>) ostream)
  "Serializes a message object of type '<SetCmdVelTimeout-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetCmdVelTimeout-response>) istream)
  "Deserializes a message object of type '<SetCmdVelTimeout-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetCmdVelTimeout-response>)))
  "Returns string type for a service object of type '<SetCmdVelTimeout-response>"
  "ecu_msgs/SetCmdVelTimeoutResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCmdVelTimeout-response)))
  "Returns string type for a service object of type 'SetCmdVelTimeout-response"
  "ecu_msgs/SetCmdVelTimeoutResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetCmdVelTimeout-response>)))
  "Returns md5sum for a message object of type '<SetCmdVelTimeout-response>"
  "a930c3e567f6e537d684459fe0a47d84")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetCmdVelTimeout-response)))
  "Returns md5sum for a message object of type 'SetCmdVelTimeout-response"
  "a930c3e567f6e537d684459fe0a47d84")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetCmdVelTimeout-response>)))
  "Returns full string definition for message of type '<SetCmdVelTimeout-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetCmdVelTimeout-response)))
  "Returns full string definition for message of type 'SetCmdVelTimeout-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetCmdVelTimeout-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetCmdVelTimeout-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetCmdVelTimeout-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetCmdVelTimeout)))
  'SetCmdVelTimeout-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetCmdVelTimeout)))
  'SetCmdVelTimeout-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCmdVelTimeout)))
  "Returns string type for a service object of type '<SetCmdVelTimeout>"
  "ecu_msgs/SetCmdVelTimeout")