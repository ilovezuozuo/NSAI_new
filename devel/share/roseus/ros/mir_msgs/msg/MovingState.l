;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::MovingState)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'MovingState (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::MOVINGSTATE")
  (make-package "MIR_MSGS::MOVINGSTATE"))

(in-package "ROS")
;;//! \htmlinclude MovingState.msg.html


(intern "*UNKNOWN*" (find-package "MIR_MSGS::MOVINGSTATE"))
(shadow '*UNKNOWN* (find-package "MIR_MSGS::MOVINGSTATE"))
(defconstant mir_msgs::MovingState::*UNKNOWN* 0)
(intern "*MOVING*" (find-package "MIR_MSGS::MOVINGSTATE"))
(shadow '*MOVING* (find-package "MIR_MSGS::MOVINGSTATE"))
(defconstant mir_msgs::MovingState::*MOVING* 1)
(intern "*STOPPED*" (find-package "MIR_MSGS::MOVINGSTATE"))
(shadow '*STOPPED* (find-package "MIR_MSGS::MOVINGSTATE"))
(defconstant mir_msgs::MovingState::*STOPPED* 2)
(intern "*STANDING_STILL*" (find-package "MIR_MSGS::MOVINGSTATE"))
(shadow '*STANDING_STILL* (find-package "MIR_MSGS::MOVINGSTATE"))
(defconstant mir_msgs::MovingState::*STANDING_STILL* 3)

(defun mir_msgs::MovingState-to-symbol (const)
  (cond
        ((= const 0) 'mir_msgs::MovingState::*UNKNOWN*)
        ((= const 1) 'mir_msgs::MovingState::*MOVING*)
        ((= const 2) 'mir_msgs::MovingState::*STOPPED*)
        ((= const 3) 'mir_msgs::MovingState::*STANDING_STILL*)
        (t nil)))

(defclass mir_msgs::MovingState
  :super ros::object
  :slots (_moving_state ))

(defmethod mir_msgs::MovingState
  (:init
   (&key
    ((:moving_state __moving_state) 0)
    )
   (send-super :init)
   (setq _moving_state (round __moving_state))
   self)
  (:moving_state
   (&optional __moving_state)
   (if __moving_state (setq _moving_state __moving_state)) _moving_state)
  (:serialization-length
   ()
   (+
    ;; uint8 _moving_state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _moving_state
       (write-byte _moving_state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _moving_state
     (setq _moving_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mir_msgs::MovingState :md5sum-) "639d77af43d34fd858063576e3ed66eb")
(setf (get mir_msgs::MovingState :datatype-) "mir_msgs/MovingState")
(setf (get mir_msgs::MovingState :definition-)
      "uint8 UNKNOWN=0
uint8 MOVING=1
uint8 STOPPED=2
uint8 STANDING_STILL=3

uint8 moving_state	# Current robot moving state

")



(provide :mir_msgs/MovingState "639d77af43d34fd858063576e3ed66eb")


