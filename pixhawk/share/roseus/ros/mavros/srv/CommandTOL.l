;; Auto-generated. Do not edit!


(when (boundp 'mavros::CommandTOL)
  (if (not (find-package "MAVROS"))
    (make-package "MAVROS"))
  (shadow 'CommandTOL (find-package "MAVROS")))
(unless (find-package "MAVROS::COMMANDTOL")
  (make-package "MAVROS::COMMANDTOL"))
(unless (find-package "MAVROS::COMMANDTOLREQUEST")
  (make-package "MAVROS::COMMANDTOLREQUEST"))
(unless (find-package "MAVROS::COMMANDTOLRESPONSE")
  (make-package "MAVROS::COMMANDTOLRESPONSE"))

(in-package "ROS")





(defclass mavros::CommandTOLRequest
  :super ros::object
  :slots (_min_pitch _yaw _latitude _longitude _altitude ))

(defmethod mavros::CommandTOLRequest
  (:init
   (&key
    ((:min_pitch __min_pitch) 0.0)
    ((:yaw __yaw) 0.0)
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:altitude __altitude) 0.0)
    )
   (send-super :init)
   (setq _min_pitch (float __min_pitch))
   (setq _yaw (float __yaw))
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _altitude (float __altitude))
   self)
  (:min_pitch
   (&optional __min_pitch)
   (if __min_pitch (setq _min_pitch __min_pitch)) _min_pitch)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:serialization-length
   ()
   (+
    ;; float32 _min_pitch
    4
    ;; float32 _yaw
    4
    ;; float32 _latitude
    4
    ;; float32 _longitude
    4
    ;; float32 _altitude
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _min_pitch
       (sys::poke _min_pitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _min_pitch
     (setq _min_pitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _latitude
     (setq _latitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _longitude
     (setq _longitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _altitude
     (setq _altitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass mavros::CommandTOLResponse
  :super ros::object
  :slots (_success _result ))

(defmethod mavros::CommandTOLResponse
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

(defclass mavros::CommandTOL
  :super ros::object
  :slots ())

(setf (get mavros::CommandTOL :md5sum-) "93ff4eaa9907f58c0e7a909cddce23e2")
(setf (get mavros::CommandTOL :datatype-) "mavros/CommandTOL")
(setf (get mavros::CommandTOL :request) mavros::CommandTOLRequest)
(setf (get mavros::CommandTOL :response) mavros::CommandTOLResponse)

(defmethod mavros::CommandTOLRequest
  (:response () (instance mavros::CommandTOLResponse :init)))

(setf (get mavros::CommandTOLRequest :md5sum-) "93ff4eaa9907f58c0e7a909cddce23e2")
(setf (get mavros::CommandTOLRequest :datatype-) "mavros/CommandTOLRequest")
(setf (get mavros::CommandTOLRequest :definition-)
      "

float32 min_pitch
float32 yaw
float32 latitude
float32 longitude
float32 altitude
---
bool success
uint8 result

")

(setf (get mavros::CommandTOLResponse :md5sum-) "93ff4eaa9907f58c0e7a909cddce23e2")
(setf (get mavros::CommandTOLResponse :datatype-) "mavros/CommandTOLResponse")
(setf (get mavros::CommandTOLResponse :definition-)
      "

float32 min_pitch
float32 yaw
float32 latitude
float32 longitude
float32 altitude
---
bool success
uint8 result

")



(provide :mavros/CommandTOL "93ff4eaa9907f58c0e7a909cddce23e2")


