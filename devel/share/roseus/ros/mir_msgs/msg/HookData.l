;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::HookData)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'HookData (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::HOOKDATA")
  (make-package "MIR_MSGS::HOOKDATA"))

(in-package "ROS")
;;//! \htmlinclude HookData.msg.html


(defclass mir_msgs::HookData
  :super ros::object
  :slots (_angle _height _length _brake_state _gripper_state _height_state ))

(defmethod mir_msgs::HookData
  (:init
   (&key
    ((:angle __angle) (instance mir_msgs::AngleMeasurment :init))
    ((:height __height) 0.0)
    ((:length __length) 0.0)
    ((:brake_state __brake_state) 0)
    ((:gripper_state __gripper_state) 0)
    ((:height_state __height_state) 0)
    )
   (send-super :init)
   (setq _angle __angle)
   (setq _height (float __height))
   (setq _length (float __length))
   (setq _brake_state (round __brake_state))
   (setq _gripper_state (round __gripper_state))
   (setq _height_state (round __height_state))
   self)
  (:angle
   (&rest __angle)
   (if (keywordp (car __angle))
       (send* _angle __angle)
     (progn
       (if __angle (setq _angle (car __angle)))
       _angle)))
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:brake_state
   (&optional __brake_state)
   (if __brake_state (setq _brake_state __brake_state)) _brake_state)
  (:gripper_state
   (&optional __gripper_state)
   (if __gripper_state (setq _gripper_state __gripper_state)) _gripper_state)
  (:height_state
   (&optional __height_state)
   (if __height_state (setq _height_state __height_state)) _height_state)
  (:serialization-length
   ()
   (+
    ;; mir_msgs/AngleMeasurment _angle
    (send _angle :serialization-length)
    ;; float64 _height
    8
    ;; float64 _length
    8
    ;; uint8 _brake_state
    1
    ;; uint8 _gripper_state
    1
    ;; uint8 _height_state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mir_msgs/AngleMeasurment _angle
       (send _angle :serialize s)
     ;; float64 _height
       (sys::poke _height (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _length
       (sys::poke _length (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _brake_state
       (write-byte _brake_state s)
     ;; uint8 _gripper_state
       (write-byte _gripper_state s)
     ;; uint8 _height_state
       (write-byte _height_state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mir_msgs/AngleMeasurment _angle
     (send _angle :deserialize buf ptr-) (incf ptr- (send _angle :serialization-length))
   ;; float64 _height
     (setq _height (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _length
     (setq _length (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _brake_state
     (setq _brake_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _gripper_state
     (setq _gripper_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _height_state
     (setq _height_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mir_msgs::HookData :md5sum-) "6ea6712dc44c7a41f6da42b055292240")
(setf (get mir_msgs::HookData :datatype-) "mir_msgs/HookData")
(setf (get mir_msgs::HookData :definition-)
      "AngleMeasurment angle
float64 height
float64 length
uint8 brake_state
uint8 gripper_state
uint8 height_state

================================================================================
MSG: mir_msgs/AngleMeasurment
float64 angle #radians
time timestamp

")



(provide :mir_msgs/HookData "6ea6712dc44c7a41f6da42b055292240")


