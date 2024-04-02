;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::ResourcesAcquisition)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'ResourcesAcquisition (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::RESOURCESACQUISITION")
  (make-package "MIR_MSGS::RESOURCESACQUISITION"))

(in-package "ROS")
;;//! \htmlinclude ResourcesAcquisition.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mir_msgs::ResourcesAcquisition
  :super ros::object
  :slots (_header _path _position_guid _token ))

(defmethod mir_msgs::ResourcesAcquisition
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:path __path) ())
    ((:position_guid __position_guid) "")
    ((:token __token) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _path __path)
   (setq _position_guid (string __position_guid))
   (setq _token (string __token))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:path
   (&rest __path)
   (if (keywordp (car __path))
       (send* _path __path)
     (progn
       (if __path (setq _path (car __path)))
       _path)))
  (:position_guid
   (&optional __position_guid)
   (if __position_guid (setq _position_guid __position_guid)) _position_guid)
  (:token
   (&optional __token)
   (if __token (setq _token __token)) _token)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/PoseStamped[] _path
    (apply #'+ (send-all _path :serialization-length)) 4
    ;; string _position_guid
    4 (length _position_guid)
    ;; string _token
    4 (length _token)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/PoseStamped[] _path
     (write-long (length _path) s)
     (dolist (elem _path)
       (send elem :serialize s)
       )
     ;; string _position_guid
       (write-long (length _position_guid) s) (princ _position_guid s)
     ;; string _token
       (write-long (length _token) s) (princ _token s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/PoseStamped[] _path
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _path (let (r) (dotimes (i n) (push (instance geometry_msgs::PoseStamped :init) r)) r))
     (dolist (elem- _path)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string _position_guid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _position_guid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _token
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _token (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get mir_msgs::ResourcesAcquisition :md5sum-) "31d34591ef79272f8d1f97313a43e8a1")
(setf (get mir_msgs::ResourcesAcquisition :datatype-) "mir_msgs/ResourcesAcquisition")
(setf (get mir_msgs::ResourcesAcquisition :definition-)
      "Header header
geometry_msgs/PoseStamped[] path
string position_guid
string token

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :mir_msgs/ResourcesAcquisition "31d34591ef79272f8d1f97313a43e8a1")


