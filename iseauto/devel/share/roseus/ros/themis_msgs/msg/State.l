;; Auto-generated. Do not edit!


(when (boundp 'themis_msgs::State)
  (if (not (find-package "THEMIS_MSGS"))
    (make-package "THEMIS_MSGS"))
  (shadow 'State (find-package "THEMIS_MSGS")))
(unless (find-package "THEMIS_MSGS::STATE")
  (make-package "THEMIS_MSGS::STATE"))

(in-package "ROS")
;;//! \htmlinclude State.msg.html


(defclass themis_msgs::State
  :super ros::object
  :slots (_id _desc ))

(defmethod themis_msgs::State
  (:init
   (&key
    ((:id __id) 0)
    ((:desc __desc) "")
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _desc (string __desc))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:desc
   (&optional __desc)
   (if __desc (setq _desc __desc)) _desc)
  (:serialization-length
   ()
   (+
    ;; uint16 _id
    2
    ;; string _desc
    4 (length _desc)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _id
       (write-word _id s)
     ;; string _desc
       (write-long (length _desc) s) (princ _desc s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _id
     (setq _id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _desc
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _desc (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get themis_msgs::State :md5sum-) "34f2727d2620af27976939d2767124cd")
(setf (get themis_msgs::State :datatype-) "themis_msgs/State")
(setf (get themis_msgs::State :definition-)
      "uint16 id
string desc

")



(provide :themis_msgs/State "34f2727d2620af27976939d2767124cd")


