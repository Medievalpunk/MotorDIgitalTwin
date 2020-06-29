;; Auto-generated. Do not edit!


(when (boundp 'themis_msgs::SetState)
  (if (not (find-package "THEMIS_MSGS"))
    (make-package "THEMIS_MSGS"))
  (shadow 'SetState (find-package "THEMIS_MSGS")))
(unless (find-package "THEMIS_MSGS::SETSTATE")
  (make-package "THEMIS_MSGS::SETSTATE"))
(unless (find-package "THEMIS_MSGS::SETSTATEREQUEST")
  (make-package "THEMIS_MSGS::SETSTATEREQUEST"))
(unless (find-package "THEMIS_MSGS::SETSTATERESPONSE")
  (make-package "THEMIS_MSGS::SETSTATERESPONSE"))

(in-package "ROS")





(defclass themis_msgs::SetStateRequest
  :super ros::object
  :slots (_state ))

(defmethod themis_msgs::SetStateRequest
  (:init
   (&key
    ((:state __state) nil)
    )
   (send-super :init)
   (setq _state __state)
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; bool _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _state
       (if _state (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _state
     (setq _state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass themis_msgs::SetStateResponse
  :super ros::object
  :slots (_set_state _message ))

(defmethod themis_msgs::SetStateResponse
  (:init
   (&key
    ((:set_state __set_state) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _set_state __set_state)
   (setq _message (string __message))
   self)
  (:set_state
   (&optional __set_state)
   (if __set_state (setq _set_state __set_state)) _set_state)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _set_state
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _set_state
       (if _set_state (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _set_state
     (setq _set_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass themis_msgs::SetState
  :super ros::object
  :slots ())

(setf (get themis_msgs::SetState :md5sum-) "ce0eba33c969c78d3ee94cf138cc41e2")
(setf (get themis_msgs::SetState :datatype-) "themis_msgs/SetState")
(setf (get themis_msgs::SetState :request) themis_msgs::SetStateRequest)
(setf (get themis_msgs::SetState :response) themis_msgs::SetStateResponse)

(defmethod themis_msgs::SetStateRequest
  (:response () (instance themis_msgs::SetStateResponse :init)))

(setf (get themis_msgs::SetStateRequest :md5sum-) "ce0eba33c969c78d3ee94cf138cc41e2")
(setf (get themis_msgs::SetStateRequest :datatype-) "themis_msgs/SetStateRequest")
(setf (get themis_msgs::SetStateRequest :definition-)
      "bool state
---
bool set_state
string message

")

(setf (get themis_msgs::SetStateResponse :md5sum-) "ce0eba33c969c78d3ee94cf138cc41e2")
(setf (get themis_msgs::SetStateResponse :datatype-) "themis_msgs/SetStateResponse")
(setf (get themis_msgs::SetStateResponse :definition-)
      "bool state
---
bool set_state
string message

")



(provide :themis_msgs/SetState "ce0eba33c969c78d3ee94cf138cc41e2")


