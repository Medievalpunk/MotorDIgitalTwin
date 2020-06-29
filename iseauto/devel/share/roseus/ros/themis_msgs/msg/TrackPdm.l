;; Auto-generated. Do not edit!


(when (boundp 'themis_msgs::TrackPdm)
  (if (not (find-package "THEMIS_MSGS"))
    (make-package "THEMIS_MSGS"))
  (shadow 'TrackPdm (find-package "THEMIS_MSGS")))
(unless (find-package "THEMIS_MSGS::TRACKPDM")
  (make-package "THEMIS_MSGS::TRACKPDM"))

(in-package "ROS")
;;//! \htmlinclude TrackPdm.msg.html


(defclass themis_msgs::TrackPdm
  :super ros::object
  :slots (_track_coolant_temp _brake_status ))

(defmethod themis_msgs::TrackPdm
  (:init
   (&key
    ((:track_coolant_temp __track_coolant_temp) 0.0)
    ((:brake_status __brake_status) nil)
    )
   (send-super :init)
   (setq _track_coolant_temp (float __track_coolant_temp))
   (setq _brake_status __brake_status)
   self)
  (:track_coolant_temp
   (&optional __track_coolant_temp)
   (if __track_coolant_temp (setq _track_coolant_temp __track_coolant_temp)) _track_coolant_temp)
  (:brake_status
   (&optional __brake_status)
   (if __brake_status (setq _brake_status __brake_status)) _brake_status)
  (:serialization-length
   ()
   (+
    ;; float32 _track_coolant_temp
    4
    ;; bool _brake_status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _track_coolant_temp
       (sys::poke _track_coolant_temp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _brake_status
       (if _brake_status (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _track_coolant_temp
     (setq _track_coolant_temp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _brake_status
     (setq _brake_status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get themis_msgs::TrackPdm :md5sum-) "65d433095f8620e2fabfbc1e2f848f60")
(setf (get themis_msgs::TrackPdm :datatype-) "themis_msgs/TrackPdm")
(setf (get themis_msgs::TrackPdm :definition-)
      "float32 track_coolant_temp
bool brake_status

")



(provide :themis_msgs/TrackPdm "65d433095f8620e2fabfbc1e2f848f60")


