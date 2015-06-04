;; Auto-generated. Do not edit!


(when (boundp 'mavros::ParamPush)
  (if (not (find-package "MAVROS"))
    (make-package "MAVROS"))
  (shadow 'ParamPush (find-package "MAVROS")))
(unless (find-package "MAVROS::PARAMPUSH")
  (make-package "MAVROS::PARAMPUSH"))
(unless (find-package "MAVROS::PARAMPUSHREQUEST")
  (make-package "MAVROS::PARAMPUSHREQUEST"))
(unless (find-package "MAVROS::PARAMPUSHRESPONSE")
  (make-package "MAVROS::PARAMPUSHRESPONSE"))

(in-package "ROS")





(defclass mavros::ParamPushRequest
  :super ros::object
  :slots ())

(defmethod mavros::ParamPushRequest
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

(defclass mavros::ParamPushResponse
  :super ros::object
  :slots (_success _param_transfered ))

(defmethod mavros::ParamPushResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:param_transfered __param_transfered) 0)
    )
   (send-super :init)
   (setq _success __success)
   (setq _param_transfered (round __param_transfered))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:param_transfered
   (&optional __param_transfered)
   (if __param_transfered (setq _param_transfered __param_transfered)) _param_transfered)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; uint32 _param_transfered
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; uint32 _param_transfered
       (write-long _param_transfered s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint32 _param_transfered
     (setq _param_transfered (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass mavros::ParamPush
  :super ros::object
  :slots ())

(setf (get mavros::ParamPush :md5sum-) "d3fc4d8cefa193382985a92a041a2a3d")
(setf (get mavros::ParamPush :datatype-) "mavros/ParamPush")
(setf (get mavros::ParamPush :request) mavros::ParamPushRequest)
(setf (get mavros::ParamPush :response) mavros::ParamPushResponse)

(defmethod mavros::ParamPushRequest
  (:response () (instance mavros::ParamPushResponse :init)))

(setf (get mavros::ParamPushRequest :md5sum-) "d3fc4d8cefa193382985a92a041a2a3d")
(setf (get mavros::ParamPushRequest :datatype-) "mavros/ParamPushRequest")
(setf (get mavros::ParamPushRequest :definition-)
      "



---
bool success
uint32 param_transfered

")

(setf (get mavros::ParamPushResponse :md5sum-) "d3fc4d8cefa193382985a92a041a2a3d")
(setf (get mavros::ParamPushResponse :datatype-) "mavros/ParamPushResponse")
(setf (get mavros::ParamPushResponse :definition-)
      "



---
bool success
uint32 param_transfered

")



(provide :mavros/ParamPush "d3fc4d8cefa193382985a92a041a2a3d")


