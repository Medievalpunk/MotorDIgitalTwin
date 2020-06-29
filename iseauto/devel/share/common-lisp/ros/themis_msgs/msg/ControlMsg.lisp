; Auto-generated. Do not edit!


(cl:in-package themis_msgs-msg)


;//! \htmlinclude ControlMsg.msg.html

(cl:defclass <ControlMsg> (roslisp-msg-protocol:ros-message)
  ((timestamp
    :reader timestamp
    :initarg :timestamp
    :type cl:integer
    :initform 0)
   (drive
    :reader drive
    :initarg :drive
    :type themis_msgs-msg:DriveControl
    :initform (cl:make-instance 'themis_msgs-msg:DriveControl))
   (system
    :reader system
    :initarg :system
    :type themis_msgs-msg:SystemControl
    :initform (cl:make-instance 'themis_msgs-msg:SystemControl))
   (mode
    :reader mode
    :initarg :mode
    :type themis_msgs-msg:ModeControl
    :initform (cl:make-instance 'themis_msgs-msg:ModeControl)))
)

(cl:defclass ControlMsg (<ControlMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControlMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControlMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name themis_msgs-msg:<ControlMsg> is deprecated: use themis_msgs-msg:ControlMsg instead.")))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <ControlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:timestamp-val is deprecated.  Use themis_msgs-msg:timestamp instead.")
  (timestamp m))

(cl:ensure-generic-function 'drive-val :lambda-list '(m))
(cl:defmethod drive-val ((m <ControlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:drive-val is deprecated.  Use themis_msgs-msg:drive instead.")
  (drive m))

(cl:ensure-generic-function 'system-val :lambda-list '(m))
(cl:defmethod system-val ((m <ControlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:system-val is deprecated.  Use themis_msgs-msg:system instead.")
  (system m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <ControlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:mode-val is deprecated.  Use themis_msgs-msg:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControlMsg>) ostream)
  "Serializes a message object of type '<ControlMsg>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'drive) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'system) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mode) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControlMsg>) istream)
  "Deserializes a message object of type '<ControlMsg>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'drive) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'system) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mode) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControlMsg>)))
  "Returns string type for a message object of type '<ControlMsg>"
  "themis_msgs/ControlMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControlMsg)))
  "Returns string type for a message object of type 'ControlMsg"
  "themis_msgs/ControlMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControlMsg>)))
  "Returns md5sum for a message object of type '<ControlMsg>"
  "eaa6a2d954fb548e6a569f42edcfb266")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControlMsg)))
  "Returns md5sum for a message object of type 'ControlMsg"
  "eaa6a2d954fb548e6a569f42edcfb266")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControlMsg>)))
  "Returns full string definition for message of type '<ControlMsg>"
  (cl:format cl:nil "uint64 timestamp~%DriveControl drive~%SystemControl system~%ModeControl mode~%~%================================================================================~%MSG: themis_msgs/DriveControl~%bool enable~%float32 x_axis~%float32 y_axis~%bool tank_mode~%~%================================================================================~%MSG: themis_msgs/SystemControl~%bool high_voltage~%bool fan_override~%bool generator~%bool work_lights~%bool signal_lights~%bool imd_override~%~%================================================================================~%MSG: themis_msgs/ModeControl~%uint8 vehicle~%uint8 generator~%uint8 speed~%uint8 brake~%uint8 charge~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControlMsg)))
  "Returns full string definition for message of type 'ControlMsg"
  (cl:format cl:nil "uint64 timestamp~%DriveControl drive~%SystemControl system~%ModeControl mode~%~%================================================================================~%MSG: themis_msgs/DriveControl~%bool enable~%float32 x_axis~%float32 y_axis~%bool tank_mode~%~%================================================================================~%MSG: themis_msgs/SystemControl~%bool high_voltage~%bool fan_override~%bool generator~%bool work_lights~%bool signal_lights~%bool imd_override~%~%================================================================================~%MSG: themis_msgs/ModeControl~%uint8 vehicle~%uint8 generator~%uint8 speed~%uint8 brake~%uint8 charge~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControlMsg>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'drive))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'system))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mode))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControlMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'ControlMsg
    (cl:cons ':timestamp (timestamp msg))
    (cl:cons ':drive (drive msg))
    (cl:cons ':system (system msg))
    (cl:cons ':mode (mode msg))
))
