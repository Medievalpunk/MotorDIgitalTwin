; Auto-generated. Do not edit!


(cl:in-package ecu_msgs-msg)


;//! \htmlinclude ECUStatus.msg.html

(cl:defclass <ECUStatus> (roslisp-msg-protocol:ros-message)
  ((sensors
    :reader sensors
    :initarg :sensors
    :type cl:boolean
    :initform cl:nil)
   (drive
    :reader drive
    :initarg :drive
    :type cl:boolean
    :initform cl:nil)
   (battery
    :reader battery
    :initarg :battery
    :type cl:string
    :initform "")
   (running
    :reader running
    :initarg :running
    :type cl:boolean
    :initform cl:nil)
   (quit
    :reader quit
    :initarg :quit
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ECUStatus (<ECUStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ECUStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ECUStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ecu_msgs-msg:<ECUStatus> is deprecated: use ecu_msgs-msg:ECUStatus instead.")))

(cl:ensure-generic-function 'sensors-val :lambda-list '(m))
(cl:defmethod sensors-val ((m <ECUStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ecu_msgs-msg:sensors-val is deprecated.  Use ecu_msgs-msg:sensors instead.")
  (sensors m))

(cl:ensure-generic-function 'drive-val :lambda-list '(m))
(cl:defmethod drive-val ((m <ECUStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ecu_msgs-msg:drive-val is deprecated.  Use ecu_msgs-msg:drive instead.")
  (drive m))

(cl:ensure-generic-function 'battery-val :lambda-list '(m))
(cl:defmethod battery-val ((m <ECUStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ecu_msgs-msg:battery-val is deprecated.  Use ecu_msgs-msg:battery instead.")
  (battery m))

(cl:ensure-generic-function 'running-val :lambda-list '(m))
(cl:defmethod running-val ((m <ECUStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ecu_msgs-msg:running-val is deprecated.  Use ecu_msgs-msg:running instead.")
  (running m))

(cl:ensure-generic-function 'quit-val :lambda-list '(m))
(cl:defmethod quit-val ((m <ECUStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ecu_msgs-msg:quit-val is deprecated.  Use ecu_msgs-msg:quit instead.")
  (quit m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ECUStatus>) ostream)
  "Serializes a message object of type '<ECUStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'sensors) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'drive) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'battery))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'battery))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'running) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'quit) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ECUStatus>) istream)
  "Deserializes a message object of type '<ECUStatus>"
    (cl:setf (cl:slot-value msg 'sensors) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'drive) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'battery) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'battery) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'running) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'quit) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ECUStatus>)))
  "Returns string type for a message object of type '<ECUStatus>"
  "ecu_msgs/ECUStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ECUStatus)))
  "Returns string type for a message object of type 'ECUStatus"
  "ecu_msgs/ECUStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ECUStatus>)))
  "Returns md5sum for a message object of type '<ECUStatus>"
  "356fcc37a358f36076bdf62f35f15a0d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ECUStatus)))
  "Returns md5sum for a message object of type 'ECUStatus"
  "356fcc37a358f36076bdf62f35f15a0d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ECUStatus>)))
  "Returns full string definition for message of type '<ECUStatus>"
  (cl:format cl:nil "bool sensors~%bool drive~%string battery~%bool running~%bool quit~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ECUStatus)))
  "Returns full string definition for message of type 'ECUStatus"
  (cl:format cl:nil "bool sensors~%bool drive~%string battery~%bool running~%bool quit~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ECUStatus>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'battery))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ECUStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'ECUStatus
    (cl:cons ':sensors (sensors msg))
    (cl:cons ':drive (drive msg))
    (cl:cons ':battery (battery msg))
    (cl:cons ':running (running msg))
    (cl:cons ':quit (quit msg))
))
