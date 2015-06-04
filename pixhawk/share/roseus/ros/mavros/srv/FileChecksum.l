;; Auto-generated. Do not edit!


(when (boundp 'mavros::FileChecksum)
  (if (not (find-package "MAVROS"))
    (make-package "MAVROS"))
  (shadow 'FileChecksum (find-package "MAVROS")))
(unless (find-package "MAVROS::FILECHECKSUM")
  (make-package "MAVROS::FILECHECKSUM"))
(unless (find-package "MAVROS::FILECHECKSUMREQUEST")
  (make-package "MAVROS::FILECHECKSUMREQUEST"))
(unless (find-package "MAVROS::FILECHECKSUMRESPONSE")
  (make-package "MAVROS::FILECHECKSUMRESPONSE"))

(in-package "ROS")





(defclass mavros::FileChecksumRequest
  :super ros::object
  :slots (_file_path ))

(defmethod mavros::FileChecksumRequest
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

(defclass mavros::FileChecksumResponse
  :super ros::object
  :slots (_crc32 _success _r_errno ))

(defmethod mavros::FileChecksumResponse
  (:init
   (&key
    ((:crc32 __crc32) 0)
    ((:success __success) nil)
    ((:r_errno __r_errno) 0)
    )
   (send-super :init)
   (setq _crc32 (round __crc32))
   (setq _success __success)
   (setq _r_errno (round __r_errno))
   self)
  (:crc32
   (&optional __crc32)
   (if __crc32 (setq _crc32 __crc32)) _crc32)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:r_errno
   (&optional __r_errno)
   (if __r_errno (setq _r_errno __r_errno)) _r_errno)
  (:serialization-length
   ()
   (+
    ;; uint32 _crc32
    4
    ;; bool _success
    1
    ;; int32 _r_errno
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _crc32
       (write-long _crc32 s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; int32 _r_errno
       (write-long _r_errno s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _crc32
     (setq _crc32 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _r_errno
     (setq _r_errno (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass mavros::FileChecksum
  :super ros::object
  :slots ())

(setf (get mavros::FileChecksum :md5sum-) "c32158e17d9a1a1c682fe19adbd29fac")
(setf (get mavros::FileChecksum :datatype-) "mavros/FileChecksum")
(setf (get mavros::FileChecksum :request) mavros::FileChecksumRequest)
(setf (get mavros::FileChecksum :response) mavros::FileChecksumResponse)

(defmethod mavros::FileChecksumRequest
  (:response () (instance mavros::FileChecksumResponse :init)))

(setf (get mavros::FileChecksumRequest :md5sum-) "c32158e17d9a1a1c682fe19adbd29fac")
(setf (get mavros::FileChecksumRequest :datatype-) "mavros/FileChecksumRequest")
(setf (get mavros::FileChecksumRequest :definition-)
      "






string file_path
---
uint32 crc32
bool success
int32 r_errno

")

(setf (get mavros::FileChecksumResponse :md5sum-) "c32158e17d9a1a1c682fe19adbd29fac")
(setf (get mavros::FileChecksumResponse :datatype-) "mavros/FileChecksumResponse")
(setf (get mavros::FileChecksumResponse :definition-)
      "






string file_path
---
uint32 crc32
bool success
int32 r_errno

")



(provide :mavros/FileChecksum "c32158e17d9a1a1c682fe19adbd29fac")


