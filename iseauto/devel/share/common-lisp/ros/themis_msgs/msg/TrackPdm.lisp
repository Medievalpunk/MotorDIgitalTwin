; Auto-generated. Do not edit!


(cl:in-package themis_msgs-msg)


;//! \htmlinclude TrackPdm.msg.html

(cl:defclass <TrackPdm> (roslisp-msg-protocol:ros-message)
  ((track_coolant_temp
    :reader track_coolant_temp
    :initarg :track_coolant_temp
    :type cl:float
    :initform 0.0)
   (brake_status
    :reader brake_status
    :initarg :brake_status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TrackPdm (<TrackPdm>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrackPdm>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrackPdm)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name themis_msgs-msg:<TrackPdm> is deprecated: use themis_msgs-msg:TrackPdm instead.")))

(cl:ensure-generic-function 'track_coolant_temp-val :lambda-list '(m))
(cl:defmethod track_coolant_temp-val ((m <TrackPdm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:track_coolant_temp-val is deprecated.  Use themis_msgs-msg:track_coolant_temp instead.")
  (track_coolant_temp m))

(cl:ensure-generic-function 'brake_status-val :lambda-list '(m))
(cl:defmethod brake_status-val ((m <TrackPdm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:brake_status-val is deprecated.  Use themis_msgs-msg:brake_status instead.")
  (brake_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrackPdm>) ostream)
  "Serializes a message object of type '<TrackPdm>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'track_coolant_temp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'brake_status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrackPdm>) istream)
  "Deserializes a message object of type '<TrackPdm>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'track_coolant_temp) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'brake_status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrackPdm>)))
  "Returns string type for a message object of type '<TrackPdm>"
  "themis_msgs/TrackPdm")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrackPdm)))
  "Returns string type for a message object of type 'TrackPdm"
  "themis_msgs/TrackPdm")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrackPdm>)))
  "Returns md5sum for a message object of type '<TrackPdm>"
  "65d433095f8620e2fabfbc1e2f848f60")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrackPdm)))
  "Returns md5sum for a message object of type 'TrackPdm"
  "65d433095f8620e2fabfbc1e2f848f60")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrackPdm>)))
  "Returns full string definition for message of type '<TrackPdm>"
  (cl:format cl:nil "float32 track_coolant_temp~%bool brake_status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrackPdm)))
  "Returns full string definition for message of type 'TrackPdm"
  (cl:format cl:nil "float32 track_coolant_temp~%bool brake_status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrackPdm>))
  (cl:+ 0
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrackPdm>))
  "Converts a ROS message object to a list"
  (cl:list 'TrackPdm
    (cl:cons ':track_coolant_temp (track_coolant_temp msg))
    (cl:cons ':brake_status (brake_status msg))
))
