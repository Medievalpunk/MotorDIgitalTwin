; Auto-generated. Do not edit!


(cl:in-package iseauto-msg)


;//! \htmlinclude Current.msg.html

(cl:defclass <Current> (roslisp-msg-protocol:ros-message)
  ((current1
    :reader current1
    :initarg :current1
    :type cl:float
    :initform 0.0)
   (current2
    :reader current2
    :initarg :current2
    :type cl:float
    :initform 0.0)
   (current3
    :reader current3
    :initarg :current3
    :type cl:float
    :initform 0.0))
)

(cl:defclass Current (<Current>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Current>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Current)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iseauto-msg:<Current> is deprecated: use iseauto-msg:Current instead.")))

(cl:ensure-generic-function 'current1-val :lambda-list '(m))
(cl:defmethod current1-val ((m <Current>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iseauto-msg:current1-val is deprecated.  Use iseauto-msg:current1 instead.")
  (current1 m))

(cl:ensure-generic-function 'current2-val :lambda-list '(m))
(cl:defmethod current2-val ((m <Current>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iseauto-msg:current2-val is deprecated.  Use iseauto-msg:current2 instead.")
  (current2 m))

(cl:ensure-generic-function 'current3-val :lambda-list '(m))
(cl:defmethod current3-val ((m <Current>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iseauto-msg:current3-val is deprecated.  Use iseauto-msg:current3 instead.")
  (current3 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Current>) ostream)
  "Serializes a message object of type '<Current>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'current1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'current2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'current3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Current>) istream)
  "Deserializes a message object of type '<Current>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current3) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Current>)))
  "Returns string type for a message object of type '<Current>"
  "iseauto/Current")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Current)))
  "Returns string type for a message object of type 'Current"
  "iseauto/Current")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Current>)))
  "Returns md5sum for a message object of type '<Current>"
  "d72878699e445dfbd8b757130d3ba7c0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Current)))
  "Returns md5sum for a message object of type 'Current"
  "d72878699e445dfbd8b757130d3ba7c0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Current>)))
  "Returns full string definition for message of type '<Current>"
  (cl:format cl:nil "float32 current1~%float32 current2~%float32 current3~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Current)))
  "Returns full string definition for message of type 'Current"
  (cl:format cl:nil "float32 current1~%float32 current2~%float32 current3~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Current>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Current>))
  "Converts a ROS message object to a list"
  (cl:list 'Current
    (cl:cons ':current1 (current1 msg))
    (cl:cons ':current2 (current2 msg))
    (cl:cons ':current3 (current3 msg))
))
