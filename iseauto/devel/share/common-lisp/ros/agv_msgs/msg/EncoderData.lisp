; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude EncoderData.msg.html

(cl:defclass <EncoderData> (roslisp-msg-protocol:ros-message)
  ((velocity
    :reader velocity
    :initarg :velocity
    :type cl:float
    :initform 0.0)
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0)
   (units
    :reader units
    :initarg :units
    :type cl:fixnum
    :initform 0))
)

(cl:defclass EncoderData (<EncoderData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EncoderData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EncoderData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<EncoderData> is deprecated: use agv_msgs-msg:EncoderData instead.")))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <EncoderData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:velocity-val is deprecated.  Use agv_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <EncoderData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:distance-val is deprecated.  Use agv_msgs-msg:distance instead.")
  (distance m))

(cl:ensure-generic-function 'units-val :lambda-list '(m))
(cl:defmethod units-val ((m <EncoderData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:units-val is deprecated.  Use agv_msgs-msg:units instead.")
  (units m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<EncoderData>)))
    "Constants for message type '<EncoderData>"
  '((:RPM . 0)
    (:RAD_S . 1)
    (:M_S . 2)
    (:TICKS . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'EncoderData)))
    "Constants for message type 'EncoderData"
  '((:RPM . 0)
    (:RAD_S . 1)
    (:M_S . 2)
    (:TICKS . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EncoderData>) ostream)
  "Serializes a message object of type '<EncoderData>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'units)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EncoderData>) istream)
  "Deserializes a message object of type '<EncoderData>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'units)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EncoderData>)))
  "Returns string type for a message object of type '<EncoderData>"
  "agv_msgs/EncoderData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EncoderData)))
  "Returns string type for a message object of type 'EncoderData"
  "agv_msgs/EncoderData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EncoderData>)))
  "Returns md5sum for a message object of type '<EncoderData>"
  "5ed93d667b28e9c960e1b5b4789dc7c5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EncoderData)))
  "Returns md5sum for a message object of type 'EncoderData"
  "5ed93d667b28e9c960e1b5b4789dc7c5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EncoderData>)))
  "Returns full string definition for message of type '<EncoderData>"
  (cl:format cl:nil "float32 velocity~%float32 distance~%~%uint8 units~%uint8 RPM=0     # velocity in rpm,      distance in rotations~%uint8 RAD_S=1   # velocity in rad/s,    distance in radians~%uint8 M_S=2     # velocity in m/s,      distance in metres~%uint8 TICKS=3   # velocity in ticks/s,  distance in ticks~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EncoderData)))
  "Returns full string definition for message of type 'EncoderData"
  (cl:format cl:nil "float32 velocity~%float32 distance~%~%uint8 units~%uint8 RPM=0     # velocity in rpm,      distance in rotations~%uint8 RAD_S=1   # velocity in rad/s,    distance in radians~%uint8 M_S=2     # velocity in m/s,      distance in metres~%uint8 TICKS=3   # velocity in ticks/s,  distance in ticks~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EncoderData>))
  (cl:+ 0
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EncoderData>))
  "Converts a ROS message object to a list"
  (cl:list 'EncoderData
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':distance (distance msg))
    (cl:cons ':units (units msg))
))
