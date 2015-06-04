;; Auto-generated. Do not edit!


(when (boundp 'mavros::WaypointPush)
  (if (not (find-package "MAVROS"))
    (make-package "MAVROS"))
  (shadow 'WaypointPush (find-package "MAVROS")))
(unless (find-package "MAVROS::WAYPOINTPUSH")
  (make-package "MAVROS::WAYPOINTPUSH"))
(unless (find-package "MAVROS::WAYPOINTPUSHREQUEST")
  (make-package "MAVROS::WAYPOINTPUSHREQUEST"))
(unless (find-package "MAVROS::WAYPOINTPUSHRESPONSE")
  (make-package "MAVROS::WAYPOINTPUSHRESPONSE"))

(in-package "ROS")





(defclass mavros::WaypointPushRequest
  :super ros::object
  :slots (_waypoints ))

(defmethod mavros::WaypointPushRequest
  (:init
   (&key
    ((:waypoints __waypoints) (let (r) (dotimes (i 0) (push (instance mavros::Waypoint :init) r)) r))
    )
   (send-super :init)
   (setq _waypoints __waypoints)
   self)
  (:waypoints
   (&rest __waypoints)
   (if (keywordp (car __waypoints))
       (send* _waypoints __waypoints)
     (progn
       (if __waypoints (setq _waypoints (car __waypoints)))
       _waypoints)))
  (:serialization-length
   ()
   (+
    ;; mavros/Waypoint[] _waypoints
    (apply #'+ (send-all _waypoints :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mavros/Waypoint[] _waypoints
     (write-long (length _waypoints) s)
     (dolist (elem _waypoints)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mavros/Waypoint[] _waypoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _waypoints (let (r) (dotimes (i n) (push (instance mavros::Waypoint :init) r)) r))
     (dolist (elem- _waypoints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass mavros::WaypointPushResponse
  :super ros::object
  :slots (_success _wp_transfered ))

(defmethod mavros::WaypointPushResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:wp_transfered __wp_transfered) 0)
    )
   (send-super :init)
   (setq _success __success)
   (setq _wp_transfered (round __wp_transfered))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:wp_transfered
   (&optional __wp_transfered)
   (if __wp_transfered (setq _wp_transfered __wp_transfered)) _wp_transfered)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; uint32 _wp_transfered
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; uint32 _wp_transfered
       (write-long _wp_transfered s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint32 _wp_transfered
     (setq _wp_transfered (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass mavros::WaypointPush
  :super ros::object
  :slots ())

(setf (get mavros::WaypointPush :md5sum-) "79e2ea4ec81cd20734a7c12cd819e866")
(setf (get mavros::WaypointPush :datatype-) "mavros/WaypointPush")
(setf (get mavros::WaypointPush :request) mavros::WaypointPushRequest)
(setf (get mavros::WaypointPush :response) mavros::WaypointPushResponse)

(defmethod mavros::WaypointPushRequest
  (:response () (instance mavros::WaypointPushResponse :init)))

(setf (get mavros::WaypointPushRequest :md5sum-) "79e2ea4ec81cd20734a7c12cd819e866")
(setf (get mavros::WaypointPushRequest :datatype-) "mavros/WaypointPushRequest")
(setf (get mavros::WaypointPushRequest :definition-)
      "



mavros/Waypoint[] waypoints

================================================================================
MSG: mavros/Waypoint
# Waypoint.msg
#
# ROS representation of MAVLink MISSION_ITEM
# See mavlink documentation



# see enum MAV_FRAME
uint8 frame
uint8 FRAME_GLOBAL = 0
uint8 FRAME_LOCAL_NED = 1
uint8 FRAME_MISSION = 2
uint8 FRAME_GLOBAL_REL_ALT = 3
uint8 FRAME_LOCAL_ENU = 4

# see enum MAV_CMD
uint16 command
uint16 NAV_WAYPOINT = 16
uint16 NAV_LOITER_UNLIM = 17
uint16 NAV_LOITER_TURNS = 18
uint16 NAV_LOITER_TIME = 19
uint16 NAV_RETURN_TO_LAUNCH = 20
uint16 NAV_LAND = 21
uint16 NAV_TAKEOFF = 22
# TODO: ROI mode

bool is_current
bool autocontinue
# meaning of this params described in enum MAV_CMD
float32 param1
float32 param2
float32 param3
float32 param4
float64 x_lat
float64 y_long
float64 z_alt
---
bool success
uint32 wp_transfered

")

(setf (get mavros::WaypointPushResponse :md5sum-) "79e2ea4ec81cd20734a7c12cd819e866")
(setf (get mavros::WaypointPushResponse :datatype-) "mavros/WaypointPushResponse")
(setf (get mavros::WaypointPushResponse :definition-)
      "



mavros/Waypoint[] waypoints

================================================================================
MSG: mavros/Waypoint
# Waypoint.msg
#
# ROS representation of MAVLink MISSION_ITEM
# See mavlink documentation



# see enum MAV_FRAME
uint8 frame
uint8 FRAME_GLOBAL = 0
uint8 FRAME_LOCAL_NED = 1
uint8 FRAME_MISSION = 2
uint8 FRAME_GLOBAL_REL_ALT = 3
uint8 FRAME_LOCAL_ENU = 4

# see enum MAV_CMD
uint16 command
uint16 NAV_WAYPOINT = 16
uint16 NAV_LOITER_UNLIM = 17
uint16 NAV_LOITER_TURNS = 18
uint16 NAV_LOITER_TIME = 19
uint16 NAV_RETURN_TO_LAUNCH = 20
uint16 NAV_LAND = 21
uint16 NAV_TAKEOFF = 22
# TODO: ROI mode

bool is_current
bool autocontinue
# meaning of this params described in enum MAV_CMD
float32 param1
float32 param2
float32 param3
float32 param4
float64 x_lat
float64 y_long
float64 z_alt
---
bool success
uint32 wp_transfered

")



(provide :mavros/WaypointPush "79e2ea4ec81cd20734a7c12cd819e866")


