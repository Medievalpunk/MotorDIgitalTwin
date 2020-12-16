;; Auto-generated. Do not edit!


(when (boundp 'iseauto::Power)
  (if (not (find-package "ISEAUTO"))
    (make-package "ISEAUTO"))
  (shadow 'Power (find-package "ISEAUTO")))
(unless (find-package "ISEAUTO::POWER")
  (make-package "ISEAUTO::POWER"))

(in-package "ROS")
;;//! \htmlinclude Power.msg.html


(defclass iseauto::Power
  :super ros::object
  :slots (_phase1 _phase2 _phase3 _total ))

(defmethod iseauto::Power
  (:init
   (&key
    ((:phase1 __phase1) 0.0)
    ((:phase2 __phase2) 0.0)
    ((:phase3 __phase3) 0.0)
    ((:total __total) 0.0)
    )
   (send-super :init)
   (setq _phase1 (float __phase1))
   (setq _phase2 (float __phase2))
   (setq _phase3 (float __phase3))
   (setq _total (float __total))
   self)
  (:phase1
   (&optional __phase1)
   (if __phase1 (setq _phase1 __phase1)) _phase1)
  (:phase2
   (&optional __phase2)
   (if __phase2 (setq _phase2 __phase2)) _phase2)
  (:phase3
   (&optional __phase3)
   (if __phase3 (setq _phase3 __phase3)) _phase3)
  (:total
   (&optional __total)
   (if __total (setq _total __total)) _total)
  (:serialization-length
   ()
   (+
    ;; float32 _phase1
    4
    ;; float32 _phase2
    4
    ;; float32 _phase3
    4
    ;; float32 _total
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _phase1
       (sys::poke _phase1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _phase2
       (sys::poke _phase2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _phase3
       (sys::poke _phase3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _total
       (sys::poke _total (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _phase1
     (setq _phase1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _phase2
     (setq _phase2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _phase3
     (setq _phase3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _total
     (setq _total (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get iseauto::Power :md5sum-) "2da61ddd54b46d41de22ff847920071c")
(setf (get iseauto::Power :datatype-) "iseauto/Power")
(setf (get iseauto::Power :definition-)
      "float32 phase1
float32 phase2
float32 phase3
float32 total
")



(provide :iseauto/Power "2da61ddd54b46d41de22ff847920071c")


