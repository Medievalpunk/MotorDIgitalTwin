;; Auto-generated. Do not edit!


(when (boundp 'ecu_msgs::SetFloat)
  (if (not (find-package "ECU_MSGS"))
    (make-package "ECU_MSGS"))
  (shadow 'SetFloat (find-package "ECU_MSGS")))
(unless (find-package "ECU_MSGS::SETFLOAT")
  (make-package "ECU_MSGS::SETFLOAT"))
(unless (find-package "ECU_MSGS::SETFLOATREQUEST")
  (make-package "ECU_MSGS::SETFLOATREQUEST"))
(unless (find-package "ECU_MSGS::SETFLOATRESPONSE")
  (make-package "ECU_MSGS::SETFLOATRESPONSE"))

(in-package "ROS")





(defclass ecu_msgs::SetFloatRequest
  :super ros::object
  :slots (_value ))

(defmethod ecu_msgs::SetFloatRequest
  (:init
   (&key
    ((:value __value) 0.0)
    )
   (send-super :init)
   (setq _value (float __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; float64 _value
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _value
       (sys::poke _value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _value
     (setq _value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass ecu_msgs::SetFloatResponse
  :super ros::object
  :slots (_result _message ))

(defmethod ecu_msgs::SetFloatResponse
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

(defclass ecu_msgs::SetFloat
  :super ros::object
  :slots ())

(setf (get ecu_msgs::SetFloat :md5sum-) "38182d080345fe1cb5b538699e1a64ec")
(setf (get ecu_msgs::SetFloat :datatype-) "ecu_msgs/SetFloat")
(setf (get ecu_msgs::SetFloat :request) ecu_msgs::SetFloatRequest)
(setf (get ecu_msgs::SetFloat :response) ecu_msgs::SetFloatResponse)

(defmethod ecu_msgs::SetFloatRequest
  (:response () (instance ecu_msgs::SetFloatResponse :init)))

(setf (get ecu_msgs::SetFloatRequest :md5sum-) "38182d080345fe1cb5b538699e1a64ec")
(setf (get ecu_msgs::SetFloatRequest :datatype-) "ecu_msgs/SetFloatRequest")
(setf (get ecu_msgs::SetFloatRequest :definition-)
      "float64 value
---
float64 result
string message

")

(setf (get ecu_msgs::SetFloatResponse :md5sum-) "38182d080345fe1cb5b538699e1a64ec")
(setf (get ecu_msgs::SetFloatResponse :datatype-) "ecu_msgs/SetFloatResponse")
(setf (get ecu_msgs::SetFloatResponse :definition-)
      "float64 value
---
float64 result
string message

")



(provide :ecu_msgs/SetFloat "38182d080345fe1cb5b538699e1a64ec")


