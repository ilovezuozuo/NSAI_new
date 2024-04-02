;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::MirLocalPlannerPathTypes)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'MirLocalPlannerPathTypes (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::MIRLOCALPLANNERPATHTYPES")
  (make-package "MIR_MSGS::MIRLOCALPLANNERPATHTYPES"))

(in-package "ROS")
;;//! \htmlinclude MirLocalPlannerPathTypes.msg.html


(intern "*REVERSE_TROLLEY_STANDARD*" (find-package "MIR_MSGS::MIRLOCALPLANNERPATHTYPES"))
(shadow '*REVERSE_TROLLEY_STANDARD* (find-package "MIR_MSGS::MIRLOCALPLANNERPATHTYPES"))
(defconstant mir_msgs::MirLocalPlannerPathTypes::*REVERSE_TROLLEY_STANDARD* 1)
(intern "*REVERSE_TROLLEY_FAST*" (find-package "MIR_MSGS::MIRLOCALPLANNERPATHTYPES"))
(shadow '*REVERSE_TROLLEY_FAST* (find-package "MIR_MSGS::MIRLOCALPLANNERPATHTYPES"))
(defconstant mir_msgs::MirLocalPlannerPathTypes::*REVERSE_TROLLEY_FAST* 2)
(intern "*REVERSE_TROLLEY_COMPACT*" (find-package "MIR_MSGS::MIRLOCALPLANNERPATHTYPES"))
(shadow '*REVERSE_TROLLEY_COMPACT* (find-package "MIR_MSGS::MIRLOCALPLANNERPATHTYPES"))
(defconstant mir_msgs::MirLocalPlannerPathTypes::*REVERSE_TROLLEY_COMPACT* 3)

(defun mir_msgs::MirLocalPlannerPathTypes-to-symbol (const)
  (cond
        ((= const 1) 'mir_msgs::MirLocalPlannerPathTypes::*REVERSE_TROLLEY_STANDARD*)
        ((= const 2) 'mir_msgs::MirLocalPlannerPathTypes::*REVERSE_TROLLEY_FAST*)
        ((= const 3) 'mir_msgs::MirLocalPlannerPathTypes::*REVERSE_TROLLEY_COMPACT*)
        (t nil)))

(defclass mir_msgs::MirLocalPlannerPathTypes
  :super ros::object
  :slots (_path_type ))

(defmethod mir_msgs::MirLocalPlannerPathTypes
  (:init
   (&key
    ((:path_type __path_type) 0)
    )
   (send-super :init)
   (setq _path_type (round __path_type))
   self)
  (:path_type
   (&optional __path_type)
   (if __path_type (setq _path_type __path_type)) _path_type)
  (:serialization-length
   ()
   (+
    ;; uint8 _path_type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _path_type
       (write-byte _path_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _path_type
     (setq _path_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mir_msgs::MirLocalPlannerPathTypes :md5sum-) "8623c1975cf9d124008b41d106f7a6df")
(setf (get mir_msgs::MirLocalPlannerPathTypes :datatype-) "mir_msgs/MirLocalPlannerPathTypes")
(setf (get mir_msgs::MirLocalPlannerPathTypes :definition-)
      "uint8 REVERSE_TROLLEY_STANDARD=1
uint8 REVERSE_TROLLEY_FAST=2
uint8 REVERSE_TROLLEY_COMPACT=3


uint8 path_type

")



(provide :mir_msgs/MirLocalPlannerPathTypes "8623c1975cf9d124008b41d106f7a6df")


