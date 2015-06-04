;; Auto-generated. Do not edit!


(when (boundp 'mavros::ParamGet)
  (if (not (find-package "MAVROS"))
    (make-package "MAVROS"))
  (shadow 'ParamGet (find-package "MAVROS")))
(unless (find-package "MAVROS::PARAMGET")
  (make-package "MAVROS::PARAMGET"))
(unless (find-package "MAVROS::PARAMGETREQUEST")
  (make-package "MAVROS::PARAMGETREQUEST"))
(unless (find-package "MAVROS::PARAMGETRESPONSE")
  (make-package "MAVROS::PARAMGETRESPONSE"))

(in-package "ROS")





(defclass mavros::ParamGetRequest
  :super ros::object
  :slots (_param_id ))

(defmethod mavros::ParamGetRequest
  (:init
   (&key
    ((:param_id __param_id) "")
    )
   (send-super :init)
   (setq _param_id (string __param_id))
   self)
  (:param_id
   (&optional __param_id)
   (if __param_id (setq _param_id __param_id)) _param_id)
  (:serialization-length
   ()
   (+
    ;; string _param_id
    4 (length _param_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _param_id
       (write-long (length _param_id) s) (princ _param_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _param_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _param_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mavros::ParamGetResponse
  :super ros::object
  :slots (_success _integer _real ))

(defmethod mavros::ParamGetResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:integer __integer) 0)
    ((:real __real) 0.0)
    )
   (send-super :init)
   (setq _success __success)
   (setq _integer (round __integer))
   (setq _real (float __real))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:integer
   (&optional __integer)
   (if __integer (setq _integer __integer)) _integer)
  (:real
   (&optional __real)
   (if __real (setq _real __real)) _real)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; int64 _integer
    8
    ;; float64 _real
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; int64 _integer
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _integer (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _integer) (= (length (_integer . bv)) 2)) ;; bignum
              (write-long (ash (elt (_integer . bv) 0) 0) s)
              (write-long (ash (elt (_integer . bv) 1) -1) s))
             ((and (class _integer) (= (length (_integer . bv)) 1)) ;; big1
              (write-long (elt (_integer . bv) 0) s)
              (write-long (if (>= _integer 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _integer s)(write-long (if (>= _integer 0) 0 #xffffffff) s)))
     ;; float64 _real
       (sys::poke _real (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int64 _integer
#+(or :alpha :irix6 :x86_64)
      (setf _integer (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _integer (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float64 _real
     (setq _real (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass mavros::ParamGet
  :super ros::object
  :slots ())

(setf (get mavros::ParamGet :md5sum-) "93fd6e4fa4f0fb943fff9ce5ce2182b1")
(setf (get mavros::ParamGet :datatype-) "mavros/ParamGet")
(setf (get mavros::ParamGet :request) mavros::ParamGetRequest)
(setf (get mavros::ParamGet :response) mavros::ParamGetResponse)

(defmethod mavros::ParamGetRequest
  (:response () (instance mavros::ParamGetResponse :init)))

(setf (get mavros::ParamGetRequest :md5sum-) "93fd6e4fa4f0fb943fff9ce5ce2182b1")
(setf (get mavros::ParamGetRequest :datatype-) "mavros/ParamGetRequest")
(setf (get mavros::ParamGetRequest :definition-)
      "







string param_id
---
bool success
int64 integer
float64 real

")

(setf (get mavros::ParamGetResponse :md5sum-) "93fd6e4fa4f0fb943fff9ce5ce2182b1")
(setf (get mavros::ParamGetResponse :datatype-) "mavros/ParamGetResponse")
(setf (get mavros::ParamGetResponse :definition-)
      "







string param_id
---
bool success
int64 integer
float64 real

")



(provide :mavros/ParamGet "93fd6e4fa4f0fb943fff9ce5ce2182b1")


