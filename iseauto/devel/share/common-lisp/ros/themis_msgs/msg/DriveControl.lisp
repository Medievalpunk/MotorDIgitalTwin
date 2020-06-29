; Auto-generated. Do not edit!


(cl:in-package themis_msgs-msg)


;//! \htmlinclude DriveControl.msg.html

(cl:defclass <DriveControl> (roslisp-msg-protocol:ros-message)
  ((enable
    :reader enable
    :initarg :enable
    :type cl:boolean
    :initform cl:nil)
   (x_axis
    :reader x_axis
    :initarg :x_axis
    :type cl:float
    :initform 0.0)
   (y_axis
    :reader y_axis
    :initarg :y_axis
    :type cl:float
    :initform 0.0)
   (tank_mode
    :reader tank_mode
    :initarg :tank_mode
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DriveControl (<DriveControl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DriveControl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DriveControl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name themis_msgs-msg:<DriveControl> is deprecated: use themis_msgs-msg:DriveControl instead.")))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <DriveControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:enable-val is deprecated.  Use themis_msgs-msg:enable instead.")
  (enable m))

(cl:ensure-generic-function 'x_axis-val :lambda-list '(m))
(cl:defmethod x_axis-val ((m <DriveControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:x_axis-val is deprecated.  Use themis_msgs-msg:x_axis instead.")
  (x_axis m))

(cl:ensure-generic-function 'y_axis-val :lambda-list '(m))
(cl:defmethod y_axis-val ((m <DriveControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:y_axis-val is deprecated.  Use themis_msgs-msg:y_axis instead.")
  (y_axis m))

(cl:ensure-generic-function 'tank_mode-val :lambda-list '(m))
(cl:defmethod tank_mode-val ((m <DriveControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:tank_mode-val is deprecated.  Use themis_msgs-msg:tank_mode instead.")
  (tank_mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DriveControl>) ostream)
  "Serializes a message object of type '<DriveControl>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x_axis))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y_axis))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'tank_mode) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DriveControl>) istream)
  "Deserializes a message object of type '<DriveControl>"
    (cl:setf (cl:slot-value msg 'enable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x_axis) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y_axis) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'tank_mode) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DriveControl>)))
  "Returns string type for a message object of type '<DriveControl>"
  "themis_msgs/DriveControl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DriveControl)))
  "Returns string type for a message object of type 'DriveControl"
  "themis_msgs/DriveControl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DriveControl>)))
  "Returns md5sum for a message object of type '<DriveControl>"
  "a3ab8998e46efefe9d244d241f9b70d1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DriveControl)))
  "Returns md5sum for a message object of type 'DriveControl"
  "a3ab8998e46efefe9d244d241f9b70d1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DriveControl>)))
  "Returns full string definition for message of type '<DriveControl>"
  (cl:format cl:nil "bool enable~%float32 x_axis~%float32 y_axis~%bool tank_mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DriveControl)))
  "Returns full string definition for message of type 'DriveControl"
  (cl:format cl:nil "bool enable~%float32 x_axis~%float32 y_axis~%bool tank_mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DriveControl>))
  (cl:+ 0
     1
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DriveControl>))
  "Converts a ROS message object to a list"
  (cl:list 'DriveControl
    (cl:cons ':enable (enable msg))
    (cl:cons ':x_axis (x_axis msg))
    (cl:cons ':y_axis (y_axis msg))
    (cl:cons ':tank_mode (tank_mode msg))
))
