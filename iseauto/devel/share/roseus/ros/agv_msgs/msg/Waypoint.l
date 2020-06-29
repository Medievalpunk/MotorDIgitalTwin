;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::Waypoint)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'Waypoint (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::WAYPOINT")
  (make-package "AGV_MSGS::WAYPOINT"))

(in-package "ROS")
;;//! \htmlinclude Waypoint.msg.html


(defclass agv_msgs::Waypoint
  :super ros::object
  :slots (_x _y _yaw _goal_id _frame_id _state ))

(defmethod agv_msgs::Waypoint
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:yaw __yaw) 0.0)
    ((:goal_id __goal_id) "")
    ((:frame_id __frame_id) "")
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _yaw (float __yaw))
   (setq _goal_id (string __goal_id))
   (setq _frame_id (string __frame_id))
   (setq _state (round __state))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:goal_id
   (&optional __goal_id)
   (if __goal_id (setq _goal_id __goal_id)) _goal_id)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _yaw
    4
    ;; string _goal_id
    4 (length _goal_id)
    ;; string _frame_id
    4 (length _frame_id)
    ;; uint8 _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _goal_id
       (write-long (length _goal_id) s) (princ _goal_id s)
     ;; string _frame_id
       (write-long (length _frame_id) s) (princ _frame_id s)
     ;; uint8 _state
       (write-byte _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _goal_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _goal_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get agv_msgs::Waypoint :md5sum-) "f695779554f3ff71b6769a01592421cd")
(setf (get agv_msgs::Waypoint :datatype-) "agv_msgs/Waypoint")
(setf (get agv_msgs::Waypoint :definition-)
      "float32 x
float32 y
float32 yaw
string goal_id
string frame_id
uint8 state
")



(provide :agv_msgs/Waypoint "f695779554f3ff71b6769a01592421cd")


