;; Auto-generated. Do not edit!


(when (boundp 'mavros::WaypointList)
  (if (not (find-package "MAVROS"))
    (make-package "MAVROS"))
  (shadow 'WaypointList (find-package "MAVROS")))
(unless (find-package "MAVROS::WAYPOINTLIST")
  (make-package "MAVROS::WAYPOINTLIST"))

(in-package "ROS")
;;//! \htmlinclude WaypointList.msg.html


(defclass mavros::WaypointList
  :super ros::object
  :slots (_waypoints ))

(defmethod mavros::WaypointList
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

(setf (get mavros::WaypointList :md5sum-) "9e87303e70921b453f266db2c0ff55c3")
(setf (get mavros::WaypointList :datatype-) "mavros/WaypointList")
(setf (get mavros::WaypointList :definition-)
      "mavros/Waypoint[] waypoints

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

")



(provide :mavros/WaypointList "9e87303e70921b453f266db2c0ff55c3")


