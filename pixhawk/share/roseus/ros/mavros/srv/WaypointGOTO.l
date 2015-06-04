;; Auto-generated. Do not edit!


(when (boundp 'mavros::WaypointGOTO)
  (if (not (find-package "MAVROS"))
    (make-package "MAVROS"))
  (shadow 'WaypointGOTO (find-package "MAVROS")))
(unless (find-package "MAVROS::WAYPOINTGOTO")
  (make-package "MAVROS::WAYPOINTGOTO"))
(unless (find-package "MAVROS::WAYPOINTGOTOREQUEST")
  (make-package "MAVROS::WAYPOINTGOTOREQUEST"))
(unless (find-package "MAVROS::WAYPOINTGOTORESPONSE")
  (make-package "MAVROS::WAYPOINTGOTORESPONSE"))

(in-package "ROS")





(defclass mavros::WaypointGOTORequest
  :super ros::object
  :slots (_waypoint ))

(defmethod mavros::WaypointGOTORequest
  (:init
   (&key
    ((:waypoint __waypoint) (instance mavros::Waypoint :init))
    )
   (send-super :init)
   (setq _waypoint __waypoint)
   self)
  (:waypoint
   (&rest __waypoint)
   (if (keywordp (car __waypoint))
       (send* _waypoint __waypoint)
     (progn
       (if __waypoint (setq _waypoint (car __waypoint)))
       _waypoint)))
  (:serialization-length
   ()
   (+
    ;; mavros/Waypoint _waypoint
    (send _waypoint :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mavros/Waypoint _waypoint
       (send _waypoint :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mavros/Waypoint _waypoint
     (send _waypoint :deserialize buf ptr-) (incf ptr- (send _waypoint :serialization-length))
   ;;
   self)
  )

(defclass mavros::WaypointGOTOResponse
  :super ros::object
  :slots (_success ))

(defmethod mavros::WaypointGOTOResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass mavros::WaypointGOTO
  :super ros::object
  :slots ())

(setf (get mavros::WaypointGOTO :md5sum-) "c52932a48a9836c9e3888b9ed4669183")
(setf (get mavros::WaypointGOTO :datatype-) "mavros/WaypointGOTO")
(setf (get mavros::WaypointGOTO :request) mavros::WaypointGOTORequest)
(setf (get mavros::WaypointGOTO :response) mavros::WaypointGOTOResponse)

(defmethod mavros::WaypointGOTORequest
  (:response () (instance mavros::WaypointGOTOResponse :init)))

(setf (get mavros::WaypointGOTORequest :md5sum-) "c52932a48a9836c9e3888b9ed4669183")
(setf (get mavros::WaypointGOTORequest :datatype-) "mavros/WaypointGOTORequest")
(setf (get mavros::WaypointGOTORequest :definition-)
      "



mavros/Waypoint waypoint

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

")

(setf (get mavros::WaypointGOTOResponse :md5sum-) "c52932a48a9836c9e3888b9ed4669183")
(setf (get mavros::WaypointGOTOResponse :datatype-) "mavros/WaypointGOTOResponse")
(setf (get mavros::WaypointGOTOResponse :definition-)
      "



mavros/Waypoint waypoint

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

")



(provide :mavros/WaypointGOTO "c52932a48a9836c9e3888b9ed4669183")


