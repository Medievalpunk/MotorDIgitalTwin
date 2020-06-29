;; Auto-generated. Do not edit!


(when (boundp 'ecu_msgs::SetNoiseCmdVel)
  (if (not (find-package "ECU_MSGS"))
    (make-package "ECU_MSGS"))
  (shadow 'SetNoiseCmdVel (find-package "ECU_MSGS")))
(unless (find-package "ECU_MSGS::SETNOISECMDVEL")
  (make-package "ECU_MSGS::SETNOISECMDVEL"))
(unless (find-package "ECU_MSGS::SETNOISECMDVELREQUEST")
  (make-package "ECU_MSGS::SETNOISECMDVELREQUEST"))
(unless (find-package "ECU_MSGS::SETNOISECMDVELRESPONSE")
  (make-package "ECU_MSGS::SETNOISECMDVELRESPONSE"))

(in-package "ROS")





(defclass ecu_msgs::SetNoiseCmdVelRequest
  :super ros::object
  :slots (_linear _angular ))

(defmethod ecu_msgs::SetNoiseCmdVelRequest
  (:init
   (&key
    ((:linear __linear) 0.0)
    ((:angular __angular) 0.0)
    )
   (send-super :init)
   (setq _linear (float __linear))
   (setq _angular (float __angular))
   self)
  (:linear
   (&optional __linear)
   (if __linear (setq _linear __linear)) _linear)
  (:angular
   (&optional __angular)
   (if __angular (setq _angular __angular)) _angular)
  (:serialization-length
   ()
   (+
    ;; float64 _linear
    8
    ;; float64 _angular
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _linear
       (sys::poke _linear (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angular
       (sys::poke _angular (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _linear
     (setq _linear (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angular
     (setq _angular (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass ecu_msgs::SetNoiseCmdVelResponse
  :super ros::object
  :slots (_result _message ))

(defmethod ecu_msgs::SetNoiseCmdVelResponse
  (:init
   (&key
    ((:result __result) 0.0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _result (float __result))
   (setq _message (string __message))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; float64 _result
    8
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _result
       (sys::poke _result (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _result
     (setq _result (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass ecu_msgs::SetNoiseCmdVel
  :super ros::object
  :slots ())

(setf (get ecu_msgs::SetNoiseCmdVel :md5sum-) "d41e247b85cef4fd0ed55934aa9d3071")
(setf (get ecu_msgs::SetNoiseCmdVel :datatype-) "ecu_msgs/SetNoiseCmdVel")
(setf (get ecu_msgs::SetNoiseCmdVel :request) ecu_msgs::SetNoiseCmdVelRequest)
(setf (get ecu_msgs::SetNoiseCmdVel :response) ecu_msgs::SetNoiseCmdVelResponse)

(defmethod ecu_msgs::SetNoiseCmdVelRequest
  (:response () (instance ecu_msgs::SetNoiseCmdVelResponse :init)))

(setf (get ecu_msgs::SetNoiseCmdVelRequest :md5sum-) "d41e247b85cef4fd0ed55934aa9d3071")
(setf (get ecu_msgs::SetNoiseCmdVelRequest :datatype-) "ecu_msgs/SetNoiseCmdVelRequest")
(setf (get ecu_msgs::SetNoiseCmdVelRequest :definition-)
      "float64 linear
float64 angular
---
float64 result
string message

")

(setf (get ecu_msgs::SetNoiseCmdVelResponse :md5sum-) "d41e247b85cef4fd0ed55934aa9d3071")
(setf (get ecu_msgs::SetNoiseCmdVelResponse :datatype-) "ecu_msgs/SetNoiseCmdVelResponse")
(setf (get ecu_msgs::SetNoiseCmdVelResponse :definition-)
      "float64 linear
float64 angular
---
float64 result
string message

")



(provide :ecu_msgs/SetNoiseCmdVel "d41e247b85cef4fd0ed55934aa9d3071")


