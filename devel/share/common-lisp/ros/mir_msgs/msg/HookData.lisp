; Auto-generated. Do not edit!


(cl:in-package mir_msgs-msg)


;//! \htmlinclude HookData.msg.html

(cl:defclass <HookData> (roslisp-msg-protocol:ros-message)
  ((angle
    :reader angle
    :initarg :angle
    :type mir_msgs-msg:AngleMeasurment
    :initform (cl:make-instance 'mir_msgs-msg:AngleMeasurment))
   (height
    :reader height
    :initarg :height
    :type cl:float
    :initform 0.0)
   (length
    :reader length
    :initarg :length
    :type cl:float
    :initform 0.0)
   (brake_state
    :reader brake_state
    :initarg :brake_state
    :type cl:fixnum
    :initform 0)
   (gripper_state
    :reader gripper_state
    :initarg :gripper_state
    :type cl:fixnum
    :initform 0)
   (height_state
    :reader height_state
    :initarg :height_state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass HookData (<HookData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HookData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HookData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mir_msgs-msg:<HookData> is deprecated: use mir_msgs-msg:HookData instead.")))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <HookData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:angle-val is deprecated.  Use mir_msgs-msg:angle instead.")
  (angle m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <HookData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:height-val is deprecated.  Use mir_msgs-msg:height instead.")
  (height m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <HookData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:length-val is deprecated.  Use mir_msgs-msg:length instead.")
  (length m))

(cl:ensure-generic-function 'brake_state-val :lambda-list '(m))
(cl:defmethod brake_state-val ((m <HookData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:brake_state-val is deprecated.  Use mir_msgs-msg:brake_state instead.")
  (brake_state m))

(cl:ensure-generic-function 'gripper_state-val :lambda-list '(m))
(cl:defmethod gripper_state-val ((m <HookData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:gripper_state-val is deprecated.  Use mir_msgs-msg:gripper_state instead.")
  (gripper_state m))

(cl:ensure-generic-function 'height_state-val :lambda-list '(m))
(cl:defmethod height_state-val ((m <HookData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:height_state-val is deprecated.  Use mir_msgs-msg:height_state instead.")
  (height_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HookData>) ostream)
  "Serializes a message object of type '<HookData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angle) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'brake_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gripper_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'height_state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HookData>) istream)
  "Deserializes a message object of type '<HookData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angle) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'height) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'length) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'brake_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gripper_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'height_state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HookData>)))
  "Returns string type for a message object of type '<HookData>"
  "mir_msgs/HookData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HookData)))
  "Returns string type for a message object of type 'HookData"
  "mir_msgs/HookData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HookData>)))
  "Returns md5sum for a message object of type '<HookData>"
  "6ea6712dc44c7a41f6da42b055292240")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HookData)))
  "Returns md5sum for a message object of type 'HookData"
  "6ea6712dc44c7a41f6da42b055292240")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HookData>)))
  "Returns full string definition for message of type '<HookData>"
  (cl:format cl:nil "AngleMeasurment angle~%float64 height~%float64 length~%uint8 brake_state~%uint8 gripper_state~%uint8 height_state~%~%================================================================================~%MSG: mir_msgs/AngleMeasurment~%float64 angle #radians~%time timestamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HookData)))
  "Returns full string definition for message of type 'HookData"
  (cl:format cl:nil "AngleMeasurment angle~%float64 height~%float64 length~%uint8 brake_state~%uint8 gripper_state~%uint8 height_state~%~%================================================================================~%MSG: mir_msgs/AngleMeasurment~%float64 angle #radians~%time timestamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HookData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angle))
     8
     8
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HookData>))
  "Converts a ROS message object to a list"
  (cl:list 'HookData
    (cl:cons ':angle (angle msg))
    (cl:cons ':height (height msg))
    (cl:cons ':length (length msg))
    (cl:cons ':brake_state (brake_state msg))
    (cl:cons ':gripper_state (gripper_state msg))
    (cl:cons ':height_state (height_state msg))
))
