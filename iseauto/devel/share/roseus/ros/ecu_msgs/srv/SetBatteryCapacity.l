;; Auto-generated. Do not edit!


(when (boundp 'ecu_msgs::SetBatteryCapacity)
  (if (not (find-package "ECU_MSGS"))
    (make-package "ECU_MSGS"))
  (shadow 'SetBatteryCapacity (find-package "ECU_MSGS")))
(unless (find-package "ECU_MSGS::SETBATTERYCAPACITY")
  (make-package "ECU_MSGS::SETBATTERYCAPACITY"))
(unless (find-package "ECU_MSGS::SETBATTERYCAPACITYREQUEST")
  (make-package "ECU_MSGS::SETBATTERYCAPACITYREQUEST"))
(unless (find-package "ECU_MSGS::SETBATTERYCAPACITYRESPONSE")
  (make-package "ECU_MSGS::SETBATTERYCAPACITYRESPONSE"))

(in-package "ROS")





(defclass ecu_msgs::SetBatteryCapacityRequest
  :super ros::object
  :slots (_capacity ))

(defmethod ecu_msgs::SetBatteryCapacityRequest
  (:init
   (&key
    ((:capacity __capacity) 0.0)
    )
   (send-super :init)
   (setq _capacity (float __capacity))
   self)
  (:capacity
   (&optional __capacity)
   (if __capacity (setq _capacity __capacity)) _capacity)
  (:serialization-length
   ()
   (+
    ;; float64 _capacity
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _capacity
       (sys::poke _capacity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _capacity
     (setq _capacity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass ecu_msgs::SetBatteryCapacityResponse
  :super ros::object
  :slots (_capacity_set _message ))

(defmethod ecu_msgs::SetBatteryCapacityResponse
  (:init
   (&key
    ((:capacity_set __capacity_set) 0.0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _capacity_set (float __capacity_set))
   (setq _message (string __message))
   self)
  (:capacity_set
   (&optional __capacity_set)
   (if __capacity_set (setq _capacity_set __capacity_set)) _capacity_set)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; float64 _capacity_set
    8
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _capacity_set
       (sys::poke _capacity_set (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _capacity_set
     (setq _capacity_set (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass ecu_msgs::SetBatteryCapacity
  :super ros::object
  :slots ())

(setf (get ecu_msgs::SetBatteryCapacity :md5sum-) "a6c003c4fba299af8275270f5cd8fcb6")
(setf (get ecu_msgs::SetBatteryCapacity :datatype-) "ecu_msgs/SetBatteryCapacity")
(setf (get ecu_msgs::SetBatteryCapacity :request) ecu_msgs::SetBatteryCapacityRequest)
(setf (get ecu_msgs::SetBatteryCapacity :response) ecu_msgs::SetBatteryCapacityResponse)

(defmethod ecu_msgs::SetBatteryCapacityRequest
  (:response () (instance ecu_msgs::SetBatteryCapacityResponse :init)))

(setf (get ecu_msgs::SetBatteryCapacityRequest :md5sum-) "a6c003c4fba299af8275270f5cd8fcb6")
(setf (get ecu_msgs::SetBatteryCapacityRequest :datatype-) "ecu_msgs/SetBatteryCapacityRequest")
(setf (get ecu_msgs::SetBatteryCapacityRequest :definition-)
      "
float64 capacity
---
float64 capacity_set
string message
")

(setf (get ecu_msgs::SetBatteryCapacityResponse :md5sum-) "a6c003c4fba299af8275270f5cd8fcb6")
(setf (get ecu_msgs::SetBatteryCapacityResponse :datatype-) "ecu_msgs/SetBatteryCapacityResponse")
(setf (get ecu_msgs::SetBatteryCapacityResponse :definition-)
      "
float64 capacity
---
float64 capacity_set
string message
")



(provide :ecu_msgs/SetBatteryCapacity "a6c003c4fba299af8275270f5cd8fcb6")


