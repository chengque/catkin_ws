;; Auto-generated. Do not edit!


(when (boundp 'mavros::ActuatorControl)
  (if (not (find-package "MAVROS"))
    (make-package "MAVROS"))
  (shadow 'ActuatorControl (find-package "MAVROS")))
(unless (find-package "MAVROS::ACTUATORCONTROL")
  (make-package "MAVROS::ACTUATORCONTROL"))

(in-package "ROS")
;;//! \htmlinclude ActuatorControl.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mavros::ActuatorControl
  :super ros::object
  :slots (_header _group_mix _controls ))

(defmethod mavros::ActuatorControl
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:group_mix __group_mix) 0)
    ((:controls __controls) (make-array 8 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _group_mix (round __group_mix))
   (setq _controls __controls)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:group_mix
   (&optional __group_mix)
   (if __group_mix (setq _group_mix __group_mix)) _group_mix)
  (:controls
   (&optional __controls)
   (if __controls (setq _controls __controls)) _controls)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _group_mix
    1
    ;; float32[8] _controls
    (* 4    8)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _group_mix
       (write-byte _group_mix s)
     ;; float32[8] _controls
     (dotimes (i 8)
       (sys::poke (elt _controls i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _group_mix
     (setq _group_mix (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32[8] _controls
   (dotimes (i (length _controls))
     (setf (elt _controls i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get mavros::ActuatorControl :md5sum-) "ba56d1663d64ac435b80a3508d6ce1d2")
(setf (get mavros::ActuatorControl :datatype-) "mavros/ActuatorControl")
(setf (get mavros::ActuatorControl :definition-)
      "# raw servo values for direct actuator controls
#
# about groups, mixing and channels:
# https://pixhawk.org/dev/mixing

Header header
uint8 group_mix
float32[8] controls

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
# 0: no frame
# 1: global frame
string frame_id

")



(provide :mavros/ActuatorControl "ba56d1663d64ac435b80a3508d6ce1d2")


