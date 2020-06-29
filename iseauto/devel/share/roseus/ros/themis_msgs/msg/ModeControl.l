;; Auto-generated. Do not edit!


(when (boundp 'themis_msgs::ModeControl)
  (if (not (find-package "THEMIS_MSGS"))
    (make-package "THEMIS_MSGS"))
  (shadow 'ModeControl (find-package "THEMIS_MSGS")))
(unless (find-package "THEMIS_MSGS::MODECONTROL")
  (make-package "THEMIS_MSGS::MODECONTROL"))

(in-package "ROS")
;;//! \htmlinclude ModeControl.msg.html


(defclass themis_msgs::ModeControl
  :super ros::object
  :slots (_vehicle _generator _speed _brake _charge ))

(defmethod themis_msgs::ModeControl
  (:init
   (&key
    ((:vehicle __vehicle) 0)
    ((:generator __generator) 0)
    ((:speed __speed) 0)
    ((:brake __brake) 0)
    ((:charge __charge) 0)
    )
   (send-super :init)
   (setq _vehicle (round __vehicle))
   (setq _generator (round __generator))
   (setq _speed (round __speed))
   (setq _brake (round __brake))
   (setq _charge (round __charge))
   self)
  (:vehicle
   (&optional __vehicle)
   (if __vehicle (setq _vehicle __vehicle)) _vehicle)
  (:generator
   (&optional __generator)
   (if __generator (setq _generator __generator)) _generator)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:brake
   (&optional __brake)
   (if __brake (setq _brake __brake)) _brake)
  (:charge
   (&optional __charge)
   (if __charge (setq _charge __charge)) _charge)
  (:serialization-length
   ()
   (+
    ;; uint8 _vehicle
    1
    ;; uint8 _generator
    1
    ;; uint8 _speed
    1
    ;; uint8 _brake
    1
    ;; uint8 _charge
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _vehicle
       (write-byte _vehicle s)
     ;; uint8 _generator
       (write-byte _generator s)
     ;; uint8 _speed
       (write-byte _speed s)
     ;; uint8 _brake
       (write-byte _brake s)
     ;; uint8 _charge
       (write-byte _charge s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _vehicle
     (setq _vehicle (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _generator
     (setq _generator (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _speed
     (setq _speed (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _brake
     (setq _brake (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _charge
     (setq _charge (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get themis_msgs::ModeControl :md5sum-) "ad5484922684f97570b593292ada2bf9")
(setf (get themis_msgs::ModeControl :datatype-) "themis_msgs/ModeControl")
(setf (get themis_msgs::ModeControl :definition-)
      "uint8 vehicle
uint8 generator
uint8 speed
uint8 brake
uint8 charge

")



(provide :themis_msgs/ModeControl "ad5484922684f97570b593292ada2bf9")


