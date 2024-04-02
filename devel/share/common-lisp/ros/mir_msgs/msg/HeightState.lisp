; Auto-generated. Do not edit!


(cl:in-package mir_msgs-msg)


;//! \htmlinclude HeightState.msg.html

(cl:defclass <HeightState> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass HeightState (<HeightState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HeightState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HeightState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mir_msgs-msg:<HeightState> is deprecated: use mir_msgs-msg:HeightState instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <HeightState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:state-val is deprecated.  Use mir_msgs-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<HeightState>)))
    "Constants for message type '<HeightState>"
  '((:HEIGHT_UNKNOWN . 0)
    (:HEIGHT_HOMING . 1)
    (:HEIGHT_IDLE . 2)
    (:HEIGHT_CHANGING . 3)
    (:HEIGHT_ERROR . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'HeightState)))
    "Constants for message type 'HeightState"
  '((:HEIGHT_UNKNOWN . 0)
    (:HEIGHT_HOMING . 1)
    (:HEIGHT_IDLE . 2)
    (:HEIGHT_CHANGING . 3)
    (:HEIGHT_ERROR . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HeightState>) ostream)
  "Serializes a message object of type '<HeightState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HeightState>) istream)
  "Deserializes a message object of type '<HeightState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HeightState>)))
  "Returns string type for a message object of type '<HeightState>"
  "mir_msgs/HeightState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HeightState)))
  "Returns string type for a message object of type 'HeightState"
  "mir_msgs/HeightState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HeightState>)))
  "Returns md5sum for a message object of type '<HeightState>"
  "40f05383f94b3ee2b3b2908ab687df73")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HeightState)))
  "Returns md5sum for a message object of type 'HeightState"
  "40f05383f94b3ee2b3b2908ab687df73")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HeightState>)))
  "Returns full string definition for message of type '<HeightState>"
  (cl:format cl:nil "uint8 HEIGHT_UNKNOWN = 0~%uint8 HEIGHT_HOMING = 1~%uint8 HEIGHT_IDLE = 2~%uint8 HEIGHT_CHANGING = 3~%uint8 HEIGHT_ERROR = 4~%~%uint8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HeightState)))
  "Returns full string definition for message of type 'HeightState"
  (cl:format cl:nil "uint8 HEIGHT_UNKNOWN = 0~%uint8 HEIGHT_HOMING = 1~%uint8 HEIGHT_IDLE = 2~%uint8 HEIGHT_CHANGING = 3~%uint8 HEIGHT_ERROR = 4~%~%uint8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HeightState>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HeightState>))
  "Converts a ROS message object to a list"
  (cl:list 'HeightState
    (cl:cons ':state (state msg))
))
