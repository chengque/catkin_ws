;; Auto-generated. Do not edit!


(when (boundp 'mavros::ParamPull)
  (if (not (find-package "MAVROS"))
    (make-package "MAVROS"))
  (shadow 'ParamPull (find-package "MAVROS")))
(unless (find-package "MAVROS::PARAMPULL")
  (make-package "MAVROS::PARAMPULL"))
(unless (find-package "MAVROS::PARAMPULLREQUEST")
  (make-package "MAVROS::PARAMPULLREQUEST"))
(unless (find-package "MAVROS::PARAMPULLRESPONSE")
  (make-package "MAVROS::PARAMPULLRESPONSE"))

(in-package "ROS")





(defclass mavros::ParamPullRequest
  :super ros::object
  :slots (_force_pull ))

(defmethod mavros::ParamPullRequest
  (:init
   (&key
    ((:force_pull __force_pull) nil)
    )
   (send-super :init)
   (setq _force_pull __force_pull)
   self)
  (:force_pull
   (&optional __force_pull)
   (if __force_pull (setq _force_pull __force_pull)) _force_pull)
  (:serialization-length
   ()
   (+
    ;; bool _force_pull
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _force_pull
       (if _force_pull (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _force_pull
     (setq _force_pull (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass mavros::ParamPullResponse
  :super ros::object
  :slots (_success _param_received ))

(defmethod mavros::ParamPullResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:param_received __param_received) 0)
    )
   (send-super :init)
   (setq _success __success)
   (setq _param_received (round __param_received))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:param_received
   (&optional __param_received)
   (if __param_received (setq _param_received __param_received)) _param_received)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; uint32 _param_received
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; uint32 _param_received
       (write-long _param_received s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint32 _param_received
     (setq _param_received (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass mavros::ParamPull
  :super ros::object
  :slots ())

(setf (get mavros::ParamPull :md5sum-) "c9628aea2226088718fd240fbd62afc7")
(setf (get mavros::ParamPull :datatype-) "mavros/ParamPull")
(setf (get mavros::ParamPull :request) mavros::ParamPullRequest)
(setf (get mavros::ParamPull :response) mavros::ParamPullResponse)

(defmethod mavros::ParamPullRequest
  (:response () (instance mavros::ParamPullResponse :init)))

(setf (get mavros::ParamPullRequest :md5sum-) "c9628aea2226088718fd240fbd62afc7")
(setf (get mavros::ParamPullRequest :datatype-) "mavros/ParamPullRequest")
(setf (get mavros::ParamPullRequest :definition-)
      "



bool force_pull
---
bool success
uint32 param_received

")

(setf (get mavros::ParamPullResponse :md5sum-) "c9628aea2226088718fd240fbd62afc7")
(setf (get mavros::ParamPullResponse :datatype-) "mavros/ParamPullResponse")
(setf (get mavros::ParamPullResponse :definition-)
      "



bool force_pull
---
bool success
uint32 param_received

")



(provide :mavros/ParamPull "c9628aea2226088718fd240fbd62afc7")


