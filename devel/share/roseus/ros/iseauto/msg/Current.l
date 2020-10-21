;; Auto-generated. Do not edit!


(when (boundp 'iseauto::Current)
  (if (not (find-package "ISEAUTO"))
    (make-package "ISEAUTO"))
  (shadow 'Current (find-package "ISEAUTO")))
(unless (find-package "ISEAUTO::CURRENT")
  (make-package "ISEAUTO::CURRENT"))

(in-package "ROS")
;;//! \htmlinclude Current.msg.html


(defclass iseauto::Current
  :super ros::object
  :slots (_current1 _current2 _current3 ))

(defmethod iseauto::Current
  (:init
   (&key
    ((:current1 __current1) 0.0)
    ((:current2 __current2) 0.0)
    ((:current3 __current3) 0.0)
    )
   (send-super :init)
   (setq _current1 (float __current1))
   (setq _current2 (float __current2))
   (setq _current3 (float __current3))
   self)
  (:current1
   (&optional __current1)
   (if __current1 (setq _current1 __current1)) _current1)
  (:current2
   (&optional __current2)
   (if __current2 (setq _current2 __current2)) _current2)
  (:current3
   (&optional __current3)
   (if __current3 (setq _current3 __current3)) _current3)
  (:serialization-length
   ()
   (+
    ;; float32 _current1
    4
    ;; float32 _current2
    4
    ;; float32 _current3
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _current1
       (sys::poke _current1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _current2
       (sys::poke _current2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _current3
       (sys::poke _current3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _current1
     (setq _current1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _current2
     (setq _current2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _current3
     (setq _current3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get iseauto::Current :md5sum-) "d72878699e445dfbd8b757130d3ba7c0")
(setf (get iseauto::Current :datatype-) "iseauto/Current")
(setf (get iseauto::Current :definition-)
      "float32 current1
float32 current2
float32 current3
")



(provide :iseauto/Current "d72878699e445dfbd8b757130d3ba7c0")


