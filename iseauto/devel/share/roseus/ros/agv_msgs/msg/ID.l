;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::ID)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'ID (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::ID")
  (make-package "AGV_MSGS::ID"))

(in-package "ROS")
;;//! \htmlinclude ID.msg.html


(intern "*INVALID_ID*" (find-package "AGV_MSGS::ID"))
(shadow '*INVALID_ID* (find-package "AGV_MSGS::ID"))
(defconstant agv_msgs::ID::*INVALID_ID* 0)
(defclass agv_msgs::ID
  :super ros::object
  :slots (_data ))

(defmethod agv_msgs::ID
  (:init
   (&key
    ((:data __data) 0)
    )
   (send-super :init)
   (setq _data (round __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; uint32 _data
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _data
       (write-long _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _data
     (setq _data (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get agv_msgs::ID :md5sum-) "13c6eee13b62c0e3ecc8410f8dd0a003")
(setf (get agv_msgs::ID :datatype-) "agv_msgs/ID")
(setf (get agv_msgs::ID :definition-)
      " uint32 data

 uint32 INVALID_ID=0

")



(provide :agv_msgs/ID "13c6eee13b62c0e3ecc8410f8dd0a003")


