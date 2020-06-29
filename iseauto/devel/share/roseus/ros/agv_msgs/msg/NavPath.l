;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::NavPath)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'NavPath (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::NAVPATH")
  (make-package "AGV_MSGS::NAVPATH"))

(in-package "ROS")
;;//! \htmlinclude NavPath.msg.html


(defclass agv_msgs::NavPath
  :super ros::object
  :slots (_ids _type ))

(defmethod agv_msgs::NavPath
  (:init
   (&key
    ((:ids __ids) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _ids __ids)
   (setq _type (round __type))
   self)
  (:ids
   (&optional __ids)
   (if __ids (setq _ids __ids)) _ids)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; string[] _ids
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _ids)) 4
    ;; uint16 _type
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _ids
     (write-long (length _ids) s)
     (dolist (elem _ids)
       (write-long (length elem) s) (princ elem s)
       )
     ;; uint16 _type
       (write-word _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ids (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _ids i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; uint16 _type
     (setq _type (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get agv_msgs::NavPath :md5sum-) "711def7d6763ad1633c19a26fb883e46")
(setf (get agv_msgs::NavPath :datatype-) "agv_msgs/NavPath")
(setf (get agv_msgs::NavPath :definition-)
      "string[] ids
uint16 type
")



(provide :agv_msgs/NavPath "711def7d6763ad1633c19a26fb883e46")


