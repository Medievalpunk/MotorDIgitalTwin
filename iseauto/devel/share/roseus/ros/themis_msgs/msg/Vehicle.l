;; Auto-generated. Do not edit!


(when (boundp 'themis_msgs::Vehicle)
  (if (not (find-package "THEMIS_MSGS"))
    (make-package "THEMIS_MSGS"))
  (shadow 'Vehicle (find-package "THEMIS_MSGS")))
(unless (find-package "THEMIS_MSGS::VEHICLE")
  (make-package "THEMIS_MSGS::VEHICLE"))

(in-package "ROS")
;;//! \htmlinclude Vehicle.msg.html


(defclass themis_msgs::Vehicle
  :super ros::object
  :slots (_state _speed _drive_state _brake_feedback _imd_error _mode ))

(defmethod themis_msgs::Vehicle
  (:init
   (&key
    ((:state __state) (instance themis_msgs::State :init))
    ((:speed __speed) 0.0)
    ((:drive_state __drive_state) (instance themis_msgs::State :init))
    ((:brake_feedback __brake_feedback) 0)
    ((:imd_error __imd_error) nil)
    ((:mode __mode) (instance themis_msgs::VehicleMode :init))
    )
   (send-super :init)
   (setq _state __state)
   (setq _speed (float __speed))
   (setq _drive_state __drive_state)
   (setq _brake_feedback (round __brake_feedback))
   (setq _imd_error __imd_error)
   (setq _mode __mode)
   self)
  (:state
   (&rest __state)
   (if (keywordp (car __state))
       (send* _state __state)
     (progn
       (if __state (setq _state (car __state)))
       _state)))
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:drive_state
   (&rest __drive_state)
   (if (keywordp (car __drive_state))
       (send* _drive_state __drive_state)
     (progn
       (if __drive_state (setq _drive_state (car __drive_state)))
       _drive_state)))
  (:brake_feedback
   (&optional __brake_feedback)
   (if __brake_feedback (setq _brake_feedback __brake_feedback)) _brake_feedback)
  (:imd_error
   (&optional __imd_error)
   (if __imd_error (setq _imd_error __imd_error)) _imd_error)
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
    ;; themis_msgs/State _state
    (send _state :serialization-length)
    ;; float32 _speed
    4
    ;; themis_msgs/State _drive_state
    (send _drive_state :serialization-length)
    ;; uint8 _brake_feedback
    1
    ;; bool _imd_error
    1
    ;; themis_msgs/VehicleMode _mode
    (send _mode :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; themis_msgs/State _state
       (send _state :serialize s)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; themis_msgs/State _drive_state
       (send _drive_state :serialize s)
     ;; uint8 _brake_feedback
       (write-byte _brake_feedback s)
     ;; bool _imd_error
       (if _imd_error (write-byte -1 s) (write-byte 0 s))
     ;; themis_msgs/VehicleMode _mode
       (send _mode :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; themis_msgs/State _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; themis_msgs/State _drive_state
     (send _drive_state :deserialize buf ptr-) (incf ptr- (send _drive_state :serialization-length))
   ;; uint8 _brake_feedback
     (setq _brake_feedback (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _imd_error
     (setq _imd_error (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; themis_msgs/VehicleMode _mode
     (send _mode :deserialize buf ptr-) (incf ptr- (send _mode :serialization-length))
   ;;
   self)
  )

(setf (get themis_msgs::Vehicle :md5sum-) "f2f224fad34514175362e87aeae2016a")
(setf (get themis_msgs::Vehicle :datatype-) "themis_msgs/Vehicle")
(setf (get themis_msgs::Vehicle :definition-)
      "State state
float32 speed
State drive_state
uint8 brake_feedback
bool imd_error
VehicleMode mode

================================================================================
MSG: themis_msgs/State
uint16 id
string desc

================================================================================
MSG: themis_msgs/VehicleMode
State vehicle
State generator
State speed
State brake
State charge

")



(provide :themis_msgs/Vehicle "f2f224fad34514175362e87aeae2016a")


