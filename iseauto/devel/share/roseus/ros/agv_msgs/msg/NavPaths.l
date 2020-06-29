;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::NavPaths)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'NavPaths (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::NAVPATHS")
  (make-package "AGV_MSGS::NAVPATHS"))

(in-package "ROS")
;;//! \htmlinclude NavPaths.msg.html


(defclass agv_msgs::NavPaths
  :super ros::object
  :slots (_paths ))

(defmethod agv_msgs::NavPaths
  (:init
   (&key
    ((:paths __paths) (let (r) (dotimes (i 0) (push (instance agv_msgs::NavPath :init) r)) r))
    )
   (send-super :init)
   (setq _paths __paths)
   self)
  (:paths
   (&rest __paths)
   (if (keywordp (car __paths))
       (send* _paths __paths)
     (progn
       (if __paths (setq _paths (car __paths)))
       _paths)))
  (:serialization-length
   ()
   (+
    ;; agv_msgs/NavPath[] _paths
    (apply #'+ (send-all _paths :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; agv_msgs/NavPath[] _paths
     (write-long (length _paths) s)
     (dolist (elem _paths)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; agv_msgs/NavPath[] _paths
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _paths (let (r) (dotimes (i n) (push (instance agv_msgs::NavPath :init) r)) r))
     (dolist (elem- _paths)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get agv_msgs::NavPaths :md5sum-) "d8ca5b9769932f260f0331e043f67520")
(setf (get agv_msgs::NavPaths :datatype-) "agv_msgs/NavPaths")
(setf (get agv_msgs::NavPaths :definition-)
      "NavPath[] paths

================================================================================
MSG: agv_msgs/NavPath
string[] ids
uint16 type
")



(provide :agv_msgs/NavPaths "d8ca5b9769932f260f0331e043f67520")


