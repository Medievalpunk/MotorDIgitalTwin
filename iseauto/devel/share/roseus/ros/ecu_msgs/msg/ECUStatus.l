;; Auto-generated. Do not edit!


(when (boundp 'ecu_msgs::ECUStatus)
  (if (not (find-package "ECU_MSGS"))
    (make-package "ECU_MSGS"))
  (shadow 'ECUStatus (find-package "ECU_MSGS")))
(unless (find-package "ECU_MSGS::ECUSTATUS")
  (make-package "ECU_MSGS::ECUSTATUS"))

(in-package "ROS")
;;//! \htmlinclude ECUStatus.msg.html


(defclass ecu_msgs::ECUStatus
  :super ros::object
  :slots (_sensors _drive _battery _running _quit ))

(defmethod ecu_msgs::ECUStatus
  (:init
   (&key
    ((:sensors __sensors) nil)
    ((:drive __drive) nil)
    ((:battery __battery) "")
    ((:running __running) nil)
    ((:quit __quit) nil)
    )
   (send-super :init)
   (setq _sensors __sensors)
   (setq _drive __drive)
   (setq _battery (string __battery))
   (setq _running __running)
   (setq _quit __quit)
   self)
  (:sensors
   (&optional __sensors)
   (if __sensors (setq _sensors __sensors)) _sensors)
  (:drive
   (&optional __drive)
   (if __drive (setq _drive __drive)) _drive)
  (:battery
   (&optional __battery)
   (if __battery (setq _battery __battery)) _battery)
  (:running
   (&optional __running)
   (if __running (setq _running __running)) _running)
  (:quit
   (&optional __quit)
   (if __quit (setq _quit __quit)) _quit)
  (:serialization-length
   ()
   (+
    ;; bool _sensors
    1
    ;; bool _drive
    1
    ;; string _battery
    4 (length _battery)
    ;; bool _running
    1
    ;; bool _quit
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _sensors
       (if _sensors (write-byte -1 s) (write-byte 0 s))
     ;; bool _drive
       (if _drive (write-byte -1 s) (write-byte 0 s))
     ;; string _battery
       (write-long (length _battery) s) (princ _battery s)
     ;; bool _running
       (if _running (write-byte -1 s) (write-byte 0 s))
     ;; bool _quit
       (if _quit (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _sensors
     (setq _sensors (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _drive
     (setq _drive (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _battery
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _battery (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _running
     (setq _running (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _quit
     (setq _quit (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ecu_msgs::ECUStatus :md5sum-) "356fcc37a358f36076bdf62f35f15a0d")
(setf (get ecu_msgs::ECUStatus :datatype-) "ecu_msgs/ECUStatus")
(setf (get ecu_msgs::ECUStatus :definition-)
      "bool sensors
bool drive
string battery
bool running
bool quit


")



(provide :ecu_msgs/ECUStatus "356fcc37a358f36076bdf62f35f15a0d")


