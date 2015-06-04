;; Auto-generated. Do not edit!


(when (boundp 'mavros::CommandLong)
  (if (not (find-package "MAVROS"))
    (make-package "MAVROS"))
  (shadow 'CommandLong (find-package "MAVROS")))
(unless (find-package "MAVROS::COMMANDLONG")
  (make-package "MAVROS::COMMANDLONG"))
(unless (find-package "MAVROS::COMMANDLONGREQUEST")
  (make-package "MAVROS::COMMANDLONGREQUEST"))
(unless (find-package "MAVROS::COMMANDLONGRESPONSE")
  (make-package "MAVROS::COMMANDLONGRESPONSE"))

(in-package "ROS")





(shadow '*CMD_DO_SET_MODE* (find-package "MAVROS::COMMANDLONGREQUEST"))
(defconstant mavros::CommandLongRequest::*CMD_DO_SET_MODE* 176)
(shadow '*CMD_DO_JUMP* (find-package "MAVROS::COMMANDLONGREQUEST"))
(defconstant mavros::CommandLongRequest::*CMD_DO_JUMP* 177)
(shadow '*CMD_DO_CHANGE_SPEED* (find-package "MAVROS::COMMANDLONGREQUEST"))
(defconstant mavros::CommandLongRequest::*CMD_DO_CHANGE_SPEED* 178)
(shadow '*CMD_DO_SET_HOME* (find-package "MAVROS::COMMANDLONGREQUEST"))
(defconstant mavros::CommandLongRequest::*CMD_DO_SET_HOME* 179)
(shadow '*CMD_DO_SET_RELAY* (find-package "MAVROS::COMMANDLONGREQUEST"))
(defconstant mavros::CommandLongRequest::*CMD_DO_SET_RELAY* 181)
(shadow '*CMD_DO_REPEAT_RELAY* (find-package "MAVROS::COMMANDLONGREQUEST"))
(defconstant mavros::CommandLongRequest::*CMD_DO_REPEAT_RELAY* 182)
(shadow '*CMD_DO_SET_SERVO* (find-package "MAVROS::COMMANDLONGREQUEST"))
(defconstant mavros::CommandLongRequest::*CMD_DO_SET_SERVO* 183)
(shadow '*CMD_DO_REPEAT_SERVO* (find-package "MAVROS::COMMANDLONGREQUEST"))
(defconstant mavros::CommandLongRequest::*CMD_DO_REPEAT_SERVO* 184)
(shadow '*CMD_DO_CONTROL_VIDEO* (find-package "MAVROS::COMMANDLONGREQUEST"))
(defconstant mavros::CommandLongRequest::*CMD_DO_CONTROL_VIDEO* 200)
(shadow '*CMD_DO_SET_ROI* (find-package "MAVROS::COMMANDLONGREQUEST"))
(defconstant mavros::CommandLongRequest::*CMD_DO_SET_ROI* 201)
(shadow '*CMD_DO_MOUNT_CONTROL* (find-package "MAVROS::COMMANDLONGREQUEST"))
(defconstant mavros::CommandLongRequest::*CMD_DO_MOUNT_CONTROL* 205)
(shadow '*CMD_DO_SET_CAM_TRIGG_DIST* (find-package "MAVROS::COMMANDLONGREQUEST"))
(defconstant mavros::CommandLongRequest::*CMD_DO_SET_CAM_TRIGG_DIST* 206)
(shadow '*CMD_DO_FENCE_ENABLE* (find-package "MAVROS::COMMANDLONGREQUEST"))
(defconstant mavros::CommandLongRequest::*CMD_DO_FENCE_ENABLE* 207)
(shadow '*CMD_DO_PARACHUTE* (find-package "MAVROS::COMMANDLONGREQUEST"))
(defconstant mavros::CommandLongRequest::*CMD_DO_PARACHUTE* 208)
(shadow '*CMD_DO_INVERTED_FLIGHT* (find-package "MAVROS::COMMANDLONGREQUEST"))
(defconstant mavros::CommandLongRequest::*CMD_DO_INVERTED_FLIGHT* 210)
(shadow '*CMD_DO_MOUNT_CONTROL_QUAT* (find-package "MAVROS::COMMANDLONGREQUEST"))
(defconstant mavros::CommandLongRequest::*CMD_DO_MOUNT_CONTROL_QUAT* 220)
(shadow '*CMD_PREFLIGHT_CALIBRATION* (find-package "MAVROS::COMMANDLONGREQUEST"))
(defconstant mavros::CommandLongRequest::*CMD_PREFLIGHT_CALIBRATION* 241)
(shadow '*CMD_MISSION_START* (find-package "MAVROS::COMMANDLONGREQUEST"))
(defconstant mavros::CommandLongRequest::*CMD_MISSION_START* 300)
(shadow '*CMD_COMPONENT_ARM_DISARM* (find-package "MAVROS::COMMANDLONGREQUEST"))
(defconstant mavros::CommandLongRequest::*CMD_COMPONENT_ARM_DISARM* 400)
(shadow '*CMD_START_RX_PAIR* (find-package "MAVROS::COMMANDLONGREQUEST"))
(defconstant mavros::CommandLongRequest::*CMD_START_RX_PAIR* 500)
(shadow '*CMD_REQUEST_AUTOPILOT_CAPABILITIES* (find-package "MAVROS::COMMANDLONGREQUEST"))
(defconstant mavros::CommandLongRequest::*CMD_REQUEST_AUTOPILOT_CAPABILITIES* 520)
(defclass mavros::CommandLongRequest
  :super ros::object
  :slots (_command _confirmation _param1 _param2 _param3 _param4 _param5 _param6 _param7 ))

(defmethod mavros::CommandLongRequest
  (:init
   (&key
    ((:command __command) 0)
    ((:confirmation __confirmation) 0)
    ((:param1 __param1) 0.0)
    ((:param2 __param2) 0.0)
    ((:param3 __param3) 0.0)
    ((:param4 __param4) 0.0)
    ((:param5 __param5) 0.0)
    ((:param6 __param6) 0.0)
    ((:param7 __param7) 0.0)
    )
   (send-super :init)
   (setq _command (round __command))
   (setq _confirmation (round __confirmation))
   (setq _param1 (float __param1))
   (setq _param2 (float __param2))
   (setq _param3 (float __param3))
   (setq _param4 (float __param4))
   (setq _param5 (float __param5))
   (setq _param6 (float __param6))
   (setq _param7 (float __param7))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:confirmation
   (&optional __confirmation)
   (if __confirmation (setq _confirmation __confirmation)) _confirmation)
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
  (:param5
   (&optional __param5)
   (if __param5 (setq _param5 __param5)) _param5)
  (:param6
   (&optional __param6)
   (if __param6 (setq _param6 __param6)) _param6)
  (:param7
   (&optional __param7)
   (if __param7 (setq _param7 __param7)) _param7)
  (:serialization-length
   ()
   (+
    ;; uint16 _command
    2
    ;; uint8 _confirmation
    1
    ;; float32 _param1
    4
    ;; float32 _param2
    4
    ;; float32 _param3
    4
    ;; float32 _param4
    4
    ;; float32 _param5
    4
    ;; float32 _param6
    4
    ;; float32 _param7
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _command
       (write-word _command s)
     ;; uint8 _confirmation
       (write-byte _confirmation s)
     ;; float32 _param1
       (sys::poke _param1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _param2
       (sys::poke _param2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _param3
       (sys::poke _param3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _param4
       (sys::poke _param4 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _param5
       (sys::poke _param5 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _param6
       (sys::poke _param6 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _param7
       (sys::poke _param7 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _command
     (setq _command (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _confirmation
     (setq _confirmation (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _param1
     (setq _param1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _param2
     (setq _param2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _param3
     (setq _param3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _param4
     (setq _param4 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _param5
     (setq _param5 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _param6
     (setq _param6 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _param7
     (setq _param7 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass mavros::CommandLongResponse
  :super ros::object
  :slots (_success _result ))

(defmethod mavros::CommandLongResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _success __success)
   (setq _result (round __result))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; uint8 _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _result
       (write-byte _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _result
     (setq _result (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass mavros::CommandLong
  :super ros::object
  :slots ())

(setf (get mavros::CommandLong :md5sum-) "f6050a9a4b3570f1f26029366646d348")
(setf (get mavros::CommandLong :datatype-) "mavros/CommandLong")
(setf (get mavros::CommandLong :request) mavros::CommandLongRequest)
(setf (get mavros::CommandLong :response) mavros::CommandLongResponse)

(defmethod mavros::CommandLongRequest
  (:response () (instance mavros::CommandLongResponse :init)))

(setf (get mavros::CommandLongRequest :md5sum-) "f6050a9a4b3570f1f26029366646d348")
(setf (get mavros::CommandLongRequest :datatype-) "mavros/CommandLongRequest")
(setf (get mavros::CommandLongRequest :definition-)
      "


uint16 CMD_DO_SET_MODE = 176
uint16 CMD_DO_JUMP = 177
uint16 CMD_DO_CHANGE_SPEED = 178
uint16 CMD_DO_SET_HOME = 179
uint16 CMD_DO_SET_RELAY = 181
uint16 CMD_DO_REPEAT_RELAY = 182
uint16 CMD_DO_SET_SERVO = 183
uint16 CMD_DO_REPEAT_SERVO = 184
uint16 CMD_DO_CONTROL_VIDEO = 200
uint16 CMD_DO_SET_ROI = 201
uint16 CMD_DO_MOUNT_CONTROL = 205
uint16 CMD_DO_SET_CAM_TRIGG_DIST = 206
uint16 CMD_DO_FENCE_ENABLE = 207
uint16 CMD_DO_PARACHUTE = 208
uint16 CMD_DO_INVERTED_FLIGHT = 210
uint16 CMD_DO_MOUNT_CONTROL_QUAT = 220
uint16 CMD_PREFLIGHT_CALIBRATION = 241
uint16 CMD_MISSION_START = 300
uint16 CMD_COMPONENT_ARM_DISARM = 400
uint16 CMD_START_RX_PAIR = 500
uint16 CMD_REQUEST_AUTOPILOT_CAPABILITIES = 520

uint16 command
uint8 confirmation
float32 param1
float32 param2
float32 param3
float32 param4
float32 param5
float32 param6
float32 param7
---
bool success

uint8 result

")

(setf (get mavros::CommandLongResponse :md5sum-) "f6050a9a4b3570f1f26029366646d348")
(setf (get mavros::CommandLongResponse :datatype-) "mavros/CommandLongResponse")
(setf (get mavros::CommandLongResponse :definition-)
      "


uint16 CMD_DO_SET_MODE = 176
uint16 CMD_DO_JUMP = 177
uint16 CMD_DO_CHANGE_SPEED = 178
uint16 CMD_DO_SET_HOME = 179
uint16 CMD_DO_SET_RELAY = 181
uint16 CMD_DO_REPEAT_RELAY = 182
uint16 CMD_DO_SET_SERVO = 183
uint16 CMD_DO_REPEAT_SERVO = 184
uint16 CMD_DO_CONTROL_VIDEO = 200
uint16 CMD_DO_SET_ROI = 201
uint16 CMD_DO_MOUNT_CONTROL = 205
uint16 CMD_DO_SET_CAM_TRIGG_DIST = 206
uint16 CMD_DO_FENCE_ENABLE = 207
uint16 CMD_DO_PARACHUTE = 208
uint16 CMD_DO_INVERTED_FLIGHT = 210
uint16 CMD_DO_MOUNT_CONTROL_QUAT = 220
uint16 CMD_PREFLIGHT_CALIBRATION = 241
uint16 CMD_MISSION_START = 300
uint16 CMD_COMPONENT_ARM_DISARM = 400
uint16 CMD_START_RX_PAIR = 500
uint16 CMD_REQUEST_AUTOPILOT_CAPABILITIES = 520

uint16 command
uint8 confirmation
float32 param1
float32 param2
float32 param3
float32 param4
float32 param5
float32 param6
float32 param7
---
bool success

uint8 result

")



(provide :mavros/CommandLong "f6050a9a4b3570f1f26029366646d348")


