; Auto-generated. Do not edit!


(cl:in-package themis_msgs-srv)


;//! \htmlinclude SetState-request.msg.html

(cl:defclass <SetState-request> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetState-request (<SetState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name themis_msgs-srv:<SetState-request> is deprecated: use themis_msgs-srv:SetState-request instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <SetState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-srv:state-val is deprecated.  Use themis_msgs-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetState-request>) ostream)
  "Serializes a message object of type '<SetState-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'state) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetState-request>) istream)
  "Deserializes a message object of type '<SetState-request>"
    (cl:setf (cl:slot-value msg 'state) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetState-request>)))
  "Returns string type for a service object of type '<SetState-request>"
  "themis_msgs/SetStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetState-request)))
  "Returns string type for a service object of type 'SetState-request"
  "themis_msgs/SetStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetState-request>)))
  "Returns md5sum for a message object of type '<SetState-request>"
  "ce0eba33c969c78d3ee94cf138cc41e2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetState-request)))
  "Returns md5sum for a message object of type 'SetState-request"
  "ce0eba33c969c78d3ee94cf138cc41e2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetState-request>)))
  "Returns full string definition for message of type '<SetState-request>"
  (cl:format cl:nil "bool state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetState-request)))
  "Returns full string definition for message of type 'SetState-request"
  (cl:format cl:nil "bool state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetState-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetState-request
    (cl:cons ':state (state msg))
))
;//! \htmlinclude SetState-response.msg.html

(cl:defclass <SetState-response> (roslisp-msg-protocol:ros-message)
  ((set_state
    :reader set_state
    :initarg :set_state
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass SetState-response (<SetState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name themis_msgs-srv:<SetState-response> is deprecated: use themis_msgs-srv:SetState-response instead.")))

(cl:ensure-generic-function 'set_state-val :lambda-list '(m))
(cl:defmethod set_state-val ((m <SetState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-srv:set_state-val is deprecated.  Use themis_msgs-srv:set_state instead.")
  (set_state m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-srv:message-val is deprecated.  Use themis_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetState-response>) ostream)
  "Serializes a message object of type '<SetState-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'set_state) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetState-response>) istream)
  "Deserializes a message object of type '<SetState-response>"
    (cl:setf (cl:slot-value msg 'set_state) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetState-response>)))
  "Returns string type for a service object of type '<SetState-response>"
  "themis_msgs/SetStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetState-response)))
  "Returns string type for a service object of type 'SetState-response"
  "themis_msgs/SetStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetState-response>)))
  "Returns md5sum for a message object of type '<SetState-response>"
  "ce0eba33c969c78d3ee94cf138cc41e2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetState-response)))
  "Returns md5sum for a message object of type 'SetState-response"
  "ce0eba33c969c78d3ee94cf138cc41e2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetState-response>)))
  "Returns full string definition for message of type '<SetState-response>"
  (cl:format cl:nil "bool set_state~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetState-response)))
  "Returns full string definition for message of type 'SetState-response"
  (cl:format cl:nil "bool set_state~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetState-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetState-response
    (cl:cons ':set_state (set_state msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetState)))
  'SetState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetState)))
  'SetState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetState)))
  "Returns string type for a service object of type '<SetState>"
  "themis_msgs/SetState")