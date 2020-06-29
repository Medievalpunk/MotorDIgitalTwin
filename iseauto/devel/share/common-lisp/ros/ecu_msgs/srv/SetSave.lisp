; Auto-generated. Do not edit!


(cl:in-package ecu_msgs-srv)


;//! \htmlinclude SetSave-request.msg.html

(cl:defclass <SetSave-request> (roslisp-msg-protocol:ros-message)
  ((filename
    :reader filename
    :initarg :filename
    :type cl:string
    :initform ""))
)

(cl:defclass SetSave-request (<SetSave-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetSave-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetSave-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ecu_msgs-srv:<SetSave-request> is deprecated: use ecu_msgs-srv:SetSave-request instead.")))

(cl:ensure-generic-function 'filename-val :lambda-list '(m))
(cl:defmethod filename-val ((m <SetSave-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ecu_msgs-srv:filename-val is deprecated.  Use ecu_msgs-srv:filename instead.")
  (filename m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetSave-request>) ostream)
  "Serializes a message object of type '<SetSave-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'filename))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'filename))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetSave-request>) istream)
  "Deserializes a message object of type '<SetSave-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'filename) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'filename) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetSave-request>)))
  "Returns string type for a service object of type '<SetSave-request>"
  "ecu_msgs/SetSaveRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetSave-request)))
  "Returns string type for a service object of type 'SetSave-request"
  "ecu_msgs/SetSaveRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetSave-request>)))
  "Returns md5sum for a message object of type '<SetSave-request>"
  "4de3d9cc11cc57aecc1e3b15cb59ccfc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetSave-request)))
  "Returns md5sum for a message object of type 'SetSave-request"
  "4de3d9cc11cc57aecc1e3b15cb59ccfc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetSave-request>)))
  "Returns full string definition for message of type '<SetSave-request>"
  (cl:format cl:nil "string filename~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetSave-request)))
  "Returns full string definition for message of type 'SetSave-request"
  (cl:format cl:nil "string filename~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetSave-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'filename))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetSave-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetSave-request
    (cl:cons ':filename (filename msg))
))
;//! \htmlinclude SetSave-response.msg.html

(cl:defclass <SetSave-response> (roslisp-msg-protocol:ros-message)
  ((message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass SetSave-response (<SetSave-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetSave-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetSave-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ecu_msgs-srv:<SetSave-response> is deprecated: use ecu_msgs-srv:SetSave-response instead.")))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetSave-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ecu_msgs-srv:message-val is deprecated.  Use ecu_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetSave-response>) ostream)
  "Serializes a message object of type '<SetSave-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetSave-response>) istream)
  "Deserializes a message object of type '<SetSave-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetSave-response>)))
  "Returns string type for a service object of type '<SetSave-response>"
  "ecu_msgs/SetSaveResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetSave-response)))
  "Returns string type for a service object of type 'SetSave-response"
  "ecu_msgs/SetSaveResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetSave-response>)))
  "Returns md5sum for a message object of type '<SetSave-response>"
  "4de3d9cc11cc57aecc1e3b15cb59ccfc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetSave-response)))
  "Returns md5sum for a message object of type 'SetSave-response"
  "4de3d9cc11cc57aecc1e3b15cb59ccfc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetSave-response>)))
  "Returns full string definition for message of type '<SetSave-response>"
  (cl:format cl:nil "string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetSave-response)))
  "Returns full string definition for message of type 'SetSave-response"
  (cl:format cl:nil "string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetSave-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetSave-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetSave-response
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetSave)))
  'SetSave-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetSave)))
  'SetSave-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetSave)))
  "Returns string type for a service object of type '<SetSave>"
  "ecu_msgs/SetSave")