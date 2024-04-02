;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::TimeDebug)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'TimeDebug (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::TIMEDEBUG")
  (make-package "MIR_MSGS::TIMEDEBUG"))

(in-package "ROS")
;;//! \htmlinclude TimeDebug.msg.html


(defclass mir_msgs::TimeDebug
  :super ros::object
  :slots (_description _time_elapsed ))

(defmethod mir_msgs::TimeDebug
  (:init
   (&key
    ((:description __description) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:time_elapsed __time_elapsed) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _description __description)
   (setq _time_elapsed __time_elapsed)
   self)
  (:description
   (&optional __description)
   (if __description (setq _description __description)) _description)
  (:time_elapsed
   (&optional __time_elapsed)
   (if __time_elapsed (setq _time_elapsed __time_elapsed)) _time_elapsed)
  (:serialization-length
   ()
   (+
    ;; string[] _description
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _description)) 4
    ;; float64[] _time_elapsed
    (* 8    (length _time_elapsed)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _description
     (write-long (length _description) s)
     (dolist (elem _description)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float64[] _time_elapsed
     (write-long (length _time_elapsed) s)
     (dotimes (i (length _time_elapsed))
       (sys::poke (elt _time_elapsed i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _description
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _description (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _description i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float64[] _time_elapsed
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _time_elapsed (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _time_elapsed i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get mir_msgs::TimeDebug :md5sum-) "28aa4a0605ad62536b39104e60b07150")
(setf (get mir_msgs::TimeDebug :datatype-) "mir_msgs/TimeDebug")
(setf (get mir_msgs::TimeDebug :definition-)
      "string[] description
float64[] time_elapsed

")



(provide :mir_msgs/TimeDebug "28aa4a0605ad62536b39104e60b07150")


