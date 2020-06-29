;; Auto-generated. Do not edit!


(when (boundp 'ecu_msgs::VehicleControl)
  (if (not (find-package "ECU_MSGS"))
    (make-package "ECU_MSGS"))
  (shadow 'VehicleControl (find-package "ECU_MSGS")))
(unless (find-package "ECU_MSGS::VEHICLECONTROL")
  (make-package "ECU_MSGS::VEHICLECONTROL"))

(in-package "ROS")
;;//! \htmlinclude VehicleControl.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ecu_msgs::VehicleControl
  :super ros::object
  :slots (_header _track_right _track_left _breaks _lights ))

(defmethod ecu_msgs::VehicleControl
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:track_right __track_right) (instance ecu_msgs::TrackControl :init))
    ((:track_left __track_left) (instance ecu_msgs::TrackControl :init))
    ((:breaks __breaks) nil)
    ((:lights __lights) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _track_right __track_right)
   (setq _track_left __track_left)
   (setq _breaks __breaks)
   (setq _lights __lights)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:track_right
   (&rest __track_right)
   (if (keywordp (car __track_right))
       (send* _track_right __track_right)
     (progn
       (if __track_right (setq _track_right (car __track_right)))
       _track_right)))
  (:track_left
   (&rest __track_left)
   (if (keywordp (car __track_left))
       (send* _track_left __track_left)
     (progn
       (if __track_left (setq _track_left (car __track_left)))
       _track_left)))
  (:breaks
   (&optional __breaks)
   (if __breaks (setq _breaks __breaks)) _breaks)
  (:lights
   (&optional __lights)
   (if __lights (setq _lights __lights)) _lights)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; ecu_msgs/TrackControl _track_right
    (send _track_right :serialization-length)
    ;; ecu_msgs/TrackControl _track_left
    (send _track_left :serialization-length)
    ;; bool _breaks
    1
    ;; bool _lights
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; ecu_msgs/TrackControl _track_right
       (send _track_right :serialize s)
     ;; ecu_msgs/TrackControl _track_left
       (send _track_left :serialize s)
     ;; bool _breaks
       (if _breaks (write-byte -1 s) (write-byte 0 s))
     ;; bool _lights
       (if _lights (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; ecu_msgs/TrackControl _track_right
     (send _track_right :deserialize buf ptr-) (incf ptr- (send _track_right :serialization-length))
   ;; ecu_msgs/TrackControl _track_left
     (send _track_left :deserialize buf ptr-) (incf ptr- (send _track_left :serialization-length))
   ;; bool _breaks
     (setq _breaks (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _lights
     (setq _lights (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ecu_msgs::VehicleControl :md5sum-) "c8b5113bd5fc6dbf622ebbca4f18f295")
(setf (get ecu_msgs::VehicleControl :datatype-) "ecu_msgs/VehicleControl")
(setf (get ecu_msgs::VehicleControl :definition-)
      "Header header
TrackControl track_right
TrackControl track_left
bool breaks
bool lights

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: ecu_msgs/TrackControl
float64 speed
bool break_status

")



(provide :ecu_msgs/VehicleControl "c8b5113bd5fc6dbf622ebbca4f18f295")


