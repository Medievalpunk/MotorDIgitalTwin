; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude PathSegmentInfo.msg.html

(cl:defclass <PathSegmentInfo> (roslisp-msg-protocol:ros-message)
  ((start_id
    :reader start_id
    :initarg :start_id
    :type cl:string
    :initform "")
   (end_id
    :reader end_id
    :initarg :end_id
    :type cl:string
    :initform "")
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass PathSegmentInfo (<PathSegmentInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PathSegmentInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PathSegmentInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<PathSegmentInfo> is deprecated: use agv_msgs-msg:PathSegmentInfo instead.")))

(cl:ensure-generic-function 'start_id-val :lambda-list '(m))
(cl:defmethod start_id-val ((m <PathSegmentInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:start_id-val is deprecated.  Use agv_msgs-msg:start_id instead.")
  (start_id m))

(cl:ensure-generic-function 'end_id-val :lambda-list '(m))
(cl:defmethod end_id-val ((m <PathSegmentInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:end_id-val is deprecated.  Use agv_msgs-msg:end_id instead.")
  (end_id m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <PathSegmentInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:distance-val is deprecated.  Use agv_msgs-msg:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PathSegmentInfo>) ostream)
  "Serializes a message object of type '<PathSegmentInfo>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'start_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'start_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'end_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'end_id))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PathSegmentInfo>) istream)
  "Deserializes a message object of type '<PathSegmentInfo>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'start_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'start_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'end_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'end_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PathSegmentInfo>)))
  "Returns string type for a message object of type '<PathSegmentInfo>"
  "agv_msgs/PathSegmentInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PathSegmentInfo)))
  "Returns string type for a message object of type 'PathSegmentInfo"
  "agv_msgs/PathSegmentInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PathSegmentInfo>)))
  "Returns md5sum for a message object of type '<PathSegmentInfo>"
  "1177108c776ff861a843c40f49c83e33")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PathSegmentInfo)))
  "Returns md5sum for a message object of type 'PathSegmentInfo"
  "1177108c776ff861a843c40f49c83e33")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PathSegmentInfo>)))
  "Returns full string definition for message of type '<PathSegmentInfo>"
  (cl:format cl:nil "string start_id~%string end_id~%float32 distance~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PathSegmentInfo)))
  "Returns full string definition for message of type 'PathSegmentInfo"
  (cl:format cl:nil "string start_id~%string end_id~%float32 distance~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PathSegmentInfo>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'start_id))
     4 (cl:length (cl:slot-value msg 'end_id))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PathSegmentInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'PathSegmentInfo
    (cl:cons ':start_id (start_id msg))
    (cl:cons ':end_id (end_id msg))
    (cl:cons ':distance (distance msg))
))
