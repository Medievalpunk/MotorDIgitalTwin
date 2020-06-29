;; Auto-generated. Do not edit!


(when (boundp 'ecu_msgs::SetCmdVelTimeout)
  (if (not (find-package "ECU_MSGS"))
    (make-package "ECU_MSGS"))
  (shadow 'SetCmdVelTimeout (find-package "ECU_MSGS")))
(unless (find-package "ECU_MSGS::SETCMDVELTIMEOUT")
  (make-package "ECU_MSGS::SETCMDVELTIMEOUT"))
(unless (find-package "ECU_MSGS::SETCMDVELTIMEOUTREQUEST")
  (make-package "ECU_MSGS::SETCMDVELTIMEOUTREQUEST"))
(unless (find-package "ECU_MSGS::SETCMDVELTIMEOUTRESPONSE")
  (make-package "ECU_MSGS::SETCMDVELTIMEOUTRESPONSE"))

(in-package "ROS")





(defclass ecu_msgs::SetCmdVelTimeoutRequest
  :super ros::object
  :slots (_millis ))

(defmethod ecu_msgs::SetCmdVelTimeoutRequest
  (:init
   (&key
    ((:millis __millis) 0)
    )
   (send-super :init)
   (setq _millis (round __millis))
   self)
  (:millis
   (&optional __millis)
   (if __millis (setq _millis __millis)) _millis)
  (:serialization-length
   ()
   (+
    ;; int64 _millis
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _millis
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _millis (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _millis) (= (length (_millis . bv)) 2)) ;; bignum
              (write-long (ash (elt (_millis . bv) 0) 0) s)
              (write-long (ash (elt (_millis . bv) 1) -1) s))
             ((and (class _millis) (= (length (_millis . bv)) 1)) ;; big1
              (write-long (elt (_millis . bv) 0) s)
              (write-long (if (>= _millis 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _millis s)(write-long (if (>= _millis 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _millis
#+(or :alpha :irix6 :x86_64)
      (setf _millis (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _millis (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass ecu_msgs::SetCmdVelTimeoutResponse
  :super ros::object
  :slots (_success _message ))

(defmethod ecu_msgs::SetCmdVelTimeoutResponse
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

(defclass ecu_msgs::SetCmdVelTimeout
  :super ros::object
  :slots ())

(setf (get ecu_msgs::SetCmdVelTimeout :md5sum-) "a930c3e567f6e537d684459fe0a47d84")
(setf (get ecu_msgs::SetCmdVelTimeout :datatype-) "ecu_msgs/SetCmdVelTimeout")
(setf (get ecu_msgs::SetCmdVelTimeout :request) ecu_msgs::SetCmdVelTimeoutRequest)
(setf (get ecu_msgs::SetCmdVelTimeout :response) ecu_msgs::SetCmdVelTimeoutResponse)

(defmethod ecu_msgs::SetCmdVelTimeoutRequest
  (:response () (instance ecu_msgs::SetCmdVelTimeoutResponse :init)))

(setf (get ecu_msgs::SetCmdVelTimeoutRequest :md5sum-) "a930c3e567f6e537d684459fe0a47d84")
(setf (get ecu_msgs::SetCmdVelTimeoutRequest :datatype-) "ecu_msgs/SetCmdVelTimeoutRequest")
(setf (get ecu_msgs::SetCmdVelTimeoutRequest :definition-)
      "int64 millis
---
bool success
string message

")

(setf (get ecu_msgs::SetCmdVelTimeoutResponse :md5sum-) "a930c3e567f6e537d684459fe0a47d84")
(setf (get ecu_msgs::SetCmdVelTimeoutResponse :datatype-) "ecu_msgs/SetCmdVelTimeoutResponse")
(setf (get ecu_msgs::SetCmdVelTimeoutResponse :definition-)
      "int64 millis
---
bool success
string message

")



(provide :ecu_msgs/SetCmdVelTimeout "a930c3e567f6e537d684459fe0a47d84")


