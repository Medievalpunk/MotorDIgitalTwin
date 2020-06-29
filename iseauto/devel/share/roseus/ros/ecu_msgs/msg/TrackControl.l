;; Auto-generated. Do not edit!


(when (boundp 'ecu_msgs::TrackControl)
  (if (not (find-package "ECU_MSGS"))
    (make-package "ECU_MSGS"))
  (shadow 'TrackControl (find-package "ECU_MSGS")))
(unless (find-package "ECU_MSGS::TRACKCONTROL")
  (make-package "ECU_MSGS::TRACKCONTROL"))

(in-package "ROS")
;;//! \htmlinclude TrackControl.msg.html


(defclass ecu_msgs::TrackControl
  :super ros::object
  :slots (_speed _break_status ))

(defmethod ecu_msgs::TrackControl
  (:init
   (&key
    ((:speed __speed) 0.0)
    ((:break_status __break_status) nil)
    )
   (send-super :init)
   (setq _speed (float __speed))
   (setq _break_status __break_status)
   self)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:break_status
   (&optional __break_status)
   (if __break_status (setq _break_status __break_status)) _break_status)
  (:serialization-length
   ()
   (+
    ;; float64 _speed
    8
    ;; bool _break_status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _break_status
       (if _break_status (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _speed
     (setq _speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _break_status
     (setq _break_status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ecu_msgs::TrackControl :md5sum-) "64fde1397f518d8d0c581337f6291249")
(setf (get ecu_msgs::TrackControl :datatype-) "ecu_msgs/TrackControl")
(setf (get ecu_msgs::TrackControl :definition-)
      "float64 speed
bool break_status

")



(provide :ecu_msgs/TrackControl "64fde1397f518d8d0c581337f6291249")


