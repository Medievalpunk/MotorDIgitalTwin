;; Auto-generated. Do not edit!


(when (boundp 'ecu_msgs::SetActiveOne)
  (if (not (find-package "ECU_MSGS"))
    (make-package "ECU_MSGS"))
  (shadow 'SetActiveOne (find-package "ECU_MSGS")))
(unless (find-package "ECU_MSGS::SETACTIVEONE")
  (make-package "ECU_MSGS::SETACTIVEONE"))
(unless (find-package "ECU_MSGS::SETACTIVEONEREQUEST")
  (make-package "ECU_MSGS::SETACTIVEONEREQUEST"))
(unless (find-package "ECU_MSGS::SETACTIVEONERESPONSE")
  (make-package "ECU_MSGS::SETACTIVEONERESPONSE"))

(in-package "ROS")





(defclass ecu_msgs::SetActiveOneRequest
  :super ros::object
  :slots (_state _index ))

(defmethod ecu_msgs::SetActiveOneRequest
  (:init
   (&key
    ((:state __state) nil)
    ((:index __index) 0)
    )
   (send-super :init)
   (setq _state __state)
   (setq _index (round __index))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:serialization-length
   ()
   (+
    ;; bool _state
    1
    ;; int64 _index
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _state
       (if _state (write-byte -1 s) (write-byte 0 s))
     ;; int64 _index
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _index (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _index) (= (length (_index . bv)) 2)) ;; bignum
              (write-long (ash (elt (_index . bv) 0) 0) s)
              (write-long (ash (elt (_index . bv) 1) -1) s))
             ((and (class _index) (= (length (_index . bv)) 1)) ;; big1
              (write-long (elt (_index . bv) 0) s)
              (write-long (if (>= _index 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _index s)(write-long (if (>= _index 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _state
     (setq _state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int64 _index
#+(or :alpha :irix6 :x86_64)
      (setf _index (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _index (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass ecu_msgs::SetActiveOneResponse
  :super ros::object
  :slots (_set_state _index_set _message ))

(defmethod ecu_msgs::SetActiveOneResponse
  (:init
   (&key
    ((:set_state __set_state) nil)
    ((:index_set __index_set) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _set_state __set_state)
   (setq _index_set (round __index_set))
   (setq _message (string __message))
   self)
  (:set_state
   (&optional __set_state)
   (if __set_state (setq _set_state __set_state)) _set_state)
  (:index_set
   (&optional __index_set)
   (if __index_set (setq _index_set __index_set)) _index_set)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _set_state
    1
    ;; int64 _index_set
    8
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _set_state
       (if _set_state (write-byte -1 s) (write-byte 0 s))
     ;; int64 _index_set
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _index_set (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _index_set) (= (length (_index_set . bv)) 2)) ;; bignum
              (write-long (ash (elt (_index_set . bv) 0) 0) s)
              (write-long (ash (elt (_index_set . bv) 1) -1) s))
             ((and (class _index_set) (= (length (_index_set . bv)) 1)) ;; big1
              (write-long (elt (_index_set . bv) 0) s)
              (write-long (if (>= _index_set 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _index_set s)(write-long (if (>= _index_set 0) 0 #xffffffff) s)))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _set_state
     (setq _set_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int64 _index_set
#+(or :alpha :irix6 :x86_64)
      (setf _index_set (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _index_set (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass ecu_msgs::SetActiveOne
  :super ros::object
  :slots ())

(setf (get ecu_msgs::SetActiveOne :md5sum-) "9f8090badf21f79cbb38a70d7676e26b")
(setf (get ecu_msgs::SetActiveOne :datatype-) "ecu_msgs/SetActiveOne")
(setf (get ecu_msgs::SetActiveOne :request) ecu_msgs::SetActiveOneRequest)
(setf (get ecu_msgs::SetActiveOne :response) ecu_msgs::SetActiveOneResponse)

(defmethod ecu_msgs::SetActiveOneRequest
  (:response () (instance ecu_msgs::SetActiveOneResponse :init)))

(setf (get ecu_msgs::SetActiveOneRequest :md5sum-) "9f8090badf21f79cbb38a70d7676e26b")
(setf (get ecu_msgs::SetActiveOneRequest :datatype-) "ecu_msgs/SetActiveOneRequest")
(setf (get ecu_msgs::SetActiveOneRequest :definition-)
      "bool state
int64 index
---
bool set_state
int64 index_set
string message

")

(setf (get ecu_msgs::SetActiveOneResponse :md5sum-) "9f8090badf21f79cbb38a70d7676e26b")
(setf (get ecu_msgs::SetActiveOneResponse :datatype-) "ecu_msgs/SetActiveOneResponse")
(setf (get ecu_msgs::SetActiveOneResponse :definition-)
      "bool state
int64 index
---
bool set_state
int64 index_set
string message

")



(provide :ecu_msgs/SetActiveOne "9f8090badf21f79cbb38a70d7676e26b")


