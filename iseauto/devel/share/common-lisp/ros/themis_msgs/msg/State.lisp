; Auto-generated. Do not edit!


(cl:in-package themis_msgs-msg)


;//! \htmlinclude State.msg.html

(cl:defclass <State> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (desc
    :reader desc
    :initarg :desc
    :type cl:string
    :initform ""))
)

(cl:defclass State (<State>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <State>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'State)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name themis_msgs-msg:<State> is deprecated: use themis_msgs-msg:State instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:id-val is deprecated.  Use themis_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'desc-val :lambda-list '(m))
(cl:defmethod desc-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:desc-val is deprecated.  Use themis_msgs-msg:desc instead.")
  (desc m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <State>) ostream)
  "Serializes a message object of type '<State>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'desc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'desc))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <State>) istream)
  "Deserializes a message object of type '<State>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'desc) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'desc) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<State>)))
  "Returns string type for a message object of type '<State>"
  "themis_msgs/State")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'State)))
  "Returns string type for a message object of type 'State"
  "themis_msgs/State")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<State>)))
  "Returns md5sum for a message object of type '<State>"
  "34f2727d2620af27976939d2767124cd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'State)))
  "Returns md5sum for a message object of type 'State"
  "34f2727d2620af27976939d2767124cd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<State>)))
  "Returns full string definition for message of type '<State>"
  (cl:format cl:nil "uint16 id~%string desc~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'State)))
  "Returns full string definition for message of type 'State"
  (cl:format cl:nil "uint16 id~%string desc~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <State>))
  (cl:+ 0
     2
     4 (cl:length (cl:slot-value msg 'desc))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <State>))
  "Converts a ROS message object to a list"
  (cl:list 'State
    (cl:cons ':id (id msg))
    (cl:cons ':desc (desc msg))
))
