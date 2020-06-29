; Auto-generated. Do not edit!


(cl:in-package ecu_msgs-srv)


;//! \htmlinclude SetActiveOne-request.msg.html

(cl:defclass <SetActiveOne-request> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:boolean
    :initform cl:nil)
   (index
    :reader index
    :initarg :index
    :type cl:integer
    :initform 0))
)

(cl:defclass SetActiveOne-request (<SetActiveOne-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetActiveOne-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetActiveOne-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ecu_msgs-srv:<SetActiveOne-request> is deprecated: use ecu_msgs-srv:SetActiveOne-request instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <SetActiveOne-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ecu_msgs-srv:state-val is deprecated.  Use ecu_msgs-srv:state instead.")
  (state m))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <SetActiveOne-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ecu_msgs-srv:index-val is deprecated.  Use ecu_msgs-srv:index instead.")
  (index m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetActiveOne-request>) ostream)
  "Serializes a message object of type '<SetActiveOne-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'state) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetActiveOne-request>) istream)
  "Deserializes a message object of type '<SetActiveOne-request>"
    (cl:setf (cl:slot-value msg 'state) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'index) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetActiveOne-request>)))
  "Returns string type for a service object of type '<SetActiveOne-request>"
  "ecu_msgs/SetActiveOneRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetActiveOne-request)))
  "Returns string type for a service object of type 'SetActiveOne-request"
  "ecu_msgs/SetActiveOneRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetActiveOne-request>)))
  "Returns md5sum for a message object of type '<SetActiveOne-request>"
  "9f8090badf21f79cbb38a70d7676e26b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetActiveOne-request)))
  "Returns md5sum for a message object of type 'SetActiveOne-request"
  "9f8090badf21f79cbb38a70d7676e26b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetActiveOne-request>)))
  "Returns full string definition for message of type '<SetActiveOne-request>"
  (cl:format cl:nil "bool state~%int64 index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetActiveOne-request)))
  "Returns full string definition for message of type 'SetActiveOne-request"
  (cl:format cl:nil "bool state~%int64 index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetActiveOne-request>))
  (cl:+ 0
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetActiveOne-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetActiveOne-request
    (cl:cons ':state (state msg))
    (cl:cons ':index (index msg))
))
;//! \htmlinclude SetActiveOne-response.msg.html

(cl:defclass <SetActiveOne-response> (roslisp-msg-protocol:ros-message)
  ((set_state
    :reader set_state
    :initarg :set_state
    :type cl:boolean
    :initform cl:nil)
   (index_set
    :reader index_set
    :initarg :index_set
    :type cl:integer
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass SetActiveOne-response (<SetActiveOne-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetActiveOne-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetActiveOne-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ecu_msgs-srv:<SetActiveOne-response> is deprecated: use ecu_msgs-srv:SetActiveOne-response instead.")))

(cl:ensure-generic-function 'set_state-val :lambda-list '(m))
(cl:defmethod set_state-val ((m <SetActiveOne-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ecu_msgs-srv:set_state-val is deprecated.  Use ecu_msgs-srv:set_state instead.")
  (set_state m))

(cl:ensure-generic-function 'index_set-val :lambda-list '(m))
(cl:defmethod index_set-val ((m <SetActiveOne-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ecu_msgs-srv:index_set-val is deprecated.  Use ecu_msgs-srv:index_set instead.")
  (index_set m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetActiveOne-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ecu_msgs-srv:message-val is deprecated.  Use ecu_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetActiveOne-response>) ostream)
  "Serializes a message object of type '<SetActiveOne-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'set_state) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'index_set)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetActiveOne-response>) istream)
  "Deserializes a message object of type '<SetActiveOne-response>"
    (cl:setf (cl:slot-value msg 'set_state) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'index_set) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetActiveOne-response>)))
  "Returns string type for a service object of type '<SetActiveOne-response>"
  "ecu_msgs/SetActiveOneResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetActiveOne-response)))
  "Returns string type for a service object of type 'SetActiveOne-response"
  "ecu_msgs/SetActiveOneResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetActiveOne-response>)))
  "Returns md5sum for a message object of type '<SetActiveOne-response>"
  "9f8090badf21f79cbb38a70d7676e26b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetActiveOne-response)))
  "Returns md5sum for a message object of type 'SetActiveOne-response"
  "9f8090badf21f79cbb38a70d7676e26b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetActiveOne-response>)))
  "Returns full string definition for message of type '<SetActiveOne-response>"
  (cl:format cl:nil "bool set_state~%int64 index_set~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetActiveOne-response)))
  "Returns full string definition for message of type 'SetActiveOne-response"
  (cl:format cl:nil "bool set_state~%int64 index_set~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetActiveOne-response>))
  (cl:+ 0
     1
     8
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetActiveOne-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetActiveOne-response
    (cl:cons ':set_state (set_state msg))
    (cl:cons ':index_set (index_set msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetActiveOne)))
  'SetActiveOne-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetActiveOne)))
  'SetActiveOne-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetActiveOne)))
  "Returns string type for a service object of type '<SetActiveOne>"
  "ecu_msgs/SetActiveOne")