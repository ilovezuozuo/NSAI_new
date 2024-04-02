;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::AngleMeasurment)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'AngleMeasurment (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::ANGLEMEASURMENT")
  (make-package "MIR_MSGS::ANGLEMEASURMENT"))

(in-package "ROS")
;;//! \htmlinclude AngleMeasurment.msg.html


(defclass mir_msgs::AngleMeasurment
  :super ros::object
  :slots (_angle _timestamp ))

(defmethod mir_msgs::AngleMeasurment
  (:init
   (&key
    ((:angle __angle) 0.0)
    ((:timestamp __timestamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _angle (float __angle))
   (setq _timestamp __timestamp)
   self)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:serialization-length
   ()
   (+
    ;; float64 _angle
    8
    ;; time _timestamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; time _timestamp
       (write-long (send _timestamp :sec) s) (write-long (send _timestamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _angle
     (setq _angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; time _timestamp
     (send _timestamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _timestamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mir_msgs::AngleMeasurment :md5sum-) "ddfc4345a525f72477cddb8ef1a89946")
(setf (get mir_msgs::AngleMeasurment :datatype-) "mir_msgs/AngleMeasurment")
(setf (get mir_msgs::AngleMeasurment :definition-)
      "float64 angle #radians
time timestamp

")



(provide :mir_msgs/AngleMeasurment "ddfc4345a525f72477cddb8ef1a89946")


