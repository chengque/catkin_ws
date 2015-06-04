;; Auto-generated. Do not edit!


(when (boundp 'mavros::FileClose)
  (if (not (find-package "MAVROS"))
    (make-package "MAVROS"))
  (shadow 'FileClose (find-package "MAVROS")))
(unless (find-package "MAVROS::FILECLOSE")
  (make-package "MAVROS::FILECLOSE"))
(unless (find-package "MAVROS::FILECLOSEREQUEST")
  (make-package "MAVROS::FILECLOSEREQUEST"))
(unless (find-package "MAVROS::FILECLOSERESPONSE")
  (make-package "MAVROS::FILECLOSERESPONSE"))

(in-package "ROS")





(defclass mavros::FileCloseRequest
  :super ros::object
  :slots (_file_path ))

(defmethod mavros::FileCloseRequest
  (:init
   (&key
    ((:file_path __file_path) "")
    )
   (send-super :init)
   (setq _file_path (string __file_path))
   self)
  (:file_path
   (&optional __file_path)
   (if __file_path (setq _file_path __file_path)) _file_path)
  (:serialization-length
   ()
   (+
    ;; string _file_path
    4 (length _file_path)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _file_path
       (write-long (length _file_path) s) (princ _file_path s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _file_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _file_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mavros::FileCloseResponse
  :super ros::object
  :slots (_success _r_errno ))

(defmethod mavros::FileCloseResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:r_errno __r_errno) 0)
    )
   (send-super :init)
   (setq _success __success)
   (setq _r_errno (round __r_errno))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:r_errno
   (&optional __r_errno)
   (if __r_errno (setq _r_errno __r_errno)) _r_errno)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; int32 _r_errno
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; int32 _r_errno
       (write-long _r_errno s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _r_errno
     (setq _r_errno (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass mavros::FileClose
  :super ros::object
  :slots ())

(setf (get mavros::FileClose :md5sum-) "1c309002d7f7c6df7d3f094925ea8e10")
(setf (get mavros::FileClose :datatype-) "mavros/FileClose")
(setf (get mavros::FileClose :request) mavros::FileCloseRequest)
(setf (get mavros::FileClose :response) mavros::FileCloseResponse)

(defmethod mavros::FileCloseRequest
  (:response () (instance mavros::FileCloseResponse :init)))

(setf (get mavros::FileCloseRequest :md5sum-) "1c309002d7f7c6df7d3f094925ea8e10")
(setf (get mavros::FileCloseRequest :datatype-) "mavros/FileCloseRequest")
(setf (get mavros::FileCloseRequest :definition-)
      "





string file_path
---
bool success
int32 r_errno

")

(setf (get mavros::FileCloseResponse :md5sum-) "1c309002d7f7c6df7d3f094925ea8e10")
(setf (get mavros::FileCloseResponse :datatype-) "mavros/FileCloseResponse")
(setf (get mavros::FileCloseResponse :definition-)
      "





string file_path
---
bool success
int32 r_errno

")



(provide :mavros/FileClose "1c309002d7f7c6df7d3f094925ea8e10")


