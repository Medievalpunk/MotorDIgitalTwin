; Auto-generated. Do not edit!


(cl:in-package themis_msgs-msg)


;//! \htmlinclude ModeControl.msg.html

(cl:defclass <ModeControl> (roslisp-msg-protocol:ros-message)
  ((vehicle
    :reader vehicle
    :initarg :vehicle
    :type cl:fixnum
    :initform 0)
   (generator
    :reader generator
    :initarg :generator
    :type cl:fixnum
    :initform 0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:fixnum
    :initform 0)
   (brake
    :reader brake
    :initarg :brake
    :type cl:fixnum
    :initform 0)
   (charge
    :reader charge
    :initarg :charge
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ModeControl (<ModeControl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ModeControl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ModeControl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name themis_msgs-msg:<ModeControl> is deprecated: use themis_msgs-msg:ModeControl instead.")))

(cl:ensure-generic-function 'vehicle-val :lambda-list '(m))
(cl:defmethod vehicle-val ((m <ModeControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:vehicle-val is deprecated.  Use themis_msgs-msg:vehicle instead.")
  (vehicle m))

(cl:ensure-generic-function 'generator-val :lambda-list '(m))
(cl:defmethod generator-val ((m <ModeControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:generator-val is deprecated.  Use themis_msgs-msg:generator instead.")
  (generator m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <ModeControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:speed-val is deprecated.  Use themis_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'brake-val :lambda-list '(m))
(cl:defmethod brake-val ((m <ModeControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:brake-val is deprecated.  Use themis_msgs-msg:brake instead.")
  (brake m))

(cl:ensure-generic-function 'charge-val :lambda-list '(m))
(cl:defmethod charge-val ((m <ModeControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:charge-val is deprecated.  Use themis_msgs-msg:charge instead.")
  (charge m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ModeControl>) ostream)
  "Serializes a message object of type '<ModeControl>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicle)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'generator)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'brake)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'charge)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ModeControl>) istream)
  "Deserializes a message object of type '<ModeControl>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicle)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'generator)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'brake)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'charge)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ModeControl>)))
  "Returns string type for a message object of type '<ModeControl>"
  "themis_msgs/ModeControl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ModeControl)))
  "Returns string type for a message object of type 'ModeControl"
  "themis_msgs/ModeControl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ModeControl>)))
  "Returns md5sum for a message object of type '<ModeControl>"
  "ad5484922684f97570b593292ada2bf9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ModeControl)))
  "Returns md5sum for a message object of type 'ModeControl"
  "ad5484922684f97570b593292ada2bf9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ModeControl>)))
  "Returns full string definition for message of type '<ModeControl>"
  (cl:format cl:nil "uint8 vehicle~%uint8 generator~%uint8 speed~%uint8 brake~%uint8 charge~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ModeControl)))
  "Returns full string definition for message of type 'ModeControl"
  (cl:format cl:nil "uint8 vehicle~%uint8 generator~%uint8 speed~%uint8 brake~%uint8 charge~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ModeControl>))
  (cl:+ 0
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ModeControl>))
  "Converts a ROS message object to a list"
  (cl:list 'ModeControl
    (cl:cons ':vehicle (vehicle msg))
    (cl:cons ':generator (generator msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':brake (brake msg))
    (cl:cons ':charge (charge msg))
))
