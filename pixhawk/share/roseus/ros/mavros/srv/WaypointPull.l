;; Auto-generated. Do not edit!


(when (boundp 'mavros::WaypointPull)
  (if (not (find-package "MAVROS"))
    (make-package "MAVROS"))
  (shadow 'WaypointPull (find-package "MAVROS")))
(unless (find-package "MAVROS::WAYPOINTPULL")
  (make-package "MAVROS::WAYPOINTPULL"))
(unless (find-package "MAVROS::WAYPOINTPULLREQUEST")
  (make-package "MAVROS::WAYPOINTPULLREQUEST"))
(unless (find-package "MAVROS::WAYPOINTPULLRESPONSE")
  (make-package "MAVROS::WAYPOINTPULLRESPONSE"))

(in-package "ROS")





(defclass mavros::WaypointPullRequest
  :super ros::object
  :slots ())

(defmethod mavros::WaypointPullRequest
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

(defclass mavros::WaypointPullResponse
  :super ros::object
  :slots (_success _wp_received ))

(defmethod mavros::WaypointPullResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:wp_received __wp_received) 0)
    )
   (send-super :init)
   (setq _success __success)
   (setq _wp_received (round __wp_received))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:wp_received
   (&optional __wp_received)
   (if __wp_received (setq _wp_received __wp_received)) _wp_received)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; uint32 _wp_received
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; uint32 _wp_received
       (write-long _wp_received s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint32 _wp_received
     (setq _wp_received (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass mavros::WaypointPull
  :super ros::object
  :slots ())

(setf (get mavros::WaypointPull :md5sum-) "a8d9ecef8fb37028d2db2a9aa4ed7e79")
(setf (get mavros::WaypointPull :datatype-) "mavros/WaypointPull")
(setf (get mavros::WaypointPull :request) mavros::WaypointPullRequest)
(setf (get mavros::WaypointPull :response) mavros::WaypointPullResponse)

(defmethod mavros::WaypointPullRequest
  (:response () (instance mavros::WaypointPullResponse :init)))

(setf (get mavros::WaypointPullRequest :md5sum-) "a8d9ecef8fb37028d2db2a9aa4ed7e79")
(setf (get mavros::WaypointPullRequest :datatype-) "mavros/WaypointPullRequest")
(setf (get mavros::WaypointPullRequest :definition-)
      "



---
bool success
uint32 wp_received

")

(setf (get mavros::WaypointPullResponse :md5sum-) "a8d9ecef8fb37028d2db2a9aa4ed7e79")
(setf (get mavros::WaypointPullResponse :datatype-) "mavros/WaypointPullResponse")
(setf (get mavros::WaypointPullResponse :definition-)
      "



---
bool success
uint32 wp_received

")



(provide :mavros/WaypointPull "a8d9ecef8fb37028d2db2a9aa4ed7e79")


