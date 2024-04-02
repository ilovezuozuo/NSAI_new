; Auto-generated. Do not edit!


(cl:in-package mir_msgs-msg)


;//! \htmlinclude ResourcesState.msg.html

(cl:defclass <ResourcesState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (resources
    :reader resources
    :initarg :resources
    :type (cl:vector mir_msgs-msg:ResourceState)
   :initform (cl:make-array 0 :element-type 'mir_msgs-msg:ResourceState :initial-element (cl:make-instance 'mir_msgs-msg:ResourceState)))
   (token
    :reader token
    :initarg :token
    :type cl:string
    :initform ""))
)

(cl:defclass ResourcesState (<ResourcesState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ResourcesState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ResourcesState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mir_msgs-msg:<ResourcesState> is deprecated: use mir_msgs-msg:ResourcesState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ResourcesState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:header-val is deprecated.  Use mir_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'resources-val :lambda-list '(m))
(cl:defmethod resources-val ((m <ResourcesState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:resources-val is deprecated.  Use mir_msgs-msg:resources instead.")
  (resources m))

(cl:ensure-generic-function 'token-val :lambda-list '(m))
(cl:defmethod token-val ((m <ResourcesState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:token-val is deprecated.  Use mir_msgs-msg:token instead.")
  (token m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ResourcesState>) ostream)
  "Serializes a message object of type '<ResourcesState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'resources))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'resources))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'token))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'token))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ResourcesState>) istream)
  "Deserializes a message object of type '<ResourcesState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'resources) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'resources)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mir_msgs-msg:ResourceState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'token) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'token) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ResourcesState>)))
  "Returns string type for a message object of type '<ResourcesState>"
  "mir_msgs/ResourcesState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResourcesState)))
  "Returns string type for a message object of type 'ResourcesState"
  "mir_msgs/ResourcesState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ResourcesState>)))
  "Returns md5sum for a message object of type '<ResourcesState>"
  "982b0cae95aba9754f19d3a76d996d20")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ResourcesState)))
  "Returns md5sum for a message object of type 'ResourcesState"
  "982b0cae95aba9754f19d3a76d996d20")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ResourcesState>)))
  "Returns full string definition for message of type '<ResourcesState>"
  (cl:format cl:nil "Header header~%ResourceState[] resources~%string token~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mir_msgs/ResourceState~%string[] assigned # A list of IPs of all assigned robots (Areas can have more than one robot assigned at a time)~%uint32 ROBOT_POSITION=0~%uint32 STAGING_POSITION=1~%uint32 CHARGING_STATION=2~%uint32 AREA=3~%uint32 ELEVATOR_ENTRY_POSITION=26~%uint32 ELEVATOR_POSITION=25~%uint32 type # The resource type~%uint32 path_idx # The index from the global path in which the robot gets into the position~%float32 distance # The distance from the robot to the resource~%geometry_msgs/Point collision_point # The collision point with the resource~%geometry_msgs/Point[] resource_geometry # The resource_geometry~%string[] queue # The queue for a resource. It's a list of robots ips.~%string name # The name of the resource~%string guid # The guid of the resource~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ResourcesState)))
  "Returns full string definition for message of type 'ResourcesState"
  (cl:format cl:nil "Header header~%ResourceState[] resources~%string token~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mir_msgs/ResourceState~%string[] assigned # A list of IPs of all assigned robots (Areas can have more than one robot assigned at a time)~%uint32 ROBOT_POSITION=0~%uint32 STAGING_POSITION=1~%uint32 CHARGING_STATION=2~%uint32 AREA=3~%uint32 ELEVATOR_ENTRY_POSITION=26~%uint32 ELEVATOR_POSITION=25~%uint32 type # The resource type~%uint32 path_idx # The index from the global path in which the robot gets into the position~%float32 distance # The distance from the robot to the resource~%geometry_msgs/Point collision_point # The collision point with the resource~%geometry_msgs/Point[] resource_geometry # The resource_geometry~%string[] queue # The queue for a resource. It's a list of robots ips.~%string name # The name of the resource~%string guid # The guid of the resource~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ResourcesState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'resources) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:length (cl:slot-value msg 'token))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ResourcesState>))
  "Converts a ROS message object to a list"
  (cl:list 'ResourcesState
    (cl:cons ':header (header msg))
    (cl:cons ':resources (resources msg))
    (cl:cons ':token (token msg))
))
