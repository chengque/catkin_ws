;; Auto-generated. Do not edit!


(when (boundp 'mavros::Waypoint)
  (if (not (find-package "MAVROS"))
    (make-package "MAVROS"))
  (shadow 'Waypoint (find-package "MAVROS")))
(unless (find-package "MAVROS::WAYPOINT")
  (make-package "MAVROS::WAYPOINT"))

(in-package "ROS")
;;//! \htmlinclude Waypoint.msg.html


(shadow '*FRAME_GLOBAL* (find-package "MAVROS::WAYPOINT"))
(defconstant mavros::Waypoint::*FRAME_GLOBAL* 0)
(shadow '*FRAME_LOCAL_NED* (find-package "MAVROS::WAYPOINT"))
(defconstant mavros::Waypoint::*FRAME_LOCAL_NED* 1)
(shadow '*FRAME_MISSION* (find-package "MAVROS::WAYPOINT"))
(defconstant mavros::Waypoint::*FRAME_MISSION* 2)
(shadow '*FRAME_GLOBAL_REL_ALT* (find-package "MAVROS::WAYPOINT"))
(defconstant mavros::Waypoint::*FRAME_GLOBAL_REL_ALT* 3)
(shadow '*FRAME_LOCAL_ENU* (find-package "MAVROS::WAYPOINT"))
(defconstant mavros::Waypoint::*FRAME_LOCAL_ENU* 4)
(shadow '*NAV_WAYPOINT* (find-package "MAVROS::WAYPOINT"))
(defconstant mavros::Waypoint::*NAV_WAYPOINT* 16)
(shadow '*NAV_LOITER_UNLIM* (find-package "MAVROS::WAYPOINT"))
(defconstant mavros::Waypoint::*NAV_LOITER_UNLIM* 17)
(shadow '*NAV_LOITER_TURNS* (find-package "MAVROS::WAYPOINT"))
(defconstant mavros::Waypoint::*NAV_LOITER_TURNS* 18)
(shadow '*NAV_LOITER_TIME* (find-package "MAVROS::WAYPOINT"))
(defconstant mavros::Waypoint::*NAV_LOITER_TIME* 19)
(shadow '*NAV_RETURN_TO_LAUNCH* (find-package "MAVROS::WAYPOINT"))
(defconstant mavros::Waypoint::*NAV_RETURN_TO_LAUNCH* 20)
(shadow '*NAV_LAND* (find-package "MAVROS::WAYPOINT"))
(defconstant mavros::Waypoint::*NAV_LAND* 21)
(shadow '*NAV_TAKEOFF* (find-package "MAVROS::WAYPOINT"))
(defconstant mavros::Waypoint::*NAV_TAKEOFF* 22)
(defclass mavros::Waypoint
  :super ros::object
  :slots (_frame _command _is_current _autocontinue _param1 _param2 _param3 _param4 _x_lat _y_long _z_alt ))

(defmethod mavros::Waypoint
  (:init
   (&key
    ((:frame __frame) 0)
    ((:command __command) 0)
    ((:is_current __is_current) nil)
    ((:autocontinue __autocontinue) nil)
    ((:param1 __param1) 0.0)
    ((:param2 __param2) 0.0)
    ((:param3 __param3) 0.0)
    ((:param4 __param4) 0.0)
    ((:x_lat __x_lat) 0.0)
    ((:y_long __y_long) 0.0)
    ((:z_alt __z_alt) 0.0)
    )
   (send-super :init)
   (setq _frame (round __frame))
   (setq _command (round __command))
   (setq _is_current __is_current)
   (setq _autocontinue __autocontinue)
   (setq _param1 (float __param1))
   (setq _param2 (float __param2))
   (setq _param3 (float __param3))
   (setq _param4 (float __param4))
   (setq _x_lat (float __x_lat))
   (setq _y_long (float __y_long))
   (setq _z_alt (float __z_alt))
   self)
  (:frame
   (&optional __frame)
   (if __frame (setq _frame __frame)) _frame)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:is_current
   (&optional __is_current)
   (if __is_current (setq _is_current __is_current)) _is_current)
  (:autocontinue
   (&optional __autocontinue)
   (if __autocontinue (setq _autocontinue __autocontinue)) _autocontinue)
  (:param1
   (&optional __param1)
   (if __param1 (setq _param1 __param1)) _param1)
  (:param2
   (&optional __param2)
   (if __param2 (setq _param2 __param2)) _param2)
  (:param3
   (&optional __param3)
   (if __param3 (setq _param3 __param3)) _param3)
  (:param4
   (&optional __param4)
   (if __param4 (setq _param4 __param4)) _param4)
  (:x_lat
   (&optional __x_lat)
   (if __x_lat (setq _x_lat __x_lat)) _x_lat)
  (:y_long
   (&optional __y_long)
   (if __y_long (setq _y_long __y_long)) _y_long)
  (:z_alt
   (&optional __z_alt)
   (if __z_alt (setq _z_alt __z_alt)) _z_alt)
  (:serialization-length
   ()
   (+
    ;; uint8 _frame
    1
    ;; uint16 _command
    2
    ;; bool _is_current
    1
    ;; bool _autocontinue
    1
    ;; float32 _param1
    4
    ;; float32 _param2
    4
    ;; float32 _param3
    4
    ;; float32 _param4
    4
    ;; float64 _x_lat
    8
    ;; float64 _y_long
    8
    ;; float64 _z_alt
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _frame
       (write-byte _frame s)
     ;; uint16 _command
       (write-word _command s)
     ;; bool _is_current
       (if _is_current (write-byte -1 s) (write-byte 0 s))
     ;; bool _autocontinue
       (if _autocontinue (write-byte -1 s) (write-byte 0 s))
     ;; float32 _param1
       (sys::poke _param1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _param2
       (sys::poke _param2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _param3
       (sys::poke _param3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _param4
       (sys::poke _param4 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float64 _x_lat
       (sys::poke _x_lat (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y_long
       (sys::poke _y_long (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z_alt
       (sys::poke _z_alt (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _frame
     (setq _frame (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _command
     (setq _command (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _is_current
     (setq _is_current (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _autocontinue
     (setq _autocontinue (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _param1
     (setq _param1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _param2
     (setq _param2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _param3
     (setq _param3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _param4
     (setq _param4 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float64 _x_lat
     (setq _x_lat (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y_long
     (setq _y_long (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z_alt
     (setq _z_alt (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mavros::Waypoint :md5sum-) "2173cf54c2af16a135dca8d104aae309")
(setf (get mavros::Waypoint :datatype-) "mavros/Waypoint")
(setf (get mavros::Waypoint :definition-)
      "# Waypoint.msg
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



(provide :mavros/Waypoint "2173cf54c2af16a135dca8d104aae309")


