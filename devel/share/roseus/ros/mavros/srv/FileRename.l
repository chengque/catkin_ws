;; Auto-generated. Do not edit!


(when (boundp 'mavros::FileRename)
  (if (not (find-package "MAVROS"))
    (make-package "MAVROS"))
  (shadow 'FileRename (find-package "MAVROS")))
(unless (find-package "MAVROS::FILERENAME")
  (make-package "MAVROS::FILERENAME"))
(unless (find-package "MAVROS::FILERENAMEREQUEST")
  (make-package "MAVROS::FILERENAMEREQUEST"))
(unless (find-package "MAVROS::FILERENAMERESPONSE")
  (make-package "MAVROS::FILERENAMERESPONSE"))

(in-package "ROS")





(defclass mavros::FileRenameRequest
  :super ros::object
  :slots (_old_path _new_path ))

(defmethod mavros::FileRenameRequest
  (:init
   (&key
    ((:old_path __old_path) "")
    ((:new_path __new_path) "")
    )
   (send-super :init)
   (setq _old_path (string __old_path))
   (setq _new_path (string __new_path))
   self)
  (:old_path
   (&optional __old_path)
   (if __old_path (setq _old_path __old_path)) _old_path)
  (:new_path
   (&optional __new_path)
   (if __new_path (setq _new_path __new_path)) _new_path)
  (:serialization-length
   ()
   (+
    ;; string _old_path
    4 (length _old_path)
    ;; string _new_path
    4 (length _new_path)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _old_path
       (write-long (length _old_path) s) (princ _old_path s)
     ;; string _new_path
       (write-long (length _new_path) s) (princ _new_path s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _old_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _old_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _new_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _new_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mavros::FileRenameResponse
  :super ros::object
  :slots (_success _r_errno ))

(defmethod mavros::FileRenameResponse
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

(defclass mavros::FileRename
  :super ros::object
  :slots ())

(setf (get mavros::FileRename :md5sum-) "07d853e3d48c88a648998515aab1f5b7")
(setf (get mavros::FileRename :datatype-) "mavros/FileRename")
(setf (get mavros::FileRename :request) mavros::FileRenameRequest)
(setf (get mavros::FileRename :response) mavros::FileRenameResponse)

(defmethod mavros::FileRenameRequest
  (:response () (instance mavros::FileRenameResponse :init)))

(setf (get mavros::FileRenameRequest :md5sum-) "07d853e3d48c88a648998515aab1f5b7")
(setf (get mavros::FileRenameRequest :datatype-) "mavros/FileRenameRequest")
(setf (get mavros::FileRenameRequest :definition-)
      "




string old_path
string new_path
---
bool success
int32 r_errno

")

(setf (get mavros::FileRenameResponse :md5sum-) "07d853e3d48c88a648998515aab1f5b7")
(setf (get mavros::FileRenameResponse :datatype-) "mavros/FileRenameResponse")
(setf (get mavros::FileRenameResponse :definition-)
      "




string old_path
string new_path
---
bool success
int32 r_errno

")



(provide :mavros/FileRename "07d853e3d48c88a648998515aab1f5b7")


