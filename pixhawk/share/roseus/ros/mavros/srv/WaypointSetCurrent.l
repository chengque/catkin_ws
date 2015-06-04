;; Auto-generated. Do not edit!


(when (boundp 'mavros::WaypointSetCurrent)
  (if (not (find-package "MAVROS"))
    (make-package "MAVROS"))
  (shadow 'WaypointSetCurrent (find-package "MAVROS")))
(unless (find-package "MAVROS::WAYPOINTSETCURRENT")
  (make-package "MAVROS::WAYPOINTSETCURRENT"))
(unless (find-package "MAVROS::WAYPOINTSETCURRENTREQUEST")
  (make-package "MAVROS::WAYPOINTSETCURRENTREQUEST"))
(unless (find-package "MAVROS::WAYPOINTSETCURRENTRESPONSE")
  (make-package "MAVROS::WAYPOINTSETCURRENTRESPONSE"))

(in-package "ROS")





(defclass mavros::WaypointSetCurrentRequest
  :super ros::object
  :slots (_wp_seq ))

(defmethod mavros::WaypointSetCurrentRequest
  (:init
   (&key
    ((:wp_seq __wp_seq) 0)
    )
   (send-super :init)
   (setq _wp_seq (round __wp_seq))
   self)
  (:wp_seq
   (&optional __wp_seq)
   (if __wp_seq (setq _wp_seq __wp_seq)) _wp_seq)
  (:serialization-length
   ()
   (+
    ;; uint16 _wp_seq
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _wp_seq
       (write-word _wp_seq s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _wp_seq
     (setq _wp_seq (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass mavros::WaypointSetCurrentResponse
  :super ros::object
  :slots (_success ))

(defmethod mavros::WaypointSetCurrentResponse
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

(defclass mavros::WaypointSetCurrent
  :super ros::object
  :slots ())

(setf (get mavros::WaypointSetCurrent :md5sum-) "f99aa1a911a80ab546ea470f4e90c807")
(setf (get mavros::WaypointSetCurrent :datatype-) "mavros/WaypointSetCurrent")
(setf (get mavros::WaypointSetCurrent :request) mavros::WaypointSetCurrentRequest)
(setf (get mavros::WaypointSetCurrent :response) mavros::WaypointSetCurrentResponse)

(defmethod mavros::WaypointSetCurrentRequest
  (:response () (instance mavros::WaypointSetCurrentResponse :init)))

(setf (get mavros::WaypointSetCurrentRequest :md5sum-) "f99aa1a911a80ab546ea470f4e90c807")
(setf (get mavros::WaypointSetCurrentRequest :datatype-) "mavros/WaypointSetCurrentRequest")
(setf (get mavros::WaypointSetCurrentRequest :definition-)
      "



uint16 wp_seq
---
bool success

")

(setf (get mavros::WaypointSetCurrentResponse :md5sum-) "f99aa1a911a80ab546ea470f4e90c807")
(setf (get mavros::WaypointSetCurrentResponse :datatype-) "mavros/WaypointSetCurrentResponse")
(setf (get mavros::WaypointSetCurrentResponse :definition-)
      "



uint16 wp_seq
---
bool success

")



(provide :mavros/WaypointSetCurrent "f99aa1a911a80ab546ea470f4e90c807")


