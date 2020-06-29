; Auto-generated. Do not edit!


(cl:in-package themis_msgs-msg)


;//! \htmlinclude GeneratorPdm.msg.html

(cl:defclass <GeneratorPdm> (roslisp-msg-protocol:ros-message)
  ((motor_coolant_temp
    :reader motor_coolant_temp
    :initarg :motor_coolant_temp
    :type cl:float
    :initform 0.0)
   (engine_coolant_temp
    :reader engine_coolant_temp
    :initarg :engine_coolant_temp
    :type cl:float
    :initform 0.0))
)

(cl:defclass GeneratorPdm (<GeneratorPdm>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GeneratorPdm>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GeneratorPdm)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name themis_msgs-msg:<GeneratorPdm> is deprecated: use themis_msgs-msg:GeneratorPdm instead.")))

(cl:ensure-generic-function 'motor_coolant_temp-val :lambda-list '(m))
(cl:defmethod motor_coolant_temp-val ((m <GeneratorPdm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:motor_coolant_temp-val is deprecated.  Use themis_msgs-msg:motor_coolant_temp instead.")
  (motor_coolant_temp m))

(cl:ensure-generic-function 'engine_coolant_temp-val :lambda-list '(m))
(cl:defmethod engine_coolant_temp-val ((m <GeneratorPdm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:engine_coolant_temp-val is deprecated.  Use themis_msgs-msg:engine_coolant_temp instead.")
  (engine_coolant_temp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GeneratorPdm>) ostream)
  "Serializes a message object of type '<GeneratorPdm>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'motor_coolant_temp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'engine_coolant_temp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GeneratorPdm>) istream)
  "Deserializes a message object of type '<GeneratorPdm>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'motor_coolant_temp) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'engine_coolant_temp) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GeneratorPdm>)))
  "Returns string type for a message object of type '<GeneratorPdm>"
  "themis_msgs/GeneratorPdm")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GeneratorPdm)))
  "Returns string type for a message object of type 'GeneratorPdm"
  "themis_msgs/GeneratorPdm")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GeneratorPdm>)))
  "Returns md5sum for a message object of type '<GeneratorPdm>"
  "25d429d660d1faae2c98790eb6d65e0e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GeneratorPdm)))
  "Returns md5sum for a message object of type 'GeneratorPdm"
  "25d429d660d1faae2c98790eb6d65e0e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GeneratorPdm>)))
  "Returns full string definition for message of type '<GeneratorPdm>"
  (cl:format cl:nil "float32 motor_coolant_temp~%float32 engine_coolant_temp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GeneratorPdm)))
  "Returns full string definition for message of type 'GeneratorPdm"
  (cl:format cl:nil "float32 motor_coolant_temp~%float32 engine_coolant_temp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GeneratorPdm>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GeneratorPdm>))
  "Converts a ROS message object to a list"
  (cl:list 'GeneratorPdm
    (cl:cons ':motor_coolant_temp (motor_coolant_temp msg))
    (cl:cons ':engine_coolant_temp (engine_coolant_temp msg))
))
