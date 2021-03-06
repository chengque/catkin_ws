;; Auto-generated. Do not edit!


(when (boundp 'mavros::SetMode)
  (if (not (find-package "MAVROS"))
    (make-package "MAVROS"))
  (shadow 'SetMode (find-package "MAVROS")))
(unless (find-package "MAVROS::SETMODE")
  (make-package "MAVROS::SETMODE"))
(unless (find-package "MAVROS::SETMODEREQUEST")
  (make-package "MAVROS::SETMODEREQUEST"))
(unless (find-package "MAVROS::SETMODERESPONSE")
  (make-package "MAVROS::SETMODERESPONSE"))

(in-package "ROS")





(shadow '*MAV_MODE_PREFLIGHT* (find-package "MAVROS::SETMODEREQUEST"))
(defconstant mavros::SetModeRequest::*MAV_MODE_PREFLIGHT* 0)
(shadow '*MAV_MODE_STABILIZE_DISARMED* (find-package "MAVROS::SETMODEREQUEST"))
(defconstant mavros::SetModeRequest::*MAV_MODE_STABILIZE_DISARMED* 80)
(shadow '*MAV_MODE_STABILIZE_ARMED* (find-package "MAVROS::SETMODEREQUEST"))
(defconstant mavros::SetModeRequest::*MAV_MODE_STABILIZE_ARMED* 208)
(shadow '*MAV_MODE_MANUAL_DISARMED* (find-package "MAVROS::SETMODEREQUEST"))
(defconstant mavros::SetModeRequest::*MAV_MODE_MANUAL_DISARMED* 64)
(shadow '*MAV_MODE_MANUAL_ARMED* (find-package "MAVROS::SETMODEREQUEST"))
(defconstant mavros::SetModeRequest::*MAV_MODE_MANUAL_ARMED* 192)
(shadow '*MAV_MODE_GUIDED_DISARMED* (find-package "MAVROS::SETMODEREQUEST"))
(defconstant mavros::SetModeRequest::*MAV_MODE_GUIDED_DISARMED* 88)
(shadow '*MAV_MODE_GUIDED_ARMED* (find-package "MAVROS::SETMODEREQUEST"))
(defconstant mavros::SetModeRequest::*MAV_MODE_GUIDED_ARMED* 216)
(shadow '*MAV_MODE_AUTO_DISARMED* (find-package "MAVROS::SETMODEREQUEST"))
(defconstant mavros::SetModeRequest::*MAV_MODE_AUTO_DISARMED* 92)
(shadow '*MAV_MODE_AUTO_ARMED* (find-package "MAVROS::SETMODEREQUEST"))
(defconstant mavros::SetModeRequest::*MAV_MODE_AUTO_ARMED* 220)
(shadow '*MAV_MODE_TEST_DISARMED* (find-package "MAVROS::SETMODEREQUEST"))
(defconstant mavros::SetModeRequest::*MAV_MODE_TEST_DISARMED* 66)
(shadow '*MAV_MODE_TEST_ARMED* (find-package "MAVROS::SETMODEREQUEST"))
(defconstant mavros::SetModeRequest::*MAV_MODE_TEST_ARMED* 194)
(defclass mavros::SetModeRequest
  :super ros::object
  :slots (_base_mode _custom_mode ))

(defmethod mavros::SetModeRequest
  (:init
   (&key
    ((:base_mode __base_mode) 0)
    ((:custom_mode __custom_mode) "")
    )
   (send-super :init)
   (setq _base_mode (round __base_mode))
   (setq _custom_mode (string __custom_mode))
   self)
  (:base_mode
   (&optional __base_mode)
   (if __base_mode (setq _base_mode __base_mode)) _base_mode)
  (:custom_mode
   (&optional __custom_mode)
   (if __custom_mode (setq _custom_mode __custom_mode)) _custom_mode)
  (:serialization-length
   ()
   (+
    ;; uint8 _base_mode
    1
    ;; string _custom_mode
    4 (length _custom_mode)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _base_mode
       (write-byte _base_mode s)
     ;; string _custom_mode
       (write-long (length _custom_mode) s) (princ _custom_mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _base_mode
     (setq _base_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _custom_mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _custom_mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mavros::SetModeResponse
  :super ros::object
  :slots (_success ))

(defmethod mavros::SetModeResponse
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

(defclass mavros::SetMode
  :super ros::object
  :slots ())

(setf (get mavros::SetMode :md5sum-) "48ecf639e39052f8856a839dcddf826a")
(setf (get mavros::SetMode :datatype-) "mavros/SetMode")
(setf (get mavros::SetMode :request) mavros::SetModeRequest)
(setf (get mavros::SetMode :response) mavros::SetModeResponse)

(defmethod mavros::SetModeRequest
  (:response () (instance mavros::SetModeResponse :init)))

(setf (get mavros::SetModeRequest :md5sum-) "48ecf639e39052f8856a839dcddf826a")
(setf (get mavros::SetModeRequest :datatype-) "mavros/SetModeRequest")
(setf (get mavros::SetModeRequest :definition-)
      "


uint8 MAV_MODE_PREFLIGHT		= 0
uint8 MAV_MODE_STABILIZE_DISARMED	= 80
uint8 MAV_MODE_STABILIZE_ARMED		= 208
uint8 MAV_MODE_MANUAL_DISARMED		= 64
uint8 MAV_MODE_MANUAL_ARMED		= 192
uint8 MAV_MODE_GUIDED_DISARMED		= 88
uint8 MAV_MODE_GUIDED_ARMED		= 216
uint8 MAV_MODE_AUTO_DISARMED		= 92
uint8 MAV_MODE_AUTO_ARMED		= 220
uint8 MAV_MODE_TEST_DISARMED		= 66
uint8 MAV_MODE_TEST_ARMED		= 194

uint8 base_mode
string custom_mode
---
bool success

")

(setf (get mavros::SetModeResponse :md5sum-) "48ecf639e39052f8856a839dcddf826a")
(setf (get mavros::SetModeResponse :datatype-) "mavros/SetModeResponse")
(setf (get mavros::SetModeResponse :definition-)
      "


uint8 MAV_MODE_PREFLIGHT		= 0
uint8 MAV_MODE_STABILIZE_DISARMED	= 80
uint8 MAV_MODE_STABILIZE_ARMED		= 208
uint8 MAV_MODE_MANUAL_DISARMED		= 64
uint8 MAV_MODE_MANUAL_ARMED		= 192
uint8 MAV_MODE_GUIDED_DISARMED		= 88
uint8 MAV_MODE_GUIDED_ARMED		= 216
uint8 MAV_MODE_AUTO_DISARMED		= 92
uint8 MAV_MODE_AUTO_ARMED		= 220
uint8 MAV_MODE_TEST_DISARMED		= 66
uint8 MAV_MODE_TEST_ARMED		= 194

uint8 base_mode
string custom_mode
---
bool success

")



(provide :mavros/SetMode "48ecf639e39052f8856a839dcddf826a")


