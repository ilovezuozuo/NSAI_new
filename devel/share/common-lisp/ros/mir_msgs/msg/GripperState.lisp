; Auto-generated. Do not edit!


(cl:in-package mir_msgs-msg)


;//! \htmlinclude GripperState.msg.html

(cl:defclass <GripperState> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GripperState (<GripperState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GripperState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GripperState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mir_msgs-msg:<GripperState> is deprecated: use mir_msgs-msg:GripperState instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <GripperState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:state-val is deprecated.  Use mir_msgs-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<GripperState>)))
    "Constants for message type '<GripperState>"
  '((:LOCK_UNKNOWN . 0)
    (:LOCK_HOMING . 1)
    (:LOCK_OPEN . 2)
    (:LOCK_OPENING . 3)
    (:LOCK_CLOSED . 4)
    (:LOCK_CLOSING . 6)
    (:LOCK_ERROR . 9))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'GripperState)))
    "Constants for message type 'GripperState"
  '((:LOCK_UNKNOWN . 0)
    (:LOCK_HOMING . 1)
    (:LOCK_OPEN . 2)
    (:LOCK_OPENING . 3)
    (:LOCK_CLOSED . 4)
    (:LOCK_CLOSING . 6)
    (:LOCK_ERROR . 9))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GripperState>) ostream)
  "Serializes a message object of type '<GripperState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GripperState>) istream)
  "Deserializes a message object of type '<GripperState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GripperState>)))
  "Returns string type for a message object of type '<GripperState>"
  "mir_msgs/GripperState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GripperState)))
  "Returns string type for a message object of type 'GripperState"
  "mir_msgs/GripperState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GripperState>)))
  "Returns md5sum for a message object of type '<GripperState>"
  "c4d1678902578daa427fe7bcf3c25edc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GripperState)))
  "Returns md5sum for a message object of type 'GripperState"
  "c4d1678902578daa427fe7bcf3c25edc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GripperState>)))
  "Returns full string definition for message of type '<GripperState>"
  (cl:format cl:nil "uint8 LOCK_UNKNOWN = 0~%uint8 LOCK_HOMING = 1~%uint8 LOCK_OPEN = 2~%uint8 LOCK_OPENING = 3~%uint8 LOCK_CLOSED = 4~%uint8 LOCK_CLOSING = 6~%uint8 LOCK_ERROR = 9~%~%uint8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GripperState)))
  "Returns full string definition for message of type 'GripperState"
  (cl:format cl:nil "uint8 LOCK_UNKNOWN = 0~%uint8 LOCK_HOMING = 1~%uint8 LOCK_OPEN = 2~%uint8 LOCK_OPENING = 3~%uint8 LOCK_CLOSED = 4~%uint8 LOCK_CLOSING = 6~%uint8 LOCK_ERROR = 9~%~%uint8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GripperState>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GripperState>))
  "Converts a ROS message object to a list"
  (cl:list 'GripperState
    (cl:cons ':state (state msg))
))
