; Auto-generated. Do not edit!


(cl:in-package ecu_msgs-srv)


;//! \htmlinclude GenerateFault-request.msg.html

(cl:defclass <GenerateFault-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GenerateFault-request (<GenerateFault-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GenerateFault-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GenerateFault-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ecu_msgs-srv:<GenerateFault-request> is deprecated: use ecu_msgs-srv:GenerateFault-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GenerateFault-request>) ostream)
  "Serializes a message object of type '<GenerateFault-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GenerateFault-request>) istream)
  "Deserializes a message object of type '<GenerateFault-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GenerateFault-request>)))
  "Returns string type for a service object of type '<GenerateFault-request>"
  "ecu_msgs/GenerateFaultRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GenerateFault-request)))
  "Returns string type for a service object of type 'GenerateFault-request"
  "ecu_msgs/GenerateFaultRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GenerateFault-request>)))
  "Returns md5sum for a message object of type '<GenerateFault-request>"
  "937c9679a518e3a18d831e57125ea522")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GenerateFault-request)))
  "Returns md5sum for a message object of type 'GenerateFault-request"
  "937c9679a518e3a18d831e57125ea522")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GenerateFault-request>)))
  "Returns full string definition for message of type '<GenerateFault-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GenerateFault-request)))
  "Returns full string definition for message of type 'GenerateFault-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GenerateFault-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GenerateFault-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GenerateFault-request
))
;//! \htmlinclude GenerateFault-response.msg.html

(cl:defclass <GenerateFault-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass GenerateFault-response (<GenerateFault-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GenerateFault-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GenerateFault-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ecu_msgs-srv:<GenerateFault-response> is deprecated: use ecu_msgs-srv:GenerateFault-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GenerateFault-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ecu_msgs-srv:success-val is deprecated.  Use ecu_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GenerateFault-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ecu_msgs-srv:message-val is deprecated.  Use ecu_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GenerateFault-response>) ostream)
  "Serializes a message object of type '<GenerateFault-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GenerateFault-response>) istream)
  "Deserializes a message object of type '<GenerateFault-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GenerateFault-response>)))
  "Returns string type for a service object of type '<GenerateFault-response>"
  "ecu_msgs/GenerateFaultResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GenerateFault-response)))
  "Returns string type for a service object of type 'GenerateFault-response"
  "ecu_msgs/GenerateFaultResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GenerateFault-response>)))
  "Returns md5sum for a message object of type '<GenerateFault-response>"
  "937c9679a518e3a18d831e57125ea522")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GenerateFault-response)))
  "Returns md5sum for a message object of type 'GenerateFault-response"
  "937c9679a518e3a18d831e57125ea522")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GenerateFault-response>)))
  "Returns full string definition for message of type '<GenerateFault-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GenerateFault-response)))
  "Returns full string definition for message of type 'GenerateFault-response"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GenerateFault-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GenerateFault-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GenerateFault-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GenerateFault)))
  'GenerateFault-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GenerateFault)))
  'GenerateFault-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GenerateFault)))
  "Returns string type for a service object of type '<GenerateFault>"
  "ecu_msgs/GenerateFault")