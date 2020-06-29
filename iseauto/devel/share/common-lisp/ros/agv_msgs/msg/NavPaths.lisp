; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude NavPaths.msg.html

(cl:defclass <NavPaths> (roslisp-msg-protocol:ros-message)
  ((paths
    :reader paths
    :initarg :paths
    :type (cl:vector agv_msgs-msg:NavPath)
   :initform (cl:make-array 0 :element-type 'agv_msgs-msg:NavPath :initial-element (cl:make-instance 'agv_msgs-msg:NavPath))))
)

(cl:defclass NavPaths (<NavPaths>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavPaths>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavPaths)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<NavPaths> is deprecated: use agv_msgs-msg:NavPaths instead.")))

(cl:ensure-generic-function 'paths-val :lambda-list '(m))
(cl:defmethod paths-val ((m <NavPaths>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:paths-val is deprecated.  Use agv_msgs-msg:paths instead.")
  (paths m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavPaths>) ostream)
  "Serializes a message object of type '<NavPaths>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'paths))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'paths))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavPaths>) istream)
  "Deserializes a message object of type '<NavPaths>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'paths) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'paths)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'agv_msgs-msg:NavPath))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavPaths>)))
  "Returns string type for a message object of type '<NavPaths>"
  "agv_msgs/NavPaths")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavPaths)))
  "Returns string type for a message object of type 'NavPaths"
  "agv_msgs/NavPaths")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavPaths>)))
  "Returns md5sum for a message object of type '<NavPaths>"
  "d8ca5b9769932f260f0331e043f67520")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavPaths)))
  "Returns md5sum for a message object of type 'NavPaths"
  "d8ca5b9769932f260f0331e043f67520")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavPaths>)))
  "Returns full string definition for message of type '<NavPaths>"
  (cl:format cl:nil "NavPath[] paths~%~%================================================================================~%MSG: agv_msgs/NavPath~%string[] ids~%uint16 type~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavPaths)))
  "Returns full string definition for message of type 'NavPaths"
  (cl:format cl:nil "NavPath[] paths~%~%================================================================================~%MSG: agv_msgs/NavPath~%string[] ids~%uint16 type~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavPaths>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'paths) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavPaths>))
  "Converts a ROS message object to a list"
  (cl:list 'NavPaths
    (cl:cons ':paths (paths msg))
))
