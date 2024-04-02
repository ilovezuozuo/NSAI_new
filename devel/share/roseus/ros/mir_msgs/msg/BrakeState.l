;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::BrakeState)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'BrakeState (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::BRAKESTATE")
  (make-package "MIR_MSGS::BRAKESTATE"))

(in-package "ROS")
;;//! \htmlinclude BrakeState.msg.html


(intern "*UNKNOWN*" (find-package "MIR_MSGS::BRAKESTATE"))
(shadow '*UNKNOWN* (find-package "MIR_MSGS::BRAKESTATE"))
(defconstant mir_msgs::BrakeState::*UNKNOWN* 0)
(intern "*INITIALIZING*" (find-package "MIR_MSGS::BRAKESTATE"))
(shadow '*INITIALIZING* (find-package "MIR_MSGS::BRAKESTATE"))
(defconstant mir_msgs::BrakeState::*INITIALIZING* 1)
(intern "*HOMING*" (find-package "MIR_MSGS::BRAKESTATE"))
(shadow '*HOMING* (find-package "MIR_MSGS::BRAKESTATE"))
(defconstant mir_msgs::BrakeState::*HOMING* 2)
(intern "*ACTIVE*" (find-package "MIR_MSGS::BRAKESTATE"))
(shadow '*ACTIVE* (find-package "MIR_MSGS::BRAKESTATE"))
(defconstant mir_msgs::BrakeState::*ACTIVE* 3)
(intern "*INACTIVE*" (find-package "MIR_MSGS::BRAKESTATE"))
(shadow '*INACTIVE* (find-package "MIR_MSGS::BRAKESTATE"))
(defconstant mir_msgs::BrakeState::*INACTIVE* 4)
(intern "*ACTIVATING*" (find-package "MIR_MSGS::BRAKESTATE"))
(shadow '*ACTIVATING* (find-package "MIR_MSGS::BRAKESTATE"))
(defconstant mir_msgs::BrakeState::*ACTIVATING* 5)
(intern "*DEACTIVATING*" (find-package "MIR_MSGS::BRAKESTATE"))
(shadow '*DEACTIVATING* (find-package "MIR_MSGS::BRAKESTATE"))
(defconstant mir_msgs::BrakeState::*DEACTIVATING* 6)
(intern "*ERROR*" (find-package "MIR_MSGS::BRAKESTATE"))
(shadow '*ERROR* (find-package "MIR_MSGS::BRAKESTATE"))
(defconstant mir_msgs::BrakeState::*ERROR* 7)

(defun mir_msgs::BrakeState-to-symbol (const)
  (cond
        ((= const 0) 'mir_msgs::BrakeState::*UNKNOWN*)
        ((= const 1) 'mir_msgs::BrakeState::*INITIALIZING*)
        ((= const 2) 'mir_msgs::BrakeState::*HOMING*)
        ((= const 3) 'mir_msgs::BrakeState::*ACTIVE*)
        ((= const 4) 'mir_msgs::BrakeState::*INACTIVE*)
        ((= const 5) 'mir_msgs::BrakeState::*ACTIVATING*)
        ((= const 6) 'mir_msgs::BrakeState::*DEACTIVATING*)
        ((= const 7) 'mir_msgs::BrakeState::*ERROR*)
        (t nil)))

(defclass mir_msgs::BrakeState
  :super ros::object
  :slots (_state ))

(defmethod mir_msgs::BrakeState
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

(setf (get mir_msgs::BrakeState :md5sum-) "7042fdf31b88badd5bad421150e1d775")
(setf (get mir_msgs::BrakeState :datatype-) "mir_msgs/BrakeState")
(setf (get mir_msgs::BrakeState :definition-)
      "uint8 UNKNOWN = 0
uint8 INITIALIZING = 1
uint8 HOMING = 2
uint8 ACTIVE = 3
uint8 INACTIVE = 4
uint8 ACTIVATING = 5
uint8 DEACTIVATING = 6
uint8 ERROR = 7

uint8 state

")



(provide :mir_msgs/BrakeState "7042fdf31b88badd5bad421150e1d775")


