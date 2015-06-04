;; Auto-generated. Do not edit!


(when (boundp 'mavros::FileMakeDir)
  (if (not (find-package "MAVROS"))
    (make-package "MAVROS"))
  (shadow 'FileMakeDir (find-package "MAVROS")))
(unless (find-package "MAVROS::FILEMAKEDIR")
  (make-package "MAVROS::FILEMAKEDIR"))
(unless (find-package "MAVROS::FILEMAKEDIRREQUEST")
  (make-package "MAVROS::FILEMAKEDIRREQUEST"))
(unless (find-package "MAVROS::FILEMAKEDIRRESPONSE")
  (make-package "MAVROS::FILEMAKEDIRRESPONSE"))

(in-package "ROS")





(defclass mavros::FileMakeDirRequest
  :super ros::object
  :slots (_dir_path ))

(defmethod mavros::FileMakeDirRequest
  (:init
   (&key
    ((:dir_path __dir_path) "")
    )
   (send-super :init)
   (setq _dir_path (string __dir_path))
   self)
  (:dir_path
   (&optional __dir_path)
   (if __dir_path (setq _dir_path __dir_path)) _dir_path)
  (:serialization-length
   ()
   (+
    ;; string _dir_path
    4 (length _dir_path)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _dir_path
       (write-long (length _dir_path) s) (princ _dir_path s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _dir_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _dir_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mavros::FileMakeDirResponse
  :super ros::object
  :slots (_success _r_errno ))

(defmethod mavros::FileMakeDirResponse
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

(defclass mavros::FileMakeDir
  :super ros::object
  :slots ())

(setf (get mavros::FileMakeDir :md5sum-) "f140c5ef05b00c3cfc30d5a2061b4d63")
(setf (get mavros::FileMakeDir :datatype-) "mavros/FileMakeDir")
(setf (get mavros::FileMakeDir :request) mavros::FileMakeDirRequest)
(setf (get mavros::FileMakeDir :response) mavros::FileMakeDirResponse)

(defmethod mavros::FileMakeDirRequest
  (:response () (instance mavros::FileMakeDirResponse :init)))

(setf (get mavros::FileMakeDirRequest :md5sum-) "f140c5ef05b00c3cfc30d5a2061b4d63")
(setf (get mavros::FileMakeDirRequest :datatype-) "mavros/FileMakeDirRequest")
(setf (get mavros::FileMakeDirRequest :definition-)
      "




string dir_path
---
bool success
int32 r_errno

")

(setf (get mavros::FileMakeDirResponse :md5sum-) "f140c5ef05b00c3cfc30d5a2061b4d63")
(setf (get mavros::FileMakeDirResponse :datatype-) "mavros/FileMakeDirResponse")
(setf (get mavros::FileMakeDirResponse :definition-)
      "




string dir_path
---
bool success
int32 r_errno

")



(provide :mavros/FileMakeDir "f140c5ef05b00c3cfc30d5a2061b4d63")


