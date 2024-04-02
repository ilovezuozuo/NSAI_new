;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::SkidDetectionDiff)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'SkidDetectionDiff (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::SKIDDETECTIONDIFF")
  (make-package "MIR_MSGS::SKIDDETECTIONDIFF"))

(in-package "ROS")
;;//! \htmlinclude SkidDetectionDiff.msg.html


(defclass mir_msgs::SkidDetectionDiff
  :super ros::object
  :slots (_time_stamp _enc_acc_x _enc_acc_y _enc_rot_th _imu_acc_x _imu_acc_y _imu_rot_th _diff_acc_x _diff_acc_y _diff_rot_th ))

(defmethod mir_msgs::SkidDetectionDiff
  (:init
   (&key
    ((:time_stamp __time_stamp) (instance ros::time :init))
    ((:enc_acc_x __enc_acc_x) 0.0)
    ((:enc_acc_y __enc_acc_y) 0.0)
    ((:enc_rot_th __enc_rot_th) 0.0)
    ((:imu_acc_x __imu_acc_x) 0.0)
    ((:imu_acc_y __imu_acc_y) 0.0)
    ((:imu_rot_th __imu_rot_th) 0.0)
    ((:diff_acc_x __diff_acc_x) 0.0)
    ((:diff_acc_y __diff_acc_y) 0.0)
    ((:diff_rot_th __diff_rot_th) 0.0)
    )
   (send-super :init)
   (setq _time_stamp __time_stamp)
   (setq _enc_acc_x (float __enc_acc_x))
   (setq _enc_acc_y (float __enc_acc_y))
   (setq _enc_rot_th (float __enc_rot_th))
   (setq _imu_acc_x (float __imu_acc_x))
   (setq _imu_acc_y (float __imu_acc_y))
   (setq _imu_rot_th (float __imu_rot_th))
   (setq _diff_acc_x (float __diff_acc_x))
   (setq _diff_acc_y (float __diff_acc_y))
   (setq _diff_rot_th (float __diff_rot_th))
   self)
  (:time_stamp
   (&optional __time_stamp)
   (if __time_stamp (setq _time_stamp __time_stamp)) _time_stamp)
  (:enc_acc_x
   (&optional __enc_acc_x)
   (if __enc_acc_x (setq _enc_acc_x __enc_acc_x)) _enc_acc_x)
  (:enc_acc_y
   (&optional __enc_acc_y)
   (if __enc_acc_y (setq _enc_acc_y __enc_acc_y)) _enc_acc_y)
  (:enc_rot_th
   (&optional __enc_rot_th)
   (if __enc_rot_th (setq _enc_rot_th __enc_rot_th)) _enc_rot_th)
  (:imu_acc_x
   (&optional __imu_acc_x)
   (if __imu_acc_x (setq _imu_acc_x __imu_acc_x)) _imu_acc_x)
  (:imu_acc_y
   (&optional __imu_acc_y)
   (if __imu_acc_y (setq _imu_acc_y __imu_acc_y)) _imu_acc_y)
  (:imu_rot_th
   (&optional __imu_rot_th)
   (if __imu_rot_th (setq _imu_rot_th __imu_rot_th)) _imu_rot_th)
  (:diff_acc_x
   (&optional __diff_acc_x)
   (if __diff_acc_x (setq _diff_acc_x __diff_acc_x)) _diff_acc_x)
  (:diff_acc_y
   (&optional __diff_acc_y)
   (if __diff_acc_y (setq _diff_acc_y __diff_acc_y)) _diff_acc_y)
  (:diff_rot_th
   (&optional __diff_rot_th)
   (if __diff_rot_th (setq _diff_rot_th __diff_rot_th)) _diff_rot_th)
  (:serialization-length
   ()
   (+
    ;; time _time_stamp
    8
    ;; float64 _enc_acc_x
    8
    ;; float64 _enc_acc_y
    8
    ;; float64 _enc_rot_th
    8
    ;; float64 _imu_acc_x
    8
    ;; float64 _imu_acc_y
    8
    ;; float64 _imu_rot_th
    8
    ;; float64 _diff_acc_x
    8
    ;; float64 _diff_acc_y
    8
    ;; float64 _diff_rot_th
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _time_stamp
       (write-long (send _time_stamp :sec) s) (write-long (send _time_stamp :nsec) s)
     ;; float64 _enc_acc_x
       (sys::poke _enc_acc_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _enc_acc_y
       (sys::poke _enc_acc_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _enc_rot_th
       (sys::poke _enc_rot_th (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _imu_acc_x
       (sys::poke _imu_acc_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _imu_acc_y
       (sys::poke _imu_acc_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _imu_rot_th
       (sys::poke _imu_rot_th (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _diff_acc_x
       (sys::poke _diff_acc_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _diff_acc_y
       (sys::poke _diff_acc_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _diff_rot_th
       (sys::poke _diff_rot_th (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _time_stamp
     (send _time_stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _time_stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _enc_acc_x
     (setq _enc_acc_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _enc_acc_y
     (setq _enc_acc_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _enc_rot_th
     (setq _enc_rot_th (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _imu_acc_x
     (setq _imu_acc_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _imu_acc_y
     (setq _imu_acc_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _imu_rot_th
     (setq _imu_rot_th (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _diff_acc_x
     (setq _diff_acc_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _diff_acc_y
     (setq _diff_acc_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _diff_rot_th
     (setq _diff_rot_th (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mir_msgs::SkidDetectionDiff :md5sum-) "d37dfc4b9ebb57cf8f2fa9160507f6d5")
(setf (get mir_msgs::SkidDetectionDiff :datatype-) "mir_msgs/SkidDetectionDiff")
(setf (get mir_msgs::SkidDetectionDiff :definition-)
      "time time_stamp
float64 enc_acc_x
float64 enc_acc_y
float64 enc_rot_th


float64 imu_acc_x
float64 imu_acc_y
float64 imu_rot_th


float64 diff_acc_x
float64 diff_acc_y
float64 diff_rot_th

")



(provide :mir_msgs/SkidDetectionDiff "d37dfc4b9ebb57cf8f2fa9160507f6d5")


