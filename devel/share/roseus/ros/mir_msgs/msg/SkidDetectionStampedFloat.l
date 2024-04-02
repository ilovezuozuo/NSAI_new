;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::SkidDetectionStampedFloat)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'SkidDetectionStampedFloat (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::SKIDDETECTIONSTAMPEDFLOAT")
  (make-package "MIR_MSGS::SKIDDETECTIONSTAMPEDFLOAT"))

(in-package "ROS")
;;//! \htmlinclude SkidDetectionStampedFloat.msg.html


(defclass mir_msgs::SkidDetectionStampedFloat
  :super ros::object
  :slots (_time_stamp _value ))

(defmethod mir_msgs::SkidDetectionStampedFloat
  (:init
   (&key
    ((:time_stamp __time_stamp) (instance ros::time :init))
    ((:value __value) 0.0)
    )
   (send-super :init)
   (setq _time_stamp __time_stamp)
   (setq _value (float __value))
   self)
  (:time_stamp
   (&optional __time_stamp)
   (if __time_stamp (setq _time_stamp __time_stamp)) _time_stamp)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; time _time_stamp
    8
    ;; float64 _value
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _time_stamp
       (write-long (send _time_stamp :sec) s) (write-long (send _time_stamp :nsec) s)
     ;; float64 _value
       (sys::poke _value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _time_stamp
     (send _time_stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _time_stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _value
     (setq _value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mir_msgs::SkidDetectionStampedFloat :md5sum-) "4fe24f6282200f91383f507e8f21daa0")
(setf (get mir_msgs::SkidDetectionStampedFloat :datatype-) "mir_msgs/SkidDetectionStampedFloat")
(setf (get mir_msgs::SkidDetectionStampedFloat :definition-)
      "time time_stamp
float64 value

")



(provide :mir_msgs/SkidDetectionStampedFloat "4fe24f6282200f91383f507e8f21daa0")


