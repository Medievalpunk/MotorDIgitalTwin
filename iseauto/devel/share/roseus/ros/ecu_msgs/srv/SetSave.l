;; Auto-generated. Do not edit!


(when (boundp 'ecu_msgs::SetSave)
  (if (not (find-package "ECU_MSGS"))
    (make-package "ECU_MSGS"))
  (shadow 'SetSave (find-package "ECU_MSGS")))
(unless (find-package "ECU_MSGS::SETSAVE")
  (make-package "ECU_MSGS::SETSAVE"))
(unless (find-package "ECU_MSGS::SETSAVEREQUEST")
  (make-package "ECU_MSGS::SETSAVEREQUEST"))
(unless (find-package "ECU_MSGS::SETSAVERESPONSE")
  (make-package "ECU_MSGS::SETSAVERESPONSE"))

(in-package "ROS")





(defclass ecu_msgs::SetSaveRequest
  :super ros::object
  :slots (_filename ))

(defmethod ecu_msgs::SetSaveRequest
  (:init
   (&key
    ((:filename __filename) "")
    )
   (send-super :init)
   (setq _filename (string __filename))
   self)
  (:filename
   (&optional __filename)
   (if __filename (setq _filename __filename)) _filename)
  (:serialization-length
   ()
   (+
    ;; string _filename
    4 (length _filename)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _filename
       (write-long (length _filename) s) (princ _filename s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _filename
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _filename (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass ecu_msgs::SetSaveResponse
  :super ros::object
  :slots (_message ))

(defmethod ecu_msgs::SetSaveResponse
  (:init
   (&key
    ((:message __message) "")
    )
   (send-super :init)
   (setq _message (string __message))
   self)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass ecu_msgs::SetSave
  :super ros::object
  :slots ())

(setf (get ecu_msgs::SetSave :md5sum-) "4de3d9cc11cc57aecc1e3b15cb59ccfc")
(setf (get ecu_msgs::SetSave :datatype-) "ecu_msgs/SetSave")
(setf (get ecu_msgs::SetSave :request) ecu_msgs::SetSaveRequest)
(setf (get ecu_msgs::SetSave :response) ecu_msgs::SetSaveResponse)

(defmethod ecu_msgs::SetSaveRequest
  (:response () (instance ecu_msgs::SetSaveResponse :init)))

(setf (get ecu_msgs::SetSaveRequest :md5sum-) "4de3d9cc11cc57aecc1e3b15cb59ccfc")
(setf (get ecu_msgs::SetSaveRequest :datatype-) "ecu_msgs/SetSaveRequest")
(setf (get ecu_msgs::SetSaveRequest :definition-)
      "string filename
---
string message

")

(setf (get ecu_msgs::SetSaveResponse :md5sum-) "4de3d9cc11cc57aecc1e3b15cb59ccfc")
(setf (get ecu_msgs::SetSaveResponse :datatype-) "ecu_msgs/SetSaveResponse")
(setf (get ecu_msgs::SetSaveResponse :definition-)
      "string filename
---
string message

")



(provide :ecu_msgs/SetSave "4de3d9cc11cc57aecc1e3b15cb59ccfc")


