; Auto-generated. Do not edit!


(cl:in-package themis_msgs-msg)


;//! \htmlinclude Vehicle.msg.html

(cl:defclass <Vehicle> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type themis_msgs-msg:State
    :initform (cl:make-instance 'themis_msgs-msg:State))
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (drive_state
    :reader drive_state
    :initarg :drive_state
    :type themis_msgs-msg:State
    :initform (cl:make-instance 'themis_msgs-msg:State))
   (brake_feedback
    :reader brake_feedback
    :initarg :brake_feedback
    :type cl:fixnum
    :initform 0)
   (imd_error
    :reader imd_error
    :initarg :imd_error
    :type cl:boolean
    :initform cl:nil)
   (mode
    :reader mode
    :initarg :mode
    :type themis_msgs-msg:VehicleMode
    :initform (cl:make-instance 'themis_msgs-msg:VehicleMode)))
)

(cl:defclass Vehicle (<Vehicle>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Vehicle>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Vehicle)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name themis_msgs-msg:<Vehicle> is deprecated: use themis_msgs-msg:Vehicle instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <Vehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:state-val is deprecated.  Use themis_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <Vehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:speed-val is deprecated.  Use themis_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'drive_state-val :lambda-list '(m))
(cl:defmethod drive_state-val ((m <Vehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:drive_state-val is deprecated.  Use themis_msgs-msg:drive_state instead.")
  (drive_state m))

(cl:ensure-generic-function 'brake_feedback-val :lambda-list '(m))
(cl:defmethod brake_feedback-val ((m <Vehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:brake_feedback-val is deprecated.  Use themis_msgs-msg:brake_feedback instead.")
  (brake_feedback m))

(cl:ensure-generic-function 'imd_error-val :lambda-list '(m))
(cl:defmethod imd_error-val ((m <Vehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:imd_error-val is deprecated.  Use themis_msgs-msg:imd_error instead.")
  (imd_error m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <Vehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader themis_msgs-msg:mode-val is deprecated.  Use themis_msgs-msg:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Vehicle>) ostream)
  "Serializes a message object of type '<Vehicle>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'drive_state) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'brake_feedback)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'imd_error) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mode) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Vehicle>) istream)
  "Deserializes a message object of type '<Vehicle>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'drive_state) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'brake_feedback)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'imd_error) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mode) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Vehicle>)))
  "Returns string type for a message object of type '<Vehicle>"
  "themis_msgs/Vehicle")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Vehicle)))
  "Returns string type for a message object of type 'Vehicle"
  "themis_msgs/Vehicle")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Vehicle>)))
  "Returns md5sum for a message object of type '<Vehicle>"
  "f2f224fad34514175362e87aeae2016a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Vehicle)))
  "Returns md5sum for a message object of type 'Vehicle"
  "f2f224fad34514175362e87aeae2016a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Vehicle>)))
  "Returns full string definition for message of type '<Vehicle>"
  (cl:format cl:nil "State state~%float32 speed~%State drive_state~%uint8 brake_feedback~%bool imd_error~%VehicleMode mode~%~%================================================================================~%MSG: themis_msgs/State~%uint16 id~%string desc~%~%================================================================================~%MSG: themis_msgs/VehicleMode~%State vehicle~%State generator~%State speed~%State brake~%State charge~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Vehicle)))
  "Returns full string definition for message of type 'Vehicle"
  (cl:format cl:nil "State state~%float32 speed~%State drive_state~%uint8 brake_feedback~%bool imd_error~%VehicleMode mode~%~%================================================================================~%MSG: themis_msgs/State~%uint16 id~%string desc~%~%================================================================================~%MSG: themis_msgs/VehicleMode~%State vehicle~%State generator~%State speed~%State brake~%State charge~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Vehicle>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'drive_state))
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mode))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Vehicle>))
  "Converts a ROS message object to a list"
  (cl:list 'Vehicle
    (cl:cons ':state (state msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':drive_state (drive_state msg))
    (cl:cons ':brake_feedback (brake_feedback msg))
    (cl:cons ':imd_error (imd_error msg))
    (cl:cons ':mode (mode msg))
))
