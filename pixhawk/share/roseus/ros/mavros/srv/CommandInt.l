;; Auto-generated. Do not edit!


(when (boundp 'mavros::CommandInt)
  (if (not (find-package "MAVROS"))
    (make-package "MAVROS"))
  (shadow 'CommandInt (find-package "MAVROS")))
(unless (find-package "MAVROS::COMMANDINT")
  (make-package "MAVROS::COMMANDINT"))
(unless (find-package "MAVROS::COMMANDINTREQUEST")
  (make-package "MAVROS::COMMANDINTREQUEST"))
(unless (find-package "MAVROS::COMMANDINTRESPONSE")
  (make-package "MAVROS::COMMANDINTRESPONSE"))

(in-package "ROS")





(defclass mavros::CommandIntRequest
  :super ros::object
  :slots (_frame _command _current _autocontinue _param1 _param2 _param3 _param4 _x _y _z ))

(defmethod mavros::CommandIntRequest
  (:init
   (&key
    ((:frame __frame) 0)
    ((:command __command) 0)
    ((:current __current) 0)
    ((:autocontinue __autocontinue) 0)
    ((:param1 __param1) 0.0)
    ((:param2 __param2) 0.0)
    ((:param3 __param3) 0.0)
    ((:param4 __param4) 0.0)
    ((:x __x) 0)
    ((:y __y) 0)
    ((:z __z) 0.0)
    )
   (send-super :init)
   (setq _frame (round __frame))
   (setq _command (round __command))
   (setq _current (round __current))
   (setq _autocontinue (round __autocontinue))
   (setq _param1 (float __param1))
   (setq _param2 (float __param2))
   (setq _param3 (float __param3))
   (setq _param4 (float __param4))
   (setq _x (round __x))
   (setq _y (round __y))
   (setq _z (float __z))
   self)
  (:frame
   (&optional __frame)
   (if __frame (setq _frame __frame)) _frame)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:current
   (&optional __current)
   (if __current (setq _current __current)) _current)
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
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:serialization-length
   ()
   (+
    ;; uint8 _frame
    1
    ;; uint16 _command
    2
    ;; uint8 _current
    1
    ;; uint8 _autocontinue
    1
    ;; float32 _param1
    4
    ;; float32 _param2
    4
    ;; float32 _param3
    4
    ;; float32 _param4
    4
    ;; int32 _x
    4
    ;; int32 _y
    4
    ;; float32 _z
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _frame
       (write-byte _frame s)
     ;; uint16 _command
       (write-word _command s)
     ;; uint8 _current
       (write-byte _current s)
     ;; uint8 _autocontinue
       (write-byte _autocontinue s)
     ;; float32 _param1
       (sys::poke _param1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _param2
       (sys::poke _param2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _param3
       (sys::poke _param3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _param4
       (sys::poke _param4 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _x
       (write-long _x s)
     ;; int32 _y
       (write-long _y s)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _frame
     (setq _frame (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _command
     (setq _command (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _current
     (setq _current (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _autocontinue
     (setq _autocontinue (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _param1
     (setq _param1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _param2
     (setq _param2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _param3
     (setq _param3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _param4
     (setq _param4 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _x
     (setq _x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y
     (setq _y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass mavros::CommandIntResponse
  :super ros::object
  :slots (_success ))

(defmethod mavros::CommandIntResponse
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

(defclass mavros::CommandInt
  :super ros::object
  :slots ())

(setf (get mavros::CommandInt :md5sum-) "9f6d60288b6b3cc5234bd92e8f1287ce")
(setf (get mavros::CommandInt :datatype-) "mavros/CommandInt")
(setf (get mavros::CommandInt :request) mavros::CommandIntRequest)
(setf (get mavros::CommandInt :response) mavros::CommandIntResponse)

(defmethod mavros::CommandIntRequest
  (:response () (instance mavros::CommandIntResponse :init)))

(setf (get mavros::CommandIntRequest :md5sum-) "9f6d60288b6b3cc5234bd92e8f1287ce")
(setf (get mavros::CommandIntRequest :datatype-) "mavros/CommandIntRequest")
(setf (get mavros::CommandIntRequest :definition-)
      "

uint8 frame
uint16 command
uint8 current
uint8 autocontinue
float32 param1
float32 param2
float32 param3
float32 param4
int32 x
int32 y
float32 z
---
bool success



")

(setf (get mavros::CommandIntResponse :md5sum-) "9f6d60288b6b3cc5234bd92e8f1287ce")
(setf (get mavros::CommandIntResponse :datatype-) "mavros/CommandIntResponse")
(setf (get mavros::CommandIntResponse :definition-)
      "

uint8 frame
uint16 command
uint8 current
uint8 autocontinue
float32 param1
float32 param2
float32 param3
float32 param4
int32 x
int32 y
float32 z
---
bool success



")



(provide :mavros/CommandInt "9f6d60288b6b3cc5234bd92e8f1287ce")


