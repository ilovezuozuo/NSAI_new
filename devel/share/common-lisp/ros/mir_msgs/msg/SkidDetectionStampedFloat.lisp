; Auto-generated. Do not edit!


(cl:in-package mir_msgs-msg)


;//! \htmlinclude SkidDetectionStampedFloat.msg.html

(cl:defclass <SkidDetectionStampedFloat> (roslisp-msg-protocol:ros-message)
  ((time_stamp
    :reader time_stamp
    :initarg :time_stamp
    :type cl:real
    :initform 0)
   (value
    :reader value
    :initarg :value
    :type cl:float
    :initform 0.0))
)

(cl:defclass SkidDetectionStampedFloat (<SkidDetectionStampedFloat>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SkidDetectionStampedFloat>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SkidDetectionStampedFloat)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mir_msgs-msg:<SkidDetectionStampedFloat> is deprecated: use mir_msgs-msg:SkidDetectionStampedFloat instead.")))

(cl:ensure-generic-function 'time_stamp-val :lambda-list '(m))
(cl:defmethod time_stamp-val ((m <SkidDetectionStampedFloat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:time_stamp-val is deprecated.  Use mir_msgs-msg:time_stamp instead.")
  (time_stamp m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <SkidDetectionStampedFloat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:value-val is deprecated.  Use mir_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SkidDetectionStampedFloat>) ostream)
  "Serializes a message object of type '<SkidDetectionStampedFloat>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'time_stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'time_stamp) (cl:floor (cl:slot-value msg 'time_stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SkidDetectionStampedFloat>) istream)
  "Deserializes a message object of type '<SkidDetectionStampedFloat>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time_stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'value) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SkidDetectionStampedFloat>)))
  "Returns string type for a message object of type '<SkidDetectionStampedFloat>"
  "mir_msgs/SkidDetectionStampedFloat")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SkidDetectionStampedFloat)))
  "Returns string type for a message object of type 'SkidDetectionStampedFloat"
  "mir_msgs/SkidDetectionStampedFloat")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SkidDetectionStampedFloat>)))
  "Returns md5sum for a message object of type '<SkidDetectionStampedFloat>"
  "4fe24f6282200f91383f507e8f21daa0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SkidDetectionStampedFloat)))
  "Returns md5sum for a message object of type 'SkidDetectionStampedFloat"
  "4fe24f6282200f91383f507e8f21daa0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SkidDetectionStampedFloat>)))
  "Returns full string definition for message of type '<SkidDetectionStampedFloat>"
  (cl:format cl:nil "time time_stamp~%float64 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SkidDetectionStampedFloat)))
  "Returns full string definition for message of type 'SkidDetectionStampedFloat"
  (cl:format cl:nil "time time_stamp~%float64 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SkidDetectionStampedFloat>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SkidDetectionStampedFloat>))
  "Converts a ROS message object to a list"
  (cl:list 'SkidDetectionStampedFloat
    (cl:cons ':time_stamp (time_stamp msg))
    (cl:cons ':value (value msg))
))
