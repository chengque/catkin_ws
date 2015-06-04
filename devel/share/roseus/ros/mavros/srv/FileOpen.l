;; Auto-generated. Do not edit!


(when (boundp 'mavros::FileOpen)
  (if (not (find-package "MAVROS"))
    (make-package "MAVROS"))
  (shadow 'FileOpen (find-package "MAVROS")))
(unless (find-package "MAVROS::FILEOPEN")
  (make-package "MAVROS::FILEOPEN"))
(unless (find-package "MAVROS::FILEOPENREQUEST")
  (make-package "MAVROS::FILEOPENREQUEST"))
(unless (find-package "MAVROS::FILEOPENRESPONSE")
  (make-package "MAVROS::FILEOPENRESPONSE"))

(in-package "ROS")





(shadow '*MODE_READ* (find-package "MAVROS::FILEOPENREQUEST"))
(defconstant mavros::FileOpenRequest::*MODE_READ* 0)
(shadow '*MODE_WRITE* (find-package "MAVROS::FILEOPENREQUEST"))
(defconstant mavros::FileOpenRequest::*MODE_WRITE* 1)
(shadow '*MODE_CREATE* (find-package "MAVROS::FILEOPENREQUEST"))
(defconstant mavros::FileOpenRequest::*MODE_CREATE* 2)
(defclass mavros::FileOpenRequest
  :super ros::object
  :slots (_file_path _mode ))

(defmethod mavros::FileOpenRequest
  (:init
   (&key
    ((:file_path __file_path) "")
    ((:mode __mode) 0)
    )
   (send-super :init)
   (setq _file_path (string __file_path))
   (setq _mode (round __mode))
   self)
  (:file_path
   (&optional __file_path)
   (if __file_path (setq _file_path __file_path)) _file_path)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; string _file_path
    4 (length _file_path)
    ;; uint8 _mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _file_path
       (write-long (length _file_path) s) (princ _file_path s)
     ;; uint8 _mode
       (write-byte _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _file_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _file_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass mavros::FileOpenResponse
  :super ros::object
  :slots (_size _success _r_errno ))

(defmethod mavros::FileOpenResponse
  (:init
   (&key
    ((:size __size) 0)
    ((:success __success) nil)
    ((:r_errno __r_errno) 0)
    )
   (send-super :init)
   (setq _size (round __size))
   (setq _success __success)
   (setq _r_errno (round __r_errno))
   self)
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:r_errno
   (&optional __r_errno)
   (if __r_errno (setq _r_errno __r_errno)) _r_errno)
  (:serialization-length
   ()
   (+
    ;; uint32 _size
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
     ;; uint32 _size
       (write-long _size s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; int32 _r_errno
       (write-long _r_errno s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _size
     (setq _size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _r_errno
     (setq _r_errno (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass mavros::FileOpen
  :super ros::object
  :slots ())

(setf (get mavros::FileOpen :md5sum-) "99a3f49cc67b91477cf49ff15c42af0e")
(setf (get mavros::FileOpen :datatype-) "mavros/FileOpen")
(setf (get mavros::FileOpen :request) mavros::FileOpenRequest)
(setf (get mavros::FileOpen :response) mavros::FileOpenResponse)

(defmethod mavros::FileOpenRequest
  (:response () (instance mavros::FileOpenResponse :init)))

(setf (get mavros::FileOpenRequest :md5sum-) "99a3f49cc67b91477cf49ff15c42af0e")
(setf (get mavros::FileOpenRequest :datatype-) "mavros/FileOpenRequest")
(setf (get mavros::FileOpenRequest :definition-)
      "






uint8 MODE_READ = 0
uint8 MODE_WRITE = 1
uint8 MODE_CREATE = 2

string file_path
uint8 mode
---
uint32 size
bool success
int32 r_errno

")

(setf (get mavros::FileOpenResponse :md5sum-) "99a3f49cc67b91477cf49ff15c42af0e")
(setf (get mavros::FileOpenResponse :datatype-) "mavros/FileOpenResponse")
(setf (get mavros::FileOpenResponse :definition-)
      "






uint8 MODE_READ = 0
uint8 MODE_WRITE = 1
uint8 MODE_CREATE = 2

string file_path
uint8 mode
---
uint32 size
bool success
int32 r_errno

")



(provide :mavros/FileOpen "99a3f49cc67b91477cf49ff15c42af0e")


