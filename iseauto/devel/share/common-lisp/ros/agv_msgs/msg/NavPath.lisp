; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude NavPath.msg.html

(cl:defclass <NavPath> (roslisp-msg-protocol:ros-message)
  ((ids
    :reader ids
    :initarg :ids
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass NavPath (<NavPath>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavPath>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavPath)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<NavPath> is deprecated: use agv_msgs-msg:NavPath instead.")))

(cl:ensure-generic-function 'ids-val :lambda-list '(m))
(cl:defmethod ids-val ((m <NavPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:ids-val is deprecated.  Use agv_msgs-msg:ids instead.")
  (ids m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <NavPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:type-val is deprecated.  Use agv_msgs-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavPath>) ostream)
  "Serializes a message object of type '<NavPath>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'ids))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavPath>) istream)
  "Deserializes a message object of type '<NavPath>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavPath>)))
  "Returns string type for a message object of type '<NavPath>"
  "agv_msgs/NavPath")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavPath)))
  "Returns string type for a message object of type 'NavPath"
  "agv_msgs/NavPath")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavPath>)))
  "Returns md5sum for a message object of type '<NavPath>"
  "711def7d6763ad1633c19a26fb883e46")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavPath)))
  "Returns md5sum for a message object of type 'NavPath"
  "711def7d6763ad1633c19a26fb883e46")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavPath>)))
  "Returns full string definition for message of type '<NavPath>"
  (cl:format cl:nil "string[] ids~%uint16 type~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavPath)))
  "Returns full string definition for message of type 'NavPath"
  (cl:format cl:nil "string[] ids~%uint16 type~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavPath>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavPath>))
  "Converts a ROS message object to a list"
  (cl:list 'NavPath
    (cl:cons ':ids (ids msg))
    (cl:cons ':type (type msg))
))
