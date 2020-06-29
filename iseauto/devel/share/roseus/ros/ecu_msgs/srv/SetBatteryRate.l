;; Auto-generated. Do not edit!


(when (boundp 'ecu_msgs::SetBatteryRate)
  (if (not (find-package "ECU_MSGS"))
    (make-package "ECU_MSGS"))
  (shadow 'SetBatteryRate (find-package "ECU_MSGS")))
(unless (find-package "ECU_MSGS::SETBATTERYRATE")
  (make-package "ECU_MSGS::SETBATTERYRATE"))
(unless (find-package "ECU_MSGS::SETBATTERYRATEREQUEST")
  (make-package "ECU_MSGS::SETBATTERYRATEREQUEST"))
(unless (find-package "ECU_MSGS::SETBATTERYRATERESPONSE")
  (make-package "ECU_MSGS::SETBATTERYRATERESPONSE"))

(in-package "ROS")





(defclass ecu_msgs::SetBatteryRateRequest
  :super ros::object
  :slots (_mAh _period ))

(defmethod ecu_msgs::SetBatteryRateRequest
  (:init
   (&key
    ((:mAh __mAh) 0.0)
    ((:period __period) 0)
    )
   (send-super :init)
   (setq _mAh (float __mAh))
   (setq _period (round __period))
   self)
  (:mAh
   (&optional __mAh)
   (if __mAh (setq _mAh __mAh)) _mAh)
  (:period
   (&optional __period)
   (if __period (setq _period __period)) _period)
  (:serialization-length
   ()
   (+
    ;; float64 _mAh
    8
    ;; int64 _period
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _mAh
       (sys::poke _mAh (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int64 _period
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _period (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _period) (= (length (_period . bv)) 2)) ;; bignum
              (write-long (ash (elt (_period . bv) 0) 0) s)
              (write-long (ash (elt (_period . bv) 1) -1) s))
             ((and (class _period) (= (length (_period . bv)) 1)) ;; big1
              (write-long (elt (_period . bv) 0) s)
              (write-long (if (>= _period 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _period s)(write-long (if (>= _period 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _mAh
     (setq _mAh (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int64 _period
#+(or :alpha :irix6 :x86_64)
      (setf _period (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _period (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass ecu_msgs::SetBatteryRateResponse
  :super ros::object
  :slots (_capacity_set _period_set _message ))

(defmethod ecu_msgs::SetBatteryRateResponse
  (:init
   (&key
    ((:capacity_set __capacity_set) 0.0)
    ((:period_set __period_set) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _capacity_set (float __capacity_set))
   (setq _period_set (round __period_set))
   (setq _message (string __message))
   self)
  (:capacity_set
   (&optional __capacity_set)
   (if __capacity_set (setq _capacity_set __capacity_set)) _capacity_set)
  (:period_set
   (&optional __period_set)
   (if __period_set (setq _period_set __period_set)) _period_set)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; float64 _capacity_set
    8
    ;; int64 _period_set
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
     ;; int64 _period_set
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _period_set (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _period_set) (= (length (_period_set . bv)) 2)) ;; bignum
              (write-long (ash (elt (_period_set . bv) 0) 0) s)
              (write-long (ash (elt (_period_set . bv) 1) -1) s))
             ((and (class _period_set) (= (length (_period_set . bv)) 1)) ;; big1
              (write-long (elt (_period_set . bv) 0) s)
              (write-long (if (>= _period_set 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _period_set s)(write-long (if (>= _period_set 0) 0 #xffffffff) s)))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _capacity_set
     (setq _capacity_set (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int64 _period_set
#+(or :alpha :irix6 :x86_64)
      (setf _period_set (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _period_set (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass ecu_msgs::SetBatteryRate
  :super ros::object
  :slots ())

(setf (get ecu_msgs::SetBatteryRate :md5sum-) "d62957aebeb7df19acf301078ca1beab")
(setf (get ecu_msgs::SetBatteryRate :datatype-) "ecu_msgs/SetBatteryRate")
(setf (get ecu_msgs::SetBatteryRate :request) ecu_msgs::SetBatteryRateRequest)
(setf (get ecu_msgs::SetBatteryRate :response) ecu_msgs::SetBatteryRateResponse)

(defmethod ecu_msgs::SetBatteryRateRequest
  (:response () (instance ecu_msgs::SetBatteryRateResponse :init)))

(setf (get ecu_msgs::SetBatteryRateRequest :md5sum-) "d62957aebeb7df19acf301078ca1beab")
(setf (get ecu_msgs::SetBatteryRateRequest :datatype-) "ecu_msgs/SetBatteryRateRequest")
(setf (get ecu_msgs::SetBatteryRateRequest :definition-)
      "
float64 mAh

int64 period

---
float64 capacity_set
int64 period_set
string message
")

(setf (get ecu_msgs::SetBatteryRateResponse :md5sum-) "d62957aebeb7df19acf301078ca1beab")
(setf (get ecu_msgs::SetBatteryRateResponse :datatype-) "ecu_msgs/SetBatteryRateResponse")
(setf (get ecu_msgs::SetBatteryRateResponse :definition-)
      "
float64 mAh

int64 period

---
float64 capacity_set
int64 period_set
string message
")



(provide :ecu_msgs/SetBatteryRate "d62957aebeb7df19acf301078ca1beab")


