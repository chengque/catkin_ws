; Auto-generated. Do not edit!


(cl:in-package mavros_extras-msg)


;//! \htmlinclude Control_Refs.msg.html

(cl:defclass <Control_Refs> (roslisp-msg-protocol:ros-message)
  ((theta
    :reader theta
    :initarg :theta
    :type cl:float
    :initform 0.0)
   (phi
    :reader phi
    :initarg :phi
    :type cl:float
    :initform 0.0)
   (psi
    :reader psi
    :initarg :psi
    :type cl:float
    :initform 0.0)
   (thrust
    :reader thrust
    :initarg :thrust
    :type cl:float
    :initform 0.0))
)

(cl:defclass Control_Refs (<Control_Refs>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Control_Refs>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Control_Refs)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_extras-msg:<Control_Refs> is deprecated: use mavros_extras-msg:Control_Refs instead.")))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <Control_Refs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_extras-msg:theta-val is deprecated.  Use mavros_extras-msg:theta instead.")
  (theta m))

(cl:ensure-generic-function 'phi-val :lambda-list '(m))
(cl:defmethod phi-val ((m <Control_Refs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_extras-msg:phi-val is deprecated.  Use mavros_extras-msg:phi instead.")
  (phi m))

(cl:ensure-generic-function 'psi-val :lambda-list '(m))
(cl:defmethod psi-val ((m <Control_Refs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_extras-msg:psi-val is deprecated.  Use mavros_extras-msg:psi instead.")
  (psi m))

(cl:ensure-generic-function 'thrust-val :lambda-list '(m))
(cl:defmethod thrust-val ((m <Control_Refs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_extras-msg:thrust-val is deprecated.  Use mavros_extras-msg:thrust instead.")
  (thrust m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Control_Refs>) ostream)
  "Serializes a message object of type '<Control_Refs>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'phi))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'psi))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'thrust))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Control_Refs>) istream)
  "Deserializes a message object of type '<Control_Refs>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'phi) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'psi) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'thrust) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Control_Refs>)))
  "Returns string type for a message object of type '<Control_Refs>"
  "mavros_extras/Control_Refs")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Control_Refs)))
  "Returns string type for a message object of type 'Control_Refs"
  "mavros_extras/Control_Refs")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Control_Refs>)))
  "Returns md5sum for a message object of type '<Control_Refs>"
  "21f7f291a693523bde2376aa0274264b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Control_Refs)))
  "Returns md5sum for a message object of type 'Control_Refs"
  "21f7f291a693523bde2376aa0274264b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Control_Refs>)))
  "Returns full string definition for message of type '<Control_Refs>"
  (cl:format cl:nil "float32 theta~%float32 phi~%float32 psi~%float32 thrust~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Control_Refs)))
  "Returns full string definition for message of type 'Control_Refs"
  (cl:format cl:nil "float32 theta~%float32 phi~%float32 psi~%float32 thrust~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Control_Refs>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Control_Refs>))
  "Converts a ROS message object to a list"
  (cl:list 'Control_Refs
    (cl:cons ':theta (theta msg))
    (cl:cons ':phi (phi msg))
    (cl:cons ':psi (psi msg))
    (cl:cons ':thrust (thrust msg))
))
