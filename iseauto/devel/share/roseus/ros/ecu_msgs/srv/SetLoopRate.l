;; Auto-generated. Do not edit!


(when (boundp 'ecu_msgs::SetLoopRate)
  (if (not (find-package "ECU_MSGS"))
    (make-package "ECU_MSGS"))
  (shadow 'SetLoopRate (find-package "ECU_MSGS")))
(unless (find-package "ECU_MSGS::SETLOOPRATE")
  (make-package "ECU_MSGS::SETLOOPRATE"))
(unless (find-package "ECU_MSGS::SETLOOPRATEREQUEST")
  (make-package "ECU_MSGS::SETLOOPRATEREQUEST"))
(unless (find-package "ECU_MSGS::SETLOOPRATERESPONSE")
  (make-package "ECU_MSGS::SETLOOPRATERESPONSE"))

(in-package "ROS")





(defclass ecu_msgs::SetLoopRateRequest
  :super ros::object
  :slots (_rate ))

(defmethod ecu_msgs::SetLoopRateRequest
  (:init
   (&key
    ((:rate __rate) 0)
    )
   (send-super :init)
   (setq _rate (round __rate))
   self)
  (:rate
   (&optional __rate)
   (if __rate (setq _rate __rate)) _rate)
  (:serialization-length
   ()
   (+
    ;; int64 _rate
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _rate
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _rate (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _rate) (= (length (_rate . bv)) 2)) ;; bignum
              (write-long (ash (elt (_rate . bv) 0) 0) s)
              (write-long (ash (elt (_rate . bv) 1) -1) s))
             ((and (class _rate) (= (length (_rate . bv)) 1)) ;; big1
              (write-long (elt (_rate . bv) 0) s)
              (write-long (if (>= _rate 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _rate s)(write-long (if (>= _rate 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _rate
#+(or :alpha :irix6 :x86_64)
      (setf _rate (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _rate (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass ecu_msgs::SetLoopRateResponse
  :super ros::object
  :slots (_rate_set _message ))

(defmethod ecu_msgs::SetLoopRateResponse
  (:init
   (&key
    ((:rate_set __rate_set) 0.0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _rate_set (float __rate_set))
   (setq _message (string __message))
   self)
  (:rate_set
   (&optional __rate_set)
   (if __rate_set (setq _rate_set __rate_set)) _rate_set)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; float64 _rate_set
    8
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _rate_set
       (sys::poke _rate_set (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _rate_set
     (setq _rate_set (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass ecu_msgs::SetLoopRate
  :super ros::object
  :slots ())

(setf (get ecu_msgs::SetLoopRate :md5sum-) "e70f420dd3814e680a1961a45937fb63")
(setf (get ecu_msgs::SetLoopRate :datatype-) "ecu_msgs/SetLoopRate")
(setf (get ecu_msgs::SetLoopRate :request) ecu_msgs::SetLoopRateRequest)
(setf (get ecu_msgs::SetLoopRate :response) ecu_msgs::SetLoopRateResponse)

(defmethod ecu_msgs::SetLoopRateRequest
  (:response () (instance ecu_msgs::SetLoopRateResponse :init)))

(setf (get ecu_msgs::SetLoopRateRequest :md5sum-) "e70f420dd3814e680a1961a45937fb63")
(setf (get ecu_msgs::SetLoopRateRequest :datatype-) "ecu_msgs/SetLoopRateRequest")
(setf (get ecu_msgs::SetLoopRateRequest :definition-)
      "
int64 rate
---
float64 rate_set
string message
")

(setf (get ecu_msgs::SetLoopRateResponse :md5sum-) "e70f420dd3814e680a1961a45937fb63")
(setf (get ecu_msgs::SetLoopRateResponse :datatype-) "ecu_msgs/SetLoopRateResponse")
(setf (get ecu_msgs::SetLoopRateResponse :definition-)
      "
int64 rate
---
float64 rate_set
string message
")



(provide :ecu_msgs/SetLoopRate "e70f420dd3814e680a1961a45937fb63")


