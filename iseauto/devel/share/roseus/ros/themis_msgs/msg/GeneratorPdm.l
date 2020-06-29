;; Auto-generated. Do not edit!


(when (boundp 'themis_msgs::GeneratorPdm)
  (if (not (find-package "THEMIS_MSGS"))
    (make-package "THEMIS_MSGS"))
  (shadow 'GeneratorPdm (find-package "THEMIS_MSGS")))
(unless (find-package "THEMIS_MSGS::GENERATORPDM")
  (make-package "THEMIS_MSGS::GENERATORPDM"))

(in-package "ROS")
;;//! \htmlinclude GeneratorPdm.msg.html


(defclass themis_msgs::GeneratorPdm
  :super ros::object
  :slots (_motor_coolant_temp _engine_coolant_temp ))

(defmethod themis_msgs::GeneratorPdm
  (:init
   (&key
    ((:motor_coolant_temp __motor_coolant_temp) 0.0)
    ((:engine_coolant_temp __engine_coolant_temp) 0.0)
    )
   (send-super :init)
   (setq _motor_coolant_temp (float __motor_coolant_temp))
   (setq _engine_coolant_temp (float __engine_coolant_temp))
   self)
  (:motor_coolant_temp
   (&optional __motor_coolant_temp)
   (if __motor_coolant_temp (setq _motor_coolant_temp __motor_coolant_temp)) _motor_coolant_temp)
  (:engine_coolant_temp
   (&optional __engine_coolant_temp)
   (if __engine_coolant_temp (setq _engine_coolant_temp __engine_coolant_temp)) _engine_coolant_temp)
  (:serialization-length
   ()
   (+
    ;; float32 _motor_coolant_temp
    4
    ;; float32 _engine_coolant_temp
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _motor_coolant_temp
       (sys::poke _motor_coolant_temp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _engine_coolant_temp
       (sys::poke _engine_coolant_temp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _motor_coolant_temp
     (setq _motor_coolant_temp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _engine_coolant_temp
     (setq _engine_coolant_temp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get themis_msgs::GeneratorPdm :md5sum-) "25d429d660d1faae2c98790eb6d65e0e")
(setf (get themis_msgs::GeneratorPdm :datatype-) "themis_msgs/GeneratorPdm")
(setf (get themis_msgs::GeneratorPdm :definition-)
      "float32 motor_coolant_temp
float32 engine_coolant_temp

")



(provide :themis_msgs/GeneratorPdm "25d429d660d1faae2c98790eb6d65e0e")


