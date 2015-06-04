;; Auto-generated. Do not edit!


(when (boundp 'mavros::FileTruncate)
  (if (not (find-package "MAVROS"))
    (make-package "MAVROS"))
  (shadow 'FileTruncate (find-package "MAVROS")))
(unless (find-package "MAVROS::FILETRUNCATE")
  (make-package "MAVROS::FILETRUNCATE"))
(unless (find-package "MAVROS::FILETRUNCATEREQUEST")
  (make-package "MAVROS::FILETRUNCATEREQUEST"))
(unless (find-package "MAVROS::FILETRUNCATERESPONSE")
  (make-package "MAVROS::FILETRUNCATERESPONSE"))

(in-package "ROS")





(defclass mavros::FileTruncateRequest
  :super ros::object
  :slots (_file_path _length ))

(defmethod mavros::FileTruncateRequest
  (:init
   (&key
    ((:file_path __file_path) "")
    ((:length __length) 0)
    )
   (send-super :init)
   (setq _file_path (string __file_path))
   (setq _length (round __length))
   self)
  (:file_path
   (&optional __file_path)
   (if __file_path (setq _file_path __file_path)) _file_path)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:serialization-length
   ()
   (+
    ;; string _file_path
    4 (length _file_path)
    ;; uint64 _length
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _file_path
       (write-long (length _file_path) s) (princ _file_path s)
     ;; uint64 _length
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _length (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _length) (= (length (_length . bv)) 2)) ;; bignum
              (write-long (ash (elt (_length . bv) 0) 0) s)
              (write-long (ash (elt (_length . bv) 1) -1) s))
             ((and (class _length) (= (length (_length . bv)) 1)) ;; big1
              (write-long (elt (_length . bv) 0) s)
              (write-long (if (>= _length 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _length s)(write-long (if (>= _length 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _file_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _file_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint64 _length
     
#+(or :alpha :irix6 :x86_64)
      (setf _length (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _length (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass mavros::FileTruncateResponse
  :super ros::object
  :slots (_success _r_errno ))

(defmethod mavros::FileTruncateResponse
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

(defclass mavros::FileTruncate
  :super ros::object
  :slots ())

(setf (get mavros::FileTruncate :md5sum-) "71bf45fe3600fc220a82346ce1d1430c")
(setf (get mavros::FileTruncate :datatype-) "mavros/FileTruncate")
(setf (get mavros::FileTruncate :request) mavros::FileTruncateRequest)
(setf (get mavros::FileTruncate :response) mavros::FileTruncateResponse)

(defmethod mavros::FileTruncateRequest
  (:response () (instance mavros::FileTruncateResponse :init)))

(setf (get mavros::FileTruncateRequest :md5sum-) "71bf45fe3600fc220a82346ce1d1430c")
(setf (get mavros::FileTruncateRequest :datatype-) "mavros/FileTruncateRequest")
(setf (get mavros::FileTruncateRequest :definition-)
      "




string file_path
uint64 length
---
bool success
int32 r_errno

")

(setf (get mavros::FileTruncateResponse :md5sum-) "71bf45fe3600fc220a82346ce1d1430c")
(setf (get mavros::FileTruncateResponse :datatype-) "mavros/FileTruncateResponse")
(setf (get mavros::FileTruncateResponse :definition-)
      "




string file_path
uint64 length
---
bool success
int32 r_errno

")



(provide :mavros/FileTruncate "71bf45fe3600fc220a82346ce1d1430c")


