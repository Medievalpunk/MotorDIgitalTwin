; Auto-generated. Do not edit!


(cl:in-package iseauto-msg)


;//! \htmlinclude Voltage.msg.html

(cl:defclass <Voltage> (roslisp-msg-protocol:ros-message)
  ((voltage1
    :reader voltage1
    :initarg :voltage1
    :type cl:float
    :initform 0.0)
   (voltage2
    :reader voltage2
    :initarg :voltage2
    :type cl:float
    :initform 0.0)
   (voltage3
    :reader voltage3
    :initarg :voltage3
    :type cl:float
    :initform 0.0))
)

(cl:defclass Voltage (<Voltage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Voltage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Voltage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iseauto-msg:<Voltage> is deprecated: use iseauto-msg:Voltage instead.")))

(cl:ensure-generic-function 'voltage1-val :lambda-list '(m))
(cl:defmethod voltage1-val ((m <Voltage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iseauto-msg:voltage1-val is deprecated.  Use iseauto-msg:voltage1 instead.")
  (voltage1 m))

(cl:ensure-generic-function 'voltage2-val :lambda-list '(m))
(cl:defmethod voltage2-val ((m <Voltage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iseauto-msg:voltage2-val is deprecated.  Use iseauto-msg:voltage2 instead.")
  (voltage2 m))

(cl:ensure-generic-function 'voltage3-val :lambda-list '(m))
(cl:defmethod voltage3-val ((m <Voltage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iseauto-msg:voltage3-val is deprecated.  Use iseauto-msg:voltage3 instead.")
  (voltage3 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Voltage>) ostream)
  "Serializes a message object of type '<Voltage>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'voltage1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'voltage2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'voltage3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Voltage>) istream)
  "Deserializes a message object of type '<Voltage>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'voltage1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'voltage2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'voltage3) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Voltage>)))
  "Returns string type for a message object of type '<Voltage>"
  "iseauto/Voltage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Voltage)))
  "Returns string type for a message object of type 'Voltage"
  "iseauto/Voltage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Voltage>)))
  "Returns md5sum for a message object of type '<Voltage>"
  "201ad7f8e98b5d0b734069bf861aba7a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Voltage)))
  "Returns md5sum for a message object of type 'Voltage"
  "201ad7f8e98b5d0b734069bf861aba7a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Voltage>)))
  "Returns full string definition for message of type '<Voltage>"
  (cl:format cl:nil "float32 voltage1~%float32 voltage2~%float32 voltage3~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Voltage)))
  "Returns full string definition for message of type 'Voltage"
  (cl:format cl:nil "float32 voltage1~%float32 voltage2~%float32 voltage3~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Voltage>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Voltage>))
  "Converts a ROS message object to a list"
  (cl:list 'Voltage
    (cl:cons ':voltage1 (voltage1 msg))
    (cl:cons ':voltage2 (voltage2 msg))
    (cl:cons ':voltage3 (voltage3 msg))
))
