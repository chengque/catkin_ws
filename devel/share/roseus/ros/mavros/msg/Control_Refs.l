;; Auto-generated. Do not edit!


(when (boundp 'mavros::Control_Refs)
  (if (not (find-package "MAVROS"))
    (make-package "MAVROS"))
  (shadow 'Control_Refs (find-package "MAVROS")))
(unless (find-package "MAVROS::CONTROL_REFS")
  (make-package "MAVROS::CONTROL_REFS"))

(in-package "ROS")
;;//! \htmlinclude Control_Refs.msg.html


(defclass mavros::Control_Refs
  :super ros::object
  :slots (_theta _phi _psi _thrust ))

(defmethod mavros::Control_Refs
  (:init
   (&key
    ((:theta __theta) 0.0)
    ((:phi __phi) 0.0)
    ((:psi __psi) 0.0)
    ((:thrust __thrust) 0.0)
    )
   (send-super :init)
   (setq _theta (float __theta))
   (setq _phi (float __phi))
   (setq _psi (float __psi))
   (setq _thrust (float __thrust))
   self)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:phi
   (&optional __phi)
   (if __phi (setq _phi __phi)) _phi)
  (:psi
   (&optional __psi)
   (if __psi (setq _psi __psi)) _psi)
  (:thrust
   (&optional __thrust)
   (if __thrust (setq _thrust __thrust)) _thrust)
  (:serialization-length
   ()
   (+
    ;; float32 _theta
    4
    ;; float32 _phi
    4
    ;; float32 _psi
    4
    ;; float32 _thrust
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _phi
       (sys::poke _phi (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _psi
       (sys::poke _psi (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _thrust
       (sys::poke _thrust (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _theta
     (setq _theta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _phi
     (setq _phi (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _psi
     (setq _psi (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _thrust
     (setq _thrust (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mavros::Control_Refs :md5sum-) "21f7f291a693523bde2376aa0274264b")
(setf (get mavros::Control_Refs :datatype-) "mavros/Control_Refs")
(setf (get mavros::Control_Refs :definition-)
      "float32 theta
float32 phi
float32 psi
float32 thrust

")



(provide :mavros/Control_Refs "21f7f291a693523bde2376aa0274264b")


