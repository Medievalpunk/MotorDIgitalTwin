; Auto-generated. Do not edit!


(cl:in-package iseauto-msg)


;//! \htmlinclude Power.msg.html

(cl:defclass <Power> (roslisp-msg-protocol:ros-message)
  ((phase1
    :reader phase1
    :initarg :phase1
    :type cl:float
    :initform 0.0)
   (phase2
    :reader phase2
    :initarg :phase2
    :type cl:float
    :initform 0.0)
   (phase3
    :reader phase3
    :initarg :phase3
    :type cl:float
    :initform 0.0)
   (total
    :reader total
    :initarg :total
    :type cl:float
    :initform 0.0))
)

(cl:defclass Power (<Power>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Power>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Power)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iseauto-msg:<Power> is deprecated: use iseauto-msg:Power instead.")))

(cl:ensure-generic-function 'phase1-val :lambda-list '(m))
(cl:defmethod phase1-val ((m <Power>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iseauto-msg:phase1-val is deprecated.  Use iseauto-msg:phase1 instead.")
  (phase1 m))

(cl:ensure-generic-function 'phase2-val :lambda-list '(m))
(cl:defmethod phase2-val ((m <Power>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iseauto-msg:phase2-val is deprecated.  Use iseauto-msg:phase2 instead.")
  (phase2 m))

(cl:ensure-generic-function 'phase3-val :lambda-list '(m))
(cl:defmethod phase3-val ((m <Power>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iseauto-msg:phase3-val is deprecated.  Use iseauto-msg:phase3 instead.")
  (phase3 m))

(cl:ensure-generic-function 'total-val :lambda-list '(m))
(cl:defmethod total-val ((m <Power>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iseauto-msg:total-val is deprecated.  Use iseauto-msg:total instead.")
  (total m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Power>) ostream)
  "Serializes a message object of type '<Power>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'phase1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'phase2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'phase3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'total))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Power>) istream)
  "Deserializes a message object of type '<Power>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'phase1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'phase2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'phase3) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'total) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Power>)))
  "Returns string type for a message object of type '<Power>"
  "iseauto/Power")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Power)))
  "Returns string type for a message object of type 'Power"
  "iseauto/Power")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Power>)))
  "Returns md5sum for a message object of type '<Power>"
  "2da61ddd54b46d41de22ff847920071c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Power)))
  "Returns md5sum for a message object of type 'Power"
  "2da61ddd54b46d41de22ff847920071c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Power>)))
  "Returns full string definition for message of type '<Power>"
  (cl:format cl:nil "float32 phase1~%float32 phase2~%float32 phase3~%float32 total~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Power)))
  "Returns full string definition for message of type 'Power"
  (cl:format cl:nil "float32 phase1~%float32 phase2~%float32 phase3~%float32 total~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Power>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Power>))
  "Converts a ROS message object to a list"
  (cl:list 'Power
    (cl:cons ':phase1 (phase1 msg))
    (cl:cons ':phase2 (phase2 msg))
    (cl:cons ':phase3 (phase3 msg))
    (cl:cons ':total (total msg))
))
