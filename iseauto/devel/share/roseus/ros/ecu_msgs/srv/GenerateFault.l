;; Auto-generated. Do not edit!


(when (boundp 'ecu_msgs::GenerateFault)
  (if (not (find-package "ECU_MSGS"))
    (make-package "ECU_MSGS"))
  (shadow 'GenerateFault (find-package "ECU_MSGS")))
(unless (find-package "ECU_MSGS::GENERATEFAULT")
  (make-package "ECU_MSGS::GENERATEFAULT"))
(unless (find-package "ECU_MSGS::GENERATEFAULTREQUEST")
  (make-package "ECU_MSGS::GENERATEFAULTREQUEST"))
(unless (find-package "ECU_MSGS::GENERATEFAULTRESPONSE")
  (make-package "ECU_MSGS::GENERATEFAULTRESPONSE"))

(in-package "ROS")





(defclass ecu_msgs::GenerateFaultRequest
  :super ros::object
  :slots ())

(defmethod ecu_msgs::GenerateFaultRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass ecu_msgs::GenerateFaultResponse
  :super ros::object
  :slots (_success _message ))

(defmethod ecu_msgs::GenerateFaultResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass ecu_msgs::GenerateFault
  :super ros::object
  :slots ())

(setf (get ecu_msgs::GenerateFault :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get ecu_msgs::GenerateFault :datatype-) "ecu_msgs/GenerateFault")
(setf (get ecu_msgs::GenerateFault :request) ecu_msgs::GenerateFaultRequest)
(setf (get ecu_msgs::GenerateFault :response) ecu_msgs::GenerateFaultResponse)

(defmethod ecu_msgs::GenerateFaultRequest
  (:response () (instance ecu_msgs::GenerateFaultResponse :init)))

(setf (get ecu_msgs::GenerateFaultRequest :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get ecu_msgs::GenerateFaultRequest :datatype-) "ecu_msgs/GenerateFaultRequest")
(setf (get ecu_msgs::GenerateFaultRequest :definition-)
      "---
bool success
string message
")

(setf (get ecu_msgs::GenerateFaultResponse :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get ecu_msgs::GenerateFaultResponse :datatype-) "ecu_msgs/GenerateFaultResponse")
(setf (get ecu_msgs::GenerateFaultResponse :definition-)
      "---
bool success
string message
")



(provide :ecu_msgs/GenerateFault "937c9679a518e3a18d831e57125ea522")


