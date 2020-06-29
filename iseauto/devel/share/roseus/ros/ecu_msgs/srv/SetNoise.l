;; Auto-generated. Do not edit!


(when (boundp 'ecu_msgs::SetNoise)
  (if (not (find-package "ECU_MSGS"))
    (make-package "ECU_MSGS"))
  (shadow 'SetNoise (find-package "ECU_MSGS")))
(unless (find-package "ECU_MSGS::SETNOISE")
  (make-package "ECU_MSGS::SETNOISE"))
(unless (find-package "ECU_MSGS::SETNOISEREQUEST")
  (make-package "ECU_MSGS::SETNOISEREQUEST"))
(unless (find-package "ECU_MSGS::SETNOISERESPONSE")
  (make-package "ECU_MSGS::SETNOISERESPONSE"))

(in-package "ROS")





(defclass ecu_msgs::SetNoiseRequest
  :super ros::object
  :slots (_position _angle _velocity ))

(defmethod ecu_msgs::SetNoiseRequest
  (:init
   (&key
    ((:position __position) 0.0)
    ((:angle __angle) 0.0)
    ((:velocity __velocity) 0.0)
    )
   (send-super :init)
   (setq _position (float __position))
   (setq _angle (float __angle))
   (setq _velocity (float __velocity))
   self)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:serialization-length
   ()
   (+
    ;; float64 _position
    8
    ;; float64 _angle
    8
    ;; float64 _velocity
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _position
       (sys::poke _position (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _position
     (setq _position (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angle
     (setq _angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _velocity
     (setq _velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass ecu_msgs::SetNoiseResponse
  :super ros::object
  :slots (_result _message ))

(defmethod ecu_msgs::SetNoiseResponse
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

(defclass ecu_msgs::SetNoise
  :super ros::object
  :slots ())

(setf (get ecu_msgs::SetNoise :md5sum-) "df0f4993ee2769576c79259787020080")
(setf (get ecu_msgs::SetNoise :datatype-) "ecu_msgs/SetNoise")
(setf (get ecu_msgs::SetNoise :request) ecu_msgs::SetNoiseRequest)
(setf (get ecu_msgs::SetNoise :response) ecu_msgs::SetNoiseResponse)

(defmethod ecu_msgs::SetNoiseRequest
  (:response () (instance ecu_msgs::SetNoiseResponse :init)))

(setf (get ecu_msgs::SetNoiseRequest :md5sum-) "df0f4993ee2769576c79259787020080")
(setf (get ecu_msgs::SetNoiseRequest :datatype-) "ecu_msgs/SetNoiseRequest")
(setf (get ecu_msgs::SetNoiseRequest :definition-)
      "float64 position
float64 angle
float64 velocity
---
float64 result
string message

")

(setf (get ecu_msgs::SetNoiseResponse :md5sum-) "df0f4993ee2769576c79259787020080")
(setf (get ecu_msgs::SetNoiseResponse :datatype-) "ecu_msgs/SetNoiseResponse")
(setf (get ecu_msgs::SetNoiseResponse :definition-)
      "float64 position
float64 angle
float64 velocity
---
float64 result
string message

")



(provide :ecu_msgs/SetNoise "df0f4993ee2769576c79259787020080")


