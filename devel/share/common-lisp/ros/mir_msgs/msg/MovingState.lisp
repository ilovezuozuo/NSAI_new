; Auto-generated. Do not edit!


(cl:in-package mir_msgs-msg)


;//! \htmlinclude MovingState.msg.html

(cl:defclass <MovingState> (roslisp-msg-protocol:ros-message)
  ((moving_state
    :reader moving_state
    :initarg :moving_state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MovingState (<MovingState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MovingState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MovingState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mir_msgs-msg:<MovingState> is deprecated: use mir_msgs-msg:MovingState instead.")))

(cl:ensure-generic-function 'moving_state-val :lambda-list '(m))
(cl:defmethod moving_state-val ((m <MovingState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:moving_state-val is deprecated.  Use mir_msgs-msg:moving_state instead.")
  (moving_state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MovingState>)))
    "Constants for message type '<MovingState>"
  '((:UNKNOWN . 0)
    (:MOVING . 1)
    (:STOPPED . 2)
    (:STANDING_STILL . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MovingState)))
    "Constants for message type 'MovingState"
  '((:UNKNOWN . 0)
    (:MOVING . 1)
    (:STOPPED . 2)
    (:STANDING_STILL . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MovingState>) ostream)
  "Serializes a message object of type '<MovingState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'moving_state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MovingState>) istream)
  "Deserializes a message object of type '<MovingState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'moving_state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MovingState>)))
  "Returns string type for a message object of type '<MovingState>"
  "mir_msgs/MovingState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MovingState)))
  "Returns string type for a message object of type 'MovingState"
  "mir_msgs/MovingState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MovingState>)))
  "Returns md5sum for a message object of type '<MovingState>"
  "639d77af43d34fd858063576e3ed66eb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MovingState)))
  "Returns md5sum for a message object of type 'MovingState"
  "639d77af43d34fd858063576e3ed66eb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MovingState>)))
  "Returns full string definition for message of type '<MovingState>"
  (cl:format cl:nil "uint8 UNKNOWN=0~%uint8 MOVING=1~%uint8 STOPPED=2~%uint8 STANDING_STILL=3~%~%uint8 moving_state	# Current robot moving state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MovingState)))
  "Returns full string definition for message of type 'MovingState"
  (cl:format cl:nil "uint8 UNKNOWN=0~%uint8 MOVING=1~%uint8 STOPPED=2~%uint8 STANDING_STILL=3~%~%uint8 moving_state	# Current robot moving state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MovingState>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MovingState>))
  "Converts a ROS message object to a list"
  (cl:list 'MovingState
    (cl:cons ':moving_state (moving_state msg))
))
