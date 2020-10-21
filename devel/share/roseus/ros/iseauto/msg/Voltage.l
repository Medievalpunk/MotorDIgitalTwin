;; Auto-generated. Do not edit!


(when (boundp 'iseauto::Voltage)
  (if (not (find-package "ISEAUTO"))
    (make-package "ISEAUTO"))
  (shadow 'Voltage (find-package "ISEAUTO")))
(unless (find-package "ISEAUTO::VOLTAGE")
  (make-package "ISEAUTO::VOLTAGE"))

(in-package "ROS")
;;//! \htmlinclude Voltage.msg.html


(defclass iseauto::Voltage
  :super ros::object
  :slots (_voltage1 _voltage2 _voltage3 ))

(defmethod iseauto::Voltage
  (:init
   (&key
    ((:voltage1 __voltage1) 0.0)
    ((:voltage2 __voltage2) 0.0)
    ((:voltage3 __voltage3) 0.0)
    )
   (send-super :init)
   (setq _voltage1 (float __voltage1))
   (setq _voltage2 (float __voltage2))
   (setq _voltage3 (float __voltage3))
   self)
  (:voltage1
   (&optional __voltage1)
   (if __voltage1 (setq _voltage1 __voltage1)) _voltage1)
  (:voltage2
   (&optional __voltage2)
   (if __voltage2 (setq _voltage2 __voltage2)) _voltage2)
  (:voltage3
   (&optional __voltage3)
   (if __voltage3 (setq _voltage3 __voltage3)) _voltage3)
  (:serialization-length
   ()
   (+
    ;; float32 _voltage1
    4
    ;; float32 _voltage2
    4
    ;; float32 _voltage3
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _voltage1
       (sys::poke _voltage1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _voltage2
       (sys::poke _voltage2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _voltage3
       (sys::poke _voltage3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _voltage1
     (setq _voltage1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _voltage2
     (setq _voltage2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _voltage3
     (setq _voltage3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get iseauto::Voltage :md5sum-) "201ad7f8e98b5d0b734069bf861aba7a")
(setf (get iseauto::Voltage :datatype-) "iseauto/Voltage")
(setf (get iseauto::Voltage :definition-)
      "float32 voltage1
float32 voltage2
float32 voltage3
")



(provide :iseauto/Voltage "201ad7f8e98b5d0b734069bf861aba7a")


