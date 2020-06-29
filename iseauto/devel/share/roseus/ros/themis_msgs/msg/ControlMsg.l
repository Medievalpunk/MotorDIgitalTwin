;; Auto-generated. Do not edit!


(when (boundp 'themis_msgs::ControlMsg)
  (if (not (find-package "THEMIS_MSGS"))
    (make-package "THEMIS_MSGS"))
  (shadow 'ControlMsg (find-package "THEMIS_MSGS")))
(unless (find-package "THEMIS_MSGS::CONTROLMSG")
  (make-package "THEMIS_MSGS::CONTROLMSG"))

(in-package "ROS")
;;//! \htmlinclude ControlMsg.msg.html


(defclass themis_msgs::ControlMsg
  :super ros::object
  :slots (_timestamp _drive _system _mode ))

(defmethod themis_msgs::ControlMsg
  (:init
   (&key
    ((:timestamp __timestamp) 0)
    ((:drive __drive) (instance themis_msgs::DriveControl :init))
    ((:system __system) (instance themis_msgs::SystemControl :init))
    ((:mode __mode) (instance themis_msgs::ModeControl :init))
    )
   (send-super :init)
   (setq _timestamp (round __timestamp))
   (setq _drive __drive)
   (setq _system __system)
   (setq _mode __mode)
   self)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:drive
   (&rest __drive)
   (if (keywordp (car __drive))
       (send* _drive __drive)
     (progn
       (if __drive (setq _drive (car __drive)))
       _drive)))
  (:system
   (&rest __system)
   (if (keywordp (car __system))
       (send* _system __system)
     (progn
       (if __system (setq _system (car __system)))
       _system)))
  (:mode
   (&rest __mode)
   (if (keywordp (car __mode))
       (send* _mode __mode)
     (progn
       (if __mode (setq _mode (car __mode)))
       _mode)))
  (:serialization-length
   ()
   (+
    ;; uint64 _timestamp
    8
    ;; themis_msgs/DriveControl _drive
    (send _drive :serialization-length)
    ;; themis_msgs/SystemControl _system
    (send _system :serialization-length)
    ;; themis_msgs/ModeControl _mode
    (send _mode :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _timestamp
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _timestamp (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _timestamp) (= (length (_timestamp . bv)) 2)) ;; bignum
              (write-long (ash (elt (_timestamp . bv) 0) 0) s)
              (write-long (ash (elt (_timestamp . bv) 1) -1) s))
             ((and (class _timestamp) (= (length (_timestamp . bv)) 1)) ;; big1
              (write-long (elt (_timestamp . bv) 0) s)
              (write-long (if (>= _timestamp 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _timestamp s)(write-long (if (>= _timestamp 0) 0 #xffffffff) s)))
     ;; themis_msgs/DriveControl _drive
       (send _drive :serialize s)
     ;; themis_msgs/SystemControl _system
       (send _system :serialize s)
     ;; themis_msgs/ModeControl _mode
       (send _mode :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _timestamp
     
#+(or :alpha :irix6 :x86_64)
      (setf _timestamp (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _timestamp (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; themis_msgs/DriveControl _drive
     (send _drive :deserialize buf ptr-) (incf ptr- (send _drive :serialization-length))
   ;; themis_msgs/SystemControl _system
     (send _system :deserialize buf ptr-) (incf ptr- (send _system :serialization-length))
   ;; themis_msgs/ModeControl _mode
     (send _mode :deserialize buf ptr-) (incf ptr- (send _mode :serialization-length))
   ;;
   self)
  )

(setf (get themis_msgs::ControlMsg :md5sum-) "eaa6a2d954fb548e6a569f42edcfb266")
(setf (get themis_msgs::ControlMsg :datatype-) "themis_msgs/ControlMsg")
(setf (get themis_msgs::ControlMsg :definition-)
      "uint64 timestamp
DriveControl drive
SystemControl system
ModeControl mode

================================================================================
MSG: themis_msgs/DriveControl
bool enable
float32 x_axis
float32 y_axis
bool tank_mode

================================================================================
MSG: themis_msgs/SystemControl
bool high_voltage
bool fan_override
bool generator
bool work_lights
bool signal_lights
bool imd_override

================================================================================
MSG: themis_msgs/ModeControl
uint8 vehicle
uint8 generator
uint8 speed
uint8 brake
uint8 charge

")



(provide :themis_msgs/ControlMsg "eaa6a2d954fb548e6a569f42edcfb266")


