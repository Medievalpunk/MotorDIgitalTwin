; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude ID.msg.html

(cl:defclass <ID> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:integer
    :initform 0))
)

(cl:defclass ID (<ID>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ID>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ID)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<ID> is deprecated: use agv_msgs-msg:ID instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <ID>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:data-val is deprecated.  Use agv_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ID>)))
    "Constants for message type '<ID>"
  '((:INVALID_ID . 0))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ID)))
    "Constants for message type 'ID"
  '((:INVALID_ID . 0))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ID>) ostream)
  "Serializes a message object of type '<ID>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'data)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ID>) istream)
  "Deserializes a message object of type '<ID>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'data)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ID>)))
  "Returns string type for a message object of type '<ID>"
  "agv_msgs/ID")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ID)))
  "Returns string type for a message object of type 'ID"
  "agv_msgs/ID")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ID>)))
  "Returns md5sum for a message object of type '<ID>"
  "13c6eee13b62c0e3ecc8410f8dd0a003")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ID)))
  "Returns md5sum for a message object of type 'ID"
  "13c6eee13b62c0e3ecc8410f8dd0a003")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ID>)))
  "Returns full string definition for message of type '<ID>"
  (cl:format cl:nil " uint32 data~%~% uint32 INVALID_ID=0~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ID)))
  "Returns full string definition for message of type 'ID"
  (cl:format cl:nil " uint32 data~%~% uint32 INVALID_ID=0~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ID>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ID>))
  "Converts a ROS message object to a list"
  (cl:list 'ID
    (cl:cons ':data (data msg))
))
