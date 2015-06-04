;; Auto-generated. Do not edit!


(when (boundp 'mavros::FileRemove)
  (if (not (find-package "MAVROS"))
    (make-package "MAVROS"))
  (shadow 'FileRemove (find-package "MAVROS")))
(unless (find-package "MAVROS::FILEREMOVE")
  (make-package "MAVROS::FILEREMOVE"))
(unless (find-package "MAVROS::FILEREMOVEREQUEST")
  (make-package "MAVROS::FILEREMOVEREQUEST"))
(unless (find-package "MAVROS::FILEREMOVERESPONSE")
  (make-package "MAVROS::FILEREMOVERESPONSE"))

(in-package "ROS")





(defclass mavros::FileRemoveRequest
  :super ros::object
  :slots (_file_path ))

(defmethod mavros::FileRemoveRequest
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

(defclass mavros::FileRemoveResponse
  :super ros::object
  :slots (_success _r_errno ))

(defmethod mavros::FileRemoveResponse
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

(defclass mavros::FileRemove
  :super ros::object
  :slots ())

(setf (get mavros::FileRemove :md5sum-) "1c309002d7f7c6df7d3f094925ea8e10")
(setf (get mavros::FileRemove :datatype-) "mavros/FileRemove")
(setf (get mavros::FileRemove :request) mavros::FileRemoveRequest)
(setf (get mavros::FileRemove :response) mavros::FileRemoveResponse)

(defmethod mavros::FileRemoveRequest
  (:response () (instance mavros::FileRemoveResponse :init)))

(setf (get mavros::FileRemoveRequest :md5sum-) "1c309002d7f7c6df7d3f094925ea8e10")
(setf (get mavros::FileRemoveRequest :datatype-) "mavros/FileRemoveRequest")
(setf (get mavros::FileRemoveRequest :definition-)
      "




string file_path
---
bool success
int32 r_errno

")

(setf (get mavros::FileRemoveResponse :md5sum-) "1c309002d7f7c6df7d3f094925ea8e10")
(setf (get mavros::FileRemoveResponse :datatype-) "mavros/FileRemoveResponse")
(setf (get mavros::FileRemoveResponse :definition-)
      "




string file_path
---
bool success
int32 r_errno

")



(provide :mavros/FileRemove "1c309002d7f7c6df7d3f094925ea8e10")


