;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::GripperState)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'GripperState (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::GRIPPERSTATE")
  (make-package "MIR_MSGS::GRIPPERSTATE"))

(in-package "ROS")
;;//! \htmlinclude GripperState.msg.html


(intern "*LOCK_UNKNOWN*" (find-package "MIR_MSGS::GRIPPERSTATE"))
(shadow '*LOCK_UNKNOWN* (find-package "MIR_MSGS::GRIPPERSTATE"))
(defconstant mir_msgs::GripperState::*LOCK_UNKNOWN* 0)
(intern "*LOCK_HOMING*" (find-package "MIR_MSGS::GRIPPERSTATE"))
(shadow '*LOCK_HOMING* (find-package "MIR_MSGS::GRIPPERSTATE"))
(defconstant mir_msgs::GripperState::*LOCK_HOMING* 1)
(intern "*LOCK_OPEN*" (find-package "MIR_MSGS::GRIPPERSTATE"))
(shadow '*LOCK_OPEN* (find-package "MIR_MSGS::GRIPPERSTATE"))
(defconstant mir_msgs::GripperState::*LOCK_OPEN* 2)
(intern "*LOCK_OPENING*" (find-package "MIR_MSGS::GRIPPERSTATE"))
(shadow '*LOCK_OPENING* (find-package "MIR_MSGS::GRIPPERSTATE"))
(defconstant mir_msgs::GripperState::*LOCK_OPENING* 3)
(intern "*LOCK_CLOSED*" (find-package "MIR_MSGS::GRIPPERSTATE"))
(shadow '*LOCK_CLOSED* (find-package "MIR_MSGS::GRIPPERSTATE"))
(defconstant mir_msgs::GripperState::*LOCK_CLOSED* 4)
(intern "*LOCK_CLOSING*" (find-package "MIR_MSGS::GRIPPERSTATE"))
(shadow '*LOCK_CLOSING* (find-package "MIR_MSGS::GRIPPERSTATE"))
(defconstant mir_msgs::GripperState::*LOCK_CLOSING* 6)
(intern "*LOCK_ERROR*" (find-package "MIR_MSGS::GRIPPERSTATE"))
(shadow '*LOCK_ERROR* (find-package "MIR_MSGS::GRIPPERSTATE"))
(defconstant mir_msgs::GripperState::*LOCK_ERROR* 9)

(defun mir_msgs::GripperState-to-symbol (const)
  (cond
        ((= const 0) 'mir_msgs::GripperState::*LOCK_UNKNOWN*)
        ((= const 1) 'mir_msgs::GripperState::*LOCK_HOMING*)
        ((= const 2) 'mir_msgs::GripperState::*LOCK_OPEN*)
        ((= const 3) 'mir_msgs::GripperState::*LOCK_OPENING*)
        ((= const 4) 'mir_msgs::GripperState::*LOCK_CLOSED*)
        ((= const 6) 'mir_msgs::GripperState::*LOCK_CLOSING*)
        ((= const 9) 'mir_msgs::GripperState::*LOCK_ERROR*)
        (t nil)))

(defclass mir_msgs::GripperState
  :super ros::object
  :slots (_state ))

(defmethod mir_msgs::GripperState
  (:init
   (&key
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _state (round __state))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; uint8 _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _state
       (write-byte _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mir_msgs::GripperState :md5sum-) "c4d1678902578daa427fe7bcf3c25edc")
(setf (get mir_msgs::GripperState :datatype-) "mir_msgs/GripperState")
(setf (get mir_msgs::GripperState :definition-)
      "uint8 LOCK_UNKNOWN = 0
uint8 LOCK_HOMING = 1
uint8 LOCK_OPEN = 2
uint8 LOCK_OPENING = 3
uint8 LOCK_CLOSED = 4
uint8 LOCK_CLOSING = 6
uint8 LOCK_ERROR = 9

uint8 state

")



(provide :mir_msgs/GripperState "c4d1678902578daa427fe7bcf3c25edc")


