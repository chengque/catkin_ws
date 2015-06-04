;; Auto-generated. Do not edit!


(when (boundp 'mavros::WaypointClear)
  (if (not (find-package "MAVROS"))
    (make-package "MAVROS"))
  (shadow 'WaypointClear (find-package "MAVROS")))
(unless (find-package "MAVROS::WAYPOINTCLEAR")
  (make-package "MAVROS::WAYPOINTCLEAR"))
(unless (find-package "MAVROS::WAYPOINTCLEARREQUEST")
  (make-package "MAVROS::WAYPOINTCLEARREQUEST"))
(unless (find-package "MAVROS::WAYPOINTCLEARRESPONSE")
  (make-package "MAVROS::WAYPOINTCLEARRESPONSE"))

(in-package "ROS")





(defclass mavros::WaypointClearRequest
  :super ros::object
  :slots ())

(defmethod mavros::WaypointClearRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass mavros::WaypointClearResponse
  :super ros::object
  :slots (_success ))

(defmethod mavros::WaypointClearResponse
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

(defclass mavros::WaypointClear
  :super ros::object
  :slots ())

(setf (get mavros::WaypointClear :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get mavros::WaypointClear :datatype-) "mavros/WaypointClear")
(setf (get mavros::WaypointClear :request) mavros::WaypointClearRequest)
(setf (get mavros::WaypointClear :response) mavros::WaypointClearResponse)

(defmethod mavros::WaypointClearRequest
  (:response () (instance mavros::WaypointClearResponse :init)))

(setf (get mavros::WaypointClearRequest :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get mavros::WaypointClearRequest :datatype-) "mavros/WaypointClearRequest")
(setf (get mavros::WaypointClearRequest :definition-)
      "

---
bool success

")

(setf (get mavros::WaypointClearResponse :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get mavros::WaypointClearResponse :datatype-) "mavros/WaypointClearResponse")
(setf (get mavros::WaypointClearResponse :definition-)
      "

---
bool success

")



(provide :mavros/WaypointClear "358e233cde0c8a8bcfea4ce193f8fc15")


