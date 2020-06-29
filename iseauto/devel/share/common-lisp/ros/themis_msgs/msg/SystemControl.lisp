; Auto-generated. Do not edit!


(cl:in-package themis_msgs-msg)


;//! \htmlinclude SystemControl.msg.html

(cl:defclass <SystemControl> (roslisp-msg-protocol:ros-message)
  ((high_voltage
    :reader high_voltage
    :initarg :high_voltage
    :type cl:boolean
    :initform cl:nil)
   (fan_override
    :reader fan_override
    :initarg :fan_override
    :type cl:boolean
    :initform cl:nil)
   (generator
    :reader generator
    :initarg :generator
    :type cl:boolean
    :initform cl:nil)
   (work_lights
    :reader work_lights
    :initarg :work_lights
    :type cl:boolean
    :initform cl:nil)
   (signal_lights
    :reader signal_lights
    :initarg :signal_lights
    :type cl:boolean
    :initform cl:nil)
   (imd_override
    :reader imd_override
    :initarg :imd_override
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SystemControl (<SystemControl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SystemControl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SystemControl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name themis_msgs-msg:<SystemControl> is deprecated: use themis_msgs-msg:SystemControl instead.")))

(cl:ensure-generic-function 'high_voltage-val :lambda-list '(m))
(cl:defmethod high_voltage-val ((m <SystemControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:high_voltage-val is deprecated.  Use themis_msgs-msg:high_voltage instead.")
  (high_voltage m))

(cl:ensure-generic-function 'fan_override-val :lambda-list '(m))
(cl:defmethod fan_override-val ((m <SystemControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:fan_override-val is deprecated.  Use themis_msgs-msg:fan_override instead.")
  (fan_override m))

(cl:ensure-generic-function 'generator-val :lambda-list '(m))
(cl:defmethod generator-val ((m <SystemControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:generator-val is deprecated.  Use themis_msgs-msg:generator instead.")
  (generator m))

(cl:ensure-generic-function 'work_lights-val :lambda-list '(m))
(cl:defmethod work_lights-val ((m <SystemControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:work_lights-val is deprecated.  Use themis_msgs-msg:work_lights instead.")
  (work_lights m))

(cl:ensure-generic-function 'signal_lights-val :lambda-list '(m))
(cl:defmethod signal_lights-val ((m <SystemControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:signal_lights-val is deprecated.  Use themis_msgs-msg:signal_lights instead.")
  (signal_lights m))

(cl:ensure-generic-function 'imd_override-val :lambda-list '(m))
(cl:defmethod imd_override-val ((m <SystemControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:imd_override-val is deprecated.  Use themis_msgs-msg:imd_override instead.")
  (imd_override m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SystemControl>) ostream)
  "Serializes a message object of type '<SystemControl>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'high_voltage) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'fan_override) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'generator) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'work_lights) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'signal_lights) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'imd_override) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SystemControl>) istream)
  "Deserializes a message object of type '<SystemControl>"
    (cl:setf (cl:slot-value msg 'high_voltage) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'fan_override) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'generator) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'work_lights) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'signal_lights) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'imd_override) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SystemControl>)))
  "Returns string type for a message object of type '<SystemControl>"
  "themis_msgs/SystemControl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SystemControl)))
  "Returns string type for a message object of type 'SystemControl"
  "themis_msgs/SystemControl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SystemControl>)))
  "Returns md5sum for a message object of type '<SystemControl>"
  "c55c2f064ee67c58e2e454e066c5cc98")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SystemControl)))
  "Returns md5sum for a message object of type 'SystemControl"
  "c55c2f064ee67c58e2e454e066c5cc98")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SystemControl>)))
  "Returns full string definition for message of type '<SystemControl>"
  (cl:format cl:nil "bool high_voltage~%bool fan_override~%bool generator~%bool work_lights~%bool signal_lights~%bool imd_override~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SystemControl)))
  "Returns full string definition for message of type 'SystemControl"
  (cl:format cl:nil "bool high_voltage~%bool fan_override~%bool generator~%bool work_lights~%bool signal_lights~%bool imd_override~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SystemControl>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SystemControl>))
  "Converts a ROS message object to a list"
  (cl:list 'SystemControl
    (cl:cons ':high_voltage (high_voltage msg))
    (cl:cons ':fan_override (fan_override msg))
    (cl:cons ':generator (generator msg))
    (cl:cons ':work_lights (work_lights msg))
    (cl:cons ':signal_lights (signal_lights msg))
    (cl:cons ':imd_override (imd_override msg))
))
