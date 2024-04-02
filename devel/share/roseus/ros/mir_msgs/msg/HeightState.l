;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::HeightState)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'HeightState (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::HEIGHTSTATE")
  (make-package "MIR_MSGS::HEIGHTSTATE"))

(in-package "ROS")
;;//! \htmlinclude HeightState.msg.html


(intern "*HEIGHT_UNKNOWN*" (find-package "MIR_MSGS::HEIGHTSTATE"))
(shadow '*HEIGHT_UNKNOWN* (find-package "MIR_MSGS::HEIGHTSTATE"))
(defconstant mir_msgs::HeightState::*HEIGHT_UNKNOWN* 0)
(intern "*HEIGHT_HOMING*" (find-package "MIR_MSGS::HEIGHTSTATE"))
(shadow '*HEIGHT_HOMING* (find-package "MIR_MSGS::HEIGHTSTATE"))
(defconstant mir_msgs::HeightState::*HEIGHT_HOMING* 1)
(intern "*HEIGHT_IDLE*" (find-package "MIR_MSGS::HEIGHTSTATE"))
(shadow '*HEIGHT_IDLE* (find-package "MIR_MSGS::HEIGHTSTATE"))
(defconstant mir_msgs::HeightState::*HEIGHT_IDLE* 2)
(intern "*HEIGHT_CHANGING*" (find-package "MIR_MSGS::HEIGHTSTATE"))
(shadow '*HEIGHT_CHANGING* (find-package "MIR_MSGS::HEIGHTSTATE"))
(defconstant mir_msgs::HeightState::*HEIGHT_CHANGING* 3)
(intern "*HEIGHT_ERROR*" (find-package "MIR_MSGS::HEIGHTSTATE"))
(shadow '*HEIGHT_ERROR* (find-package "MIR_MSGS::HEIGHTSTATE"))
(defconstant mir_msgs::HeightState::*HEIGHT_ERROR* 4)

(defun mir_msgs::HeightState-to-symbol (const)
  (cond
        ((= const 0) 'mir_msgs::HeightState::*HEIGHT_UNKNOWN*)
        ((= const 1) 'mir_msgs::HeightState::*HEIGHT_HOMING*)
        ((= const 2) 'mir_msgs::HeightState::*HEIGHT_IDLE*)
        ((= const 3) 'mir_msgs::HeightState::*HEIGHT_CHANGING*)
        ((= const 4) 'mir_msgs::HeightState::*HEIGHT_ERROR*)
        (t nil)))

(defclass mir_msgs::HeightState
  :super ros::object
  :slots (_state ))

(defmethod mir_msgs::HeightState
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

(setf (get mir_msgs::HeightState :md5sum-) "40f05383f94b3ee2b3b2908ab687df73")
(setf (get mir_msgs::HeightState :datatype-) "mir_msgs/HeightState")
(setf (get mir_msgs::HeightState :definition-)
      "uint8 HEIGHT_UNKNOWN = 0
uint8 HEIGHT_HOMING = 1
uint8 HEIGHT_IDLE = 2
uint8 HEIGHT_CHANGING = 3
uint8 HEIGHT_ERROR = 4

uint8 state

")



(provide :mir_msgs/HeightState "40f05383f94b3ee2b3b2908ab687df73")


