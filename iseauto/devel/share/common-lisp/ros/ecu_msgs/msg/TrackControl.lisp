; Auto-generated. Do not edit!


(cl:in-package ecu_msgs-msg)


;//! \htmlinclude TrackControl.msg.html

(cl:defclass <TrackControl> (roslisp-msg-protocol:ros-message)
  ((speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (break_status
    :reader break_status
    :initarg :break_status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TrackControl (<TrackControl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrackControl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrackControl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ecu_msgs-msg:<TrackControl> is deprecated: use ecu_msgs-msg:TrackControl instead.")))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <TrackControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ecu_msgs-msg:speed-val is deprecated.  Use ecu_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'break_status-val :lambda-list '(m))
(cl:defmethod break_status-val ((m <TrackControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ecu_msgs-msg:break_status-val is deprecated.  Use ecu_msgs-msg:break_status instead.")
  (break_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrackControl>) ostream)
  "Serializes a message object of type '<TrackControl>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'break_status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrackControl>) istream)
  "Deserializes a message object of type '<TrackControl>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'break_status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrackControl>)))
  "Returns string type for a message object of type '<TrackControl>"
  "ecu_msgs/TrackControl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrackControl)))
  "Returns string type for a message object of type 'TrackControl"
  "ecu_msgs/TrackControl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrackControl>)))
  "Returns md5sum for a message object of type '<TrackControl>"
  "64fde1397f518d8d0c581337f6291249")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrackControl)))
  "Returns md5sum for a message object of type 'TrackControl"
  "64fde1397f518d8d0c581337f6291249")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrackControl>)))
  "Returns full string definition for message of type '<TrackControl>"
  (cl:format cl:nil "float64 speed~%bool break_status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrackControl)))
  "Returns full string definition for message of type 'TrackControl"
  (cl:format cl:nil "float64 speed~%bool break_status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrackControl>))
  (cl:+ 0
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrackControl>))
  "Converts a ROS message object to a list"
  (cl:list 'TrackControl
    (cl:cons ':speed (speed msg))
    (cl:cons ':break_status (break_status msg))
))
