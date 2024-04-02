; Auto-generated. Do not edit!


(cl:in-package mir_msgs-msg)


;//! \htmlinclude MirLocalPlannerPathTypes.msg.html

(cl:defclass <MirLocalPlannerPathTypes> (roslisp-msg-protocol:ros-message)
  ((path_type
    :reader path_type
    :initarg :path_type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MirLocalPlannerPathTypes (<MirLocalPlannerPathTypes>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MirLocalPlannerPathTypes>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MirLocalPlannerPathTypes)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mir_msgs-msg:<MirLocalPlannerPathTypes> is deprecated: use mir_msgs-msg:MirLocalPlannerPathTypes instead.")))

(cl:ensure-generic-function 'path_type-val :lambda-list '(m))
(cl:defmethod path_type-val ((m <MirLocalPlannerPathTypes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:path_type-val is deprecated.  Use mir_msgs-msg:path_type instead.")
  (path_type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MirLocalPlannerPathTypes>)))
    "Constants for message type '<MirLocalPlannerPathTypes>"
  '((:REVERSE_TROLLEY_STANDARD . 1)
    (:REVERSE_TROLLEY_FAST . 2)
    (:REVERSE_TROLLEY_COMPACT . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MirLocalPlannerPathTypes)))
    "Constants for message type 'MirLocalPlannerPathTypes"
  '((:REVERSE_TROLLEY_STANDARD . 1)
    (:REVERSE_TROLLEY_FAST . 2)
    (:REVERSE_TROLLEY_COMPACT . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MirLocalPlannerPathTypes>) ostream)
  "Serializes a message object of type '<MirLocalPlannerPathTypes>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'path_type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MirLocalPlannerPathTypes>) istream)
  "Deserializes a message object of type '<MirLocalPlannerPathTypes>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'path_type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MirLocalPlannerPathTypes>)))
  "Returns string type for a message object of type '<MirLocalPlannerPathTypes>"
  "mir_msgs/MirLocalPlannerPathTypes")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MirLocalPlannerPathTypes)))
  "Returns string type for a message object of type 'MirLocalPlannerPathTypes"
  "mir_msgs/MirLocalPlannerPathTypes")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MirLocalPlannerPathTypes>)))
  "Returns md5sum for a message object of type '<MirLocalPlannerPathTypes>"
  "8623c1975cf9d124008b41d106f7a6df")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MirLocalPlannerPathTypes)))
  "Returns md5sum for a message object of type 'MirLocalPlannerPathTypes"
  "8623c1975cf9d124008b41d106f7a6df")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MirLocalPlannerPathTypes>)))
  "Returns full string definition for message of type '<MirLocalPlannerPathTypes>"
  (cl:format cl:nil "uint8 REVERSE_TROLLEY_STANDARD=1~%uint8 REVERSE_TROLLEY_FAST=2~%uint8 REVERSE_TROLLEY_COMPACT=3~%~%~%uint8 path_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MirLocalPlannerPathTypes)))
  "Returns full string definition for message of type 'MirLocalPlannerPathTypes"
  (cl:format cl:nil "uint8 REVERSE_TROLLEY_STANDARD=1~%uint8 REVERSE_TROLLEY_FAST=2~%uint8 REVERSE_TROLLEY_COMPACT=3~%~%~%uint8 path_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MirLocalPlannerPathTypes>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MirLocalPlannerPathTypes>))
  "Converts a ROS message object to a list"
  (cl:list 'MirLocalPlannerPathTypes
    (cl:cons ':path_type (path_type msg))
))
