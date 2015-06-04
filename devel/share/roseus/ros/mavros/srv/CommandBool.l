;; Auto-generated. Do not edit!


(when (boundp 'mavros::CommandBool)
  (if (not (find-package "MAVROS"))
    (make-package "MAVROS"))
  (shadow 'CommandBool (find-package "MAVROS")))
(unless (find-package "MAVROS::COMMANDBOOL")
  (make-package "MAVROS::COMMANDBOOL"))
(unless (find-package "MAVROS::COMMANDBOOLREQUEST")
  (make-package "MAVROS::COMMANDBOOLREQUEST"))
(unless (find-package "MAVROS::COMMANDBOOLRESPONSE")
  (make-package "MAVROS::COMMANDBOOLRESPONSE"))

(in-package "ROS")





(defclass mavros::CommandBoolRequest
  :super ros::object
  :slots (_value ))

(defmethod mavros::CommandBoolRequest
  (:init
   (&key
    ((:value __value) nil)
    )
   (send-super :init)
   (setq _value __value)
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; bool _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _value
       (if _value (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _value
     (setq _value (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass mavros::CommandBoolResponse
  :super ros::object
  :slots (_success _result ))

(defmethod mavros::CommandBoolResponse
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

(defclass mavros::CommandBool
  :super ros::object
  :slots ())

(setf (get mavros::CommandBool :md5sum-) "e09abbb4e5bae6b558e5010966eb6e9e")
(setf (get mavros::CommandBool :datatype-) "mavros/CommandBool")
(setf (get mavros::CommandBool :request) mavros::CommandBoolRequest)
(setf (get mavros::CommandBool :response) mavros::CommandBoolResponse)

(defmethod mavros::CommandBoolRequest
  (:response () (instance mavros::CommandBoolResponse :init)))

(setf (get mavros::CommandBoolRequest :md5sum-) "e09abbb4e5bae6b558e5010966eb6e9e")
(setf (get mavros::CommandBoolRequest :datatype-) "mavros/CommandBoolRequest")
(setf (get mavros::CommandBoolRequest :definition-)
      "

bool value
---
bool success
uint8 result

")

(setf (get mavros::CommandBoolResponse :md5sum-) "e09abbb4e5bae6b558e5010966eb6e9e")
(setf (get mavros::CommandBoolResponse :datatype-) "mavros/CommandBoolResponse")
(setf (get mavros::CommandBoolResponse :definition-)
      "

bool value
---
bool success
uint8 result

")



(provide :mavros/CommandBool "e09abbb4e5bae6b558e5010966eb6e9e")


