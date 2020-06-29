;; Auto-generated. Do not edit!


(when (boundp 'themis_msgs::DriveControl)
  (if (not (find-package "THEMIS_MSGS"))
    (make-package "THEMIS_MSGS"))
  (shadow 'DriveControl (find-package "THEMIS_MSGS")))
(unless (find-package "THEMIS_MSGS::DRIVECONTROL")
  (make-package "THEMIS_MSGS::DRIVECONTROL"))

(in-package "ROS")
;;//! \htmlinclude DriveControl.msg.html


(defclass themis_msgs::DriveControl
  :super ros::object
  :slots (_enable _x_axis _y_axis _tank_mode ))

(defmethod themis_msgs::DriveControl
  (:init
   (&key
    ((:enable __enable) nil)
    ((:x_axis __x_axis) 0.0)
    ((:y_axis __y_axis) 0.0)
    ((:tank_mode __tank_mode) nil)
    )
   (send-super :init)
   (setq _enable __enable)
   (setq _x_axis (float __x_axis))
   (setq _y_axis (float __y_axis))
   (setq _tank_mode __tank_mode)
   self)
  (:enable
   (&optional __enable)
   (if __enable (setq _enable __enable)) _enable)
  (:x_axis
   (&optional __x_axis)
   (if __x_axis (setq _x_axis __x_axis)) _x_axis)
  (:y_axis
   (&optional __y_axis)
   (if __y_axis (setq _y_axis __y_axis)) _y_axis)
  (:tank_mode
   (&optional __tank_mode)
   (if __tank_mode (setq _tank_mode __tank_mode)) _tank_mode)
  (:serialization-length
   ()
   (+
    ;; bool _enable
    1
    ;; float32 _x_axis
    4
    ;; float32 _y_axis
    4
    ;; bool _tank_mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _enable
       (if _enable (write-byte -1 s) (write-byte 0 s))
     ;; float32 _x_axis
       (sys::poke _x_axis (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y_axis
       (sys::poke _y_axis (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _tank_mode
       (if _tank_mode (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _enable
     (setq _enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _x_axis
     (setq _x_axis (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y_axis
     (setq _y_axis (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _tank_mode
     (setq _tank_mode (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get themis_msgs::DriveControl :md5sum-) "a3ab8998e46efefe9d244d241f9b70d1")
(setf (get themis_msgs::DriveControl :datatype-) "themis_msgs/DriveControl")
(setf (get themis_msgs::DriveControl :definition-)
      "bool enable
float32 x_axis
float32 y_axis
bool tank_mode

")



(provide :themis_msgs/DriveControl "a3ab8998e46efefe9d244d241f9b70d1")


