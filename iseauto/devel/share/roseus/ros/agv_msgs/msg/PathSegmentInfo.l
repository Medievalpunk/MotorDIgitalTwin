;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::PathSegmentInfo)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'PathSegmentInfo (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::PATHSEGMENTINFO")
  (make-package "AGV_MSGS::PATHSEGMENTINFO"))

(in-package "ROS")
;;//! \htmlinclude PathSegmentInfo.msg.html


(defclass agv_msgs::PathSegmentInfo
  :super ros::object
  :slots (_start_id _end_id _distance ))

(defmethod agv_msgs::PathSegmentInfo
  (:init
   (&key
    ((:start_id __start_id) "")
    ((:end_id __end_id) "")
    ((:distance __distance) 0.0)
    )
   (send-super :init)
   (setq _start_id (string __start_id))
   (setq _end_id (string __end_id))
   (setq _distance (float __distance))
   self)
  (:start_id
   (&optional __start_id)
   (if __start_id (setq _start_id __start_id)) _start_id)
  (:end_id
   (&optional __end_id)
   (if __end_id (setq _end_id __end_id)) _end_id)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:serialization-length
   ()
   (+
    ;; string _start_id
    4 (length _start_id)
    ;; string _end_id
    4 (length _end_id)
    ;; float32 _distance
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _start_id
       (write-long (length _start_id) s) (princ _start_id s)
     ;; string _end_id
       (write-long (length _end_id) s) (princ _end_id s)
     ;; float32 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _start_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _start_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _end_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _end_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _distance
     (setq _distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get agv_msgs::PathSegmentInfo :md5sum-) "1177108c776ff861a843c40f49c83e33")
(setf (get agv_msgs::PathSegmentInfo :datatype-) "agv_msgs/PathSegmentInfo")
(setf (get agv_msgs::PathSegmentInfo :definition-)
      "string start_id
string end_id
float32 distance
")



(provide :agv_msgs/PathSegmentInfo "1177108c776ff861a843c40f49c83e33")


