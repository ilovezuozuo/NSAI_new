; Auto-generated. Do not edit!


(cl:in-package mir_msgs-msg)


;//! \htmlinclude BrakeState.msg.html

(cl:defclass <BrakeState> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass BrakeState (<BrakeState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BrakeState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BrakeState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mir_msgs-msg:<BrakeState> is deprecated: use mir_msgs-msg:BrakeState instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <BrakeState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:state-val is deprecated.  Use mir_msgs-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<BrakeState>)))
    "Constants for message type '<BrakeState>"
  '((:UNKNOWN . 0)
    (:INITIALIZING . 1)
    (:HOMING . 2)
    (:ACTIVE . 3)
    (:INACTIVE . 4)
    (:ACTIVATING . 5)
    (:DEACTIVATING . 6)
    (:ERROR . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'BrakeState)))
    "Constants for message type 'BrakeState"
  '((:UNKNOWN . 0)
    (:INITIALIZING . 1)
    (:HOMING . 2)
    (:ACTIVE . 3)
    (:INACTIVE . 4)
    (:ACTIVATING . 5)
    (:DEACTIVATING . 6)
    (:ERROR . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BrakeState>) ostream)
  "Serializes a message object of type '<BrakeState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BrakeState>) istream)
  "Deserializes a message object of type '<BrakeState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BrakeState>)))
  "Returns string type for a message object of type '<BrakeState>"
  "mir_msgs/BrakeState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BrakeState)))
  "Returns string type for a message object of type 'BrakeState"
  "mir_msgs/BrakeState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BrakeState>)))
  "Returns md5sum for a message object of type '<BrakeState>"
  "7042fdf31b88badd5bad421150e1d775")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BrakeState)))
  "Returns md5sum for a message object of type 'BrakeState"
  "7042fdf31b88badd5bad421150e1d775")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BrakeState>)))
  "Returns full string definition for message of type '<BrakeState>"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 INITIALIZING = 1~%uint8 HOMING = 2~%uint8 ACTIVE = 3~%uint8 INACTIVE = 4~%uint8 ACTIVATING = 5~%uint8 DEACTIVATING = 6~%uint8 ERROR = 7~%~%uint8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BrakeState)))
  "Returns full string definition for message of type 'BrakeState"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 INITIALIZING = 1~%uint8 HOMING = 2~%uint8 ACTIVE = 3~%uint8 INACTIVE = 4~%uint8 ACTIVATING = 5~%uint8 DEACTIVATING = 6~%uint8 ERROR = 7~%~%uint8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BrakeState>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BrakeState>))
  "Converts a ROS message object to a list"
  (cl:list 'BrakeState
    (cl:cons ':state (state msg))
))
