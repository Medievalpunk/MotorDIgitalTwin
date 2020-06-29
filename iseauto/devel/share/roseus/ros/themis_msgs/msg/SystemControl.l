;; Auto-generated. Do not edit!


(when (boundp 'themis_msgs::SystemControl)
  (if (not (find-package "THEMIS_MSGS"))
    (make-package "THEMIS_MSGS"))
  (shadow 'SystemControl (find-package "THEMIS_MSGS")))
(unless (find-package "THEMIS_MSGS::SYSTEMCONTROL")
  (make-package "THEMIS_MSGS::SYSTEMCONTROL"))

(in-package "ROS")
;;//! \htmlinclude SystemControl.msg.html


(defclass themis_msgs::SystemControl
  :super ros::object
  :slots (_high_voltage _fan_override _generator _work_lights _signal_lights _imd_override ))

(defmethod themis_msgs::SystemControl
  (:init
   (&key
    ((:high_voltage __high_voltage) nil)
    ((:fan_override __fan_override) nil)
    ((:generator __generator) nil)
    ((:work_lights __work_lights) nil)
    ((:signal_lights __signal_lights) nil)
    ((:imd_override __imd_override) nil)
    )
   (send-super :init)
   (setq _high_voltage __high_voltage)
   (setq _fan_override __fan_override)
   (setq _generator __generator)
   (setq _work_lights __work_lights)
   (setq _signal_lights __signal_lights)
   (setq _imd_override __imd_override)
   self)
  (:high_voltage
   (&optional __high_voltage)
   (if __high_voltage (setq _high_voltage __high_voltage)) _high_voltage)
  (:fan_override
   (&optional __fan_override)
   (if __fan_override (setq _fan_override __fan_override)) _fan_override)
  (:generator
   (&optional __generator)
   (if __generator (setq _generator __generator)) _generator)
  (:work_lights
   (&optional __work_lights)
   (if __work_lights (setq _work_lights __work_lights)) _work_lights)
  (:signal_lights
   (&optional __signal_lights)
   (if __signal_lights (setq _signal_lights __signal_lights)) _signal_lights)
  (:imd_override
   (&optional __imd_override)
   (if __imd_override (setq _imd_override __imd_override)) _imd_override)
  (:serialization-length
   ()
   (+
    ;; bool _high_voltage
    1
    ;; bool _fan_override
    1
    ;; bool _generator
    1
    ;; bool _work_lights
    1
    ;; bool _signal_lights
    1
    ;; bool _imd_override
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _high_voltage
       (if _high_voltage (write-byte -1 s) (write-byte 0 s))
     ;; bool _fan_override
       (if _fan_override (write-byte -1 s) (write-byte 0 s))
     ;; bool _generator
       (if _generator (write-byte -1 s) (write-byte 0 s))
     ;; bool _work_lights
       (if _work_lights (write-byte -1 s) (write-byte 0 s))
     ;; bool _signal_lights
       (if _signal_lights (write-byte -1 s) (write-byte 0 s))
     ;; bool _imd_override
       (if _imd_override (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _high_voltage
     (setq _high_voltage (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _fan_override
     (setq _fan_override (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _generator
     (setq _generator (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _work_lights
     (setq _work_lights (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _signal_lights
     (setq _signal_lights (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _imd_override
     (setq _imd_override (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get themis_msgs::SystemControl :md5sum-) "c55c2f064ee67c58e2e454e066c5cc98")
(setf (get themis_msgs::SystemControl :datatype-) "themis_msgs/SystemControl")
(setf (get themis_msgs::SystemControl :definition-)
      "bool high_voltage
bool fan_override
bool generator
bool work_lights
bool signal_lights
bool imd_override

")



(provide :themis_msgs/SystemControl "c55c2f064ee67c58e2e454e066c5cc98")


