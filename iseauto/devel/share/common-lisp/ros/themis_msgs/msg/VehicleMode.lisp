; Auto-generated. Do not edit!


(cl:in-package themis_msgs-msg)


;//! \htmlinclude VehicleMode.msg.html

(cl:defclass <VehicleMode> (roslisp-msg-protocol:ros-message)
  ((vehicle
    :reader vehicle
    :initarg :vehicle
    :type themis_msgs-msg:State
    :initform (cl:make-instance 'themis_msgs-msg:State))
   (generator
    :reader generator
    :initarg :generator
    :type themis_msgs-msg:State
    :initform (cl:make-instance 'themis_msgs-msg:State))
   (speed
    :reader speed
    :initarg :speed
    :type themis_msgs-msg:State
    :initform (cl:make-instance 'themis_msgs-msg:State))
   (brake
    :reader brake
    :initarg :brake
    :type themis_msgs-msg:State
    :initform (cl:make-instance 'themis_msgs-msg:State))
   (charge
    :reader charge
    :initarg :charge
    :type themis_msgs-msg:State
    :initform (cl:make-instance 'themis_msgs-msg:State)))
)

(cl:defclass VehicleMode (<VehicleMode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleMode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleMode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name themis_msgs-msg:<VehicleMode> is deprecated: use themis_msgs-msg:VehicleMode instead.")))

(cl:ensure-generic-function 'vehicle-val :lambda-list '(m))
(cl:defmethod vehicle-val ((m <VehicleMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:vehicle-val is deprecated.  Use themis_msgs-msg:vehicle instead.")
  (vehicle m))

(cl:ensure-generic-function 'generator-val :lambda-list '(m))
(cl:defmethod generator-val ((m <VehicleMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:generator-val is deprecated.  Use themis_msgs-msg:generator instead.")
  (generator m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <VehicleMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:speed-val is deprecated.  Use themis_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'brake-val :lambda-list '(m))
(cl:defmethod brake-val ((m <VehicleMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:brake-val is deprecated.  Use themis_msgs-msg:brake instead.")
  (brake m))

(cl:ensure-generic-function 'charge-val :lambda-list '(m))
(cl:defmethod charge-val ((m <VehicleMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:charge-val is deprecated.  Use themis_msgs-msg:charge instead.")
  (charge m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleMode>) ostream)
  "Serializes a message object of type '<VehicleMode>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vehicle) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'generator) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'speed) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'brake) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'charge) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleMode>) istream)
  "Deserializes a message object of type '<VehicleMode>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vehicle) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'generator) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'speed) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'brake) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'charge) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleMode>)))
  "Returns string type for a message object of type '<VehicleMode>"
  "themis_msgs/VehicleMode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleMode)))
  "Returns string type for a message object of type 'VehicleMode"
  "themis_msgs/VehicleMode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleMode>)))
  "Returns md5sum for a message object of type '<VehicleMode>"
  "565e3240233646eab93d6c6a27f36044")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleMode)))
  "Returns md5sum for a message object of type 'VehicleMode"
  "565e3240233646eab93d6c6a27f36044")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleMode>)))
  "Returns full string definition for message of type '<VehicleMode>"
  (cl:format cl:nil "State vehicle~%State generator~%State speed~%State brake~%State charge~%~%================================================================================~%MSG: themis_msgs/State~%uint16 id~%string desc~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleMode)))
  "Returns full string definition for message of type 'VehicleMode"
  (cl:format cl:nil "State vehicle~%State generator~%State speed~%State brake~%State charge~%~%================================================================================~%MSG: themis_msgs/State~%uint16 id~%string desc~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleMode>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vehicle))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'generator))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'speed))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'brake))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'charge))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleMode>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleMode
    (cl:cons ':vehicle (vehicle msg))
    (cl:cons ':generator (generator msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':brake (brake msg))
    (cl:cons ':charge (charge msg))
))
