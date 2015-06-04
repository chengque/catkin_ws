;; Auto-generated. Do not edit!


(when (boundp 'mavros::StreamRate)
  (if (not (find-package "MAVROS"))
    (make-package "MAVROS"))
  (shadow 'StreamRate (find-package "MAVROS")))
(unless (find-package "MAVROS::STREAMRATE")
  (make-package "MAVROS::STREAMRATE"))
(unless (find-package "MAVROS::STREAMRATEREQUEST")
  (make-package "MAVROS::STREAMRATEREQUEST"))
(unless (find-package "MAVROS::STREAMRATERESPONSE")
  (make-package "MAVROS::STREAMRATERESPONSE"))

(in-package "ROS")





(shadow '*STREAM_ALL* (find-package "MAVROS::STREAMRATEREQUEST"))
(defconstant mavros::StreamRateRequest::*STREAM_ALL* 0)
(shadow '*STREAM_RAW_SENSORS* (find-package "MAVROS::STREAMRATEREQUEST"))
(defconstant mavros::StreamRateRequest::*STREAM_RAW_SENSORS* 1)
(shadow '*STREAM_EXTENDED_STATUS* (find-package "MAVROS::STREAMRATEREQUEST"))
(defconstant mavros::StreamRateRequest::*STREAM_EXTENDED_STATUS* 2)
(shadow '*STREAM_RC_CHANNELS* (find-package "MAVROS::STREAMRATEREQUEST"))
(defconstant mavros::StreamRateRequest::*STREAM_RC_CHANNELS* 3)
(shadow '*STREAM_RAW_CONTROLLER* (find-package "MAVROS::STREAMRATEREQUEST"))
(defconstant mavros::StreamRateRequest::*STREAM_RAW_CONTROLLER* 4)
(shadow '*STREAM_POSITION* (find-package "MAVROS::STREAMRATEREQUEST"))
(defconstant mavros::StreamRateRequest::*STREAM_POSITION* 6)
(shadow '*STREAM_EXTRA1* (find-package "MAVROS::STREAMRATEREQUEST"))
(defconstant mavros::StreamRateRequest::*STREAM_EXTRA1* 10)
(shadow '*STREAM_EXTRA2* (find-package "MAVROS::STREAMRATEREQUEST"))
(defconstant mavros::StreamRateRequest::*STREAM_EXTRA2* 11)
(shadow '*STREAM_EXTRA3* (find-package "MAVROS::STREAMRATEREQUEST"))
(defconstant mavros::StreamRateRequest::*STREAM_EXTRA3* 12)
(defclass mavros::StreamRateRequest
  :super ros::object
  :slots (_stream_id _message_rate _on_off ))

(defmethod mavros::StreamRateRequest
  (:init
   (&key
    ((:stream_id __stream_id) 0)
    ((:message_rate __message_rate) 0)
    ((:on_off __on_off) nil)
    )
   (send-super :init)
   (setq _stream_id (round __stream_id))
   (setq _message_rate (round __message_rate))
   (setq _on_off __on_off)
   self)
  (:stream_id
   (&optional __stream_id)
   (if __stream_id (setq _stream_id __stream_id)) _stream_id)
  (:message_rate
   (&optional __message_rate)
   (if __message_rate (setq _message_rate __message_rate)) _message_rate)
  (:on_off
   (&optional __on_off)
   (if __on_off (setq _on_off __on_off)) _on_off)
  (:serialization-length
   ()
   (+
    ;; uint8 _stream_id
    1
    ;; uint16 _message_rate
    2
    ;; bool _on_off
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _stream_id
       (write-byte _stream_id s)
     ;; uint16 _message_rate
       (write-word _message_rate s)
     ;; bool _on_off
       (if _on_off (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _stream_id
     (setq _stream_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _message_rate
     (setq _message_rate (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _on_off
     (setq _on_off (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass mavros::StreamRateResponse
  :super ros::object
  :slots ())

(defmethod mavros::StreamRateResponse
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

(defclass mavros::StreamRate
  :super ros::object
  :slots ())

(setf (get mavros::StreamRate :md5sum-) "d12f7661724c8ba25f67ba597bb7d039")
(setf (get mavros::StreamRate :datatype-) "mavros/StreamRate")
(setf (get mavros::StreamRate :request) mavros::StreamRateRequest)
(setf (get mavros::StreamRate :response) mavros::StreamRateResponse)

(defmethod mavros::StreamRateRequest
  (:response () (instance mavros::StreamRateResponse :init)))

(setf (get mavros::StreamRateRequest :md5sum-) "d12f7661724c8ba25f67ba597bb7d039")
(setf (get mavros::StreamRateRequest :datatype-) "mavros/StreamRateRequest")
(setf (get mavros::StreamRateRequest :definition-)
      "


uint8 STREAM_ALL = 0
uint8 STREAM_RAW_SENSORS = 1
uint8 STREAM_EXTENDED_STATUS = 2
uint8 STREAM_RC_CHANNELS = 3
uint8 STREAM_RAW_CONTROLLER = 4
uint8 STREAM_POSITION = 6
uint8 STREAM_EXTRA1 = 10
uint8 STREAM_EXTRA2 = 11
uint8 STREAM_EXTRA3 = 12

uint8 stream_id
uint16 message_rate
bool on_off
---

")

(setf (get mavros::StreamRateResponse :md5sum-) "d12f7661724c8ba25f67ba597bb7d039")
(setf (get mavros::StreamRateResponse :datatype-) "mavros/StreamRateResponse")
(setf (get mavros::StreamRateResponse :definition-)
      "


uint8 STREAM_ALL = 0
uint8 STREAM_RAW_SENSORS = 1
uint8 STREAM_EXTENDED_STATUS = 2
uint8 STREAM_RC_CHANNELS = 3
uint8 STREAM_RAW_CONTROLLER = 4
uint8 STREAM_POSITION = 6
uint8 STREAM_EXTRA1 = 10
uint8 STREAM_EXTRA2 = 11
uint8 STREAM_EXTRA3 = 12

uint8 stream_id
uint16 message_rate
bool on_off
---

")



(provide :mavros/StreamRate "d12f7661724c8ba25f67ba597bb7d039")


