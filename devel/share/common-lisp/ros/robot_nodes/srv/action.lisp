; Auto-generated. Do not edit!


(cl:in-package robot_nodes-srv)


;//! \htmlinclude action-request.msg.html

(cl:defclass <action-request> (roslisp-msg-protocol:ros-message)
  ((block
    :reader block
    :initarg :block
    :type cl:boolean
    :initform cl:nil)
   (bumperside
    :reader bumperside
    :initarg :bumperside
    :type cl:integer
    :initform 0)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0)
   (yposition
    :reader yposition
    :initarg :yposition
    :type cl:float
    :initform 0.0)
   (wall
    :reader wall
    :initarg :wall
    :type cl:integer
    :initform 0)
   (nan
    :reader nan
    :initarg :nan
    :type cl:integer
    :initform 0))
)

(cl:defclass action-request (<action-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <action-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'action-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_nodes-srv:<action-request> is deprecated: use robot_nodes-srv:action-request instead.")))

(cl:ensure-generic-function 'block-val :lambda-list '(m))
(cl:defmethod block-val ((m <action-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_nodes-srv:block-val is deprecated.  Use robot_nodes-srv:block instead.")
  (block m))

(cl:ensure-generic-function 'bumperside-val :lambda-list '(m))
(cl:defmethod bumperside-val ((m <action-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_nodes-srv:bumperside-val is deprecated.  Use robot_nodes-srv:bumperside instead.")
  (bumperside m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <action-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_nodes-srv:yaw-val is deprecated.  Use robot_nodes-srv:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'yposition-val :lambda-list '(m))
(cl:defmethod yposition-val ((m <action-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_nodes-srv:yposition-val is deprecated.  Use robot_nodes-srv:yposition instead.")
  (yposition m))

(cl:ensure-generic-function 'wall-val :lambda-list '(m))
(cl:defmethod wall-val ((m <action-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_nodes-srv:wall-val is deprecated.  Use robot_nodes-srv:wall instead.")
  (wall m))

(cl:ensure-generic-function 'nan-val :lambda-list '(m))
(cl:defmethod nan-val ((m <action-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_nodes-srv:nan-val is deprecated.  Use robot_nodes-srv:nan instead.")
  (nan m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <action-request>) ostream)
  "Serializes a message object of type '<action-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'block) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bumperside)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'bumperside)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'bumperside)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'bumperside)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yposition))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'wall)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'nan)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <action-request>) istream)
  "Deserializes a message object of type '<action-request>"
    (cl:setf (cl:slot-value msg 'block) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bumperside)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'bumperside)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'bumperside)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'bumperside)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yposition) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'wall) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'nan) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<action-request>)))
  "Returns string type for a service object of type '<action-request>"
  "robot_nodes/actionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'action-request)))
  "Returns string type for a service object of type 'action-request"
  "robot_nodes/actionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<action-request>)))
  "Returns md5sum for a message object of type '<action-request>"
  "2c9f29db40e0d32cd3790aa92a5e2750")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'action-request)))
  "Returns md5sum for a message object of type 'action-request"
  "2c9f29db40e0d32cd3790aa92a5e2750")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<action-request>)))
  "Returns full string definition for message of type '<action-request>"
  (cl:format cl:nil "bool block~%uint32 bumperside~%float32 yaw~%float32 yposition~%int32 wall~%int32 nan~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'action-request)))
  "Returns full string definition for message of type 'action-request"
  (cl:format cl:nil "bool block~%uint32 bumperside~%float32 yaw~%float32 yposition~%int32 wall~%int32 nan~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <action-request>))
  (cl:+ 0
     1
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <action-request>))
  "Converts a ROS message object to a list"
  (cl:list 'action-request
    (cl:cons ':block (block msg))
    (cl:cons ':bumperside (bumperside msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':yposition (yposition msg))
    (cl:cons ':wall (wall msg))
    (cl:cons ':nan (nan msg))
))
;//! \htmlinclude action-response.msg.html

(cl:defclass <action-response> (roslisp-msg-protocol:ros-message)
  ((takingphoto
    :reader takingphoto
    :initarg :takingphoto
    :type cl:boolean
    :initform cl:nil)
   (clean
    :reader clean
    :initarg :clean
    :type cl:boolean
    :initform cl:nil)
   (findingdoor
    :reader findingdoor
    :initarg :findingdoor
    :type cl:boolean
    :initform cl:nil)
   (info
    :reader info
    :initarg :info
    :type cl:string
    :initform ""))
)

(cl:defclass action-response (<action-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <action-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'action-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_nodes-srv:<action-response> is deprecated: use robot_nodes-srv:action-response instead.")))

(cl:ensure-generic-function 'takingphoto-val :lambda-list '(m))
(cl:defmethod takingphoto-val ((m <action-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_nodes-srv:takingphoto-val is deprecated.  Use robot_nodes-srv:takingphoto instead.")
  (takingphoto m))

(cl:ensure-generic-function 'clean-val :lambda-list '(m))
(cl:defmethod clean-val ((m <action-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_nodes-srv:clean-val is deprecated.  Use robot_nodes-srv:clean instead.")
  (clean m))

(cl:ensure-generic-function 'findingdoor-val :lambda-list '(m))
(cl:defmethod findingdoor-val ((m <action-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_nodes-srv:findingdoor-val is deprecated.  Use robot_nodes-srv:findingdoor instead.")
  (findingdoor m))

(cl:ensure-generic-function 'info-val :lambda-list '(m))
(cl:defmethod info-val ((m <action-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_nodes-srv:info-val is deprecated.  Use robot_nodes-srv:info instead.")
  (info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <action-response>) ostream)
  "Serializes a message object of type '<action-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'takingphoto) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'clean) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'findingdoor) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <action-response>) istream)
  "Deserializes a message object of type '<action-response>"
    (cl:setf (cl:slot-value msg 'takingphoto) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'clean) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'findingdoor) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'info) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'info) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<action-response>)))
  "Returns string type for a service object of type '<action-response>"
  "robot_nodes/actionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'action-response)))
  "Returns string type for a service object of type 'action-response"
  "robot_nodes/actionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<action-response>)))
  "Returns md5sum for a message object of type '<action-response>"
  "2c9f29db40e0d32cd3790aa92a5e2750")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'action-response)))
  "Returns md5sum for a message object of type 'action-response"
  "2c9f29db40e0d32cd3790aa92a5e2750")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<action-response>)))
  "Returns full string definition for message of type '<action-response>"
  (cl:format cl:nil "bool takingphoto~%bool clean~%bool findingdoor~%string info~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'action-response)))
  "Returns full string definition for message of type 'action-response"
  (cl:format cl:nil "bool takingphoto~%bool clean~%bool findingdoor~%string info~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <action-response>))
  (cl:+ 0
     1
     1
     1
     4 (cl:length (cl:slot-value msg 'info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <action-response>))
  "Converts a ROS message object to a list"
  (cl:list 'action-response
    (cl:cons ':takingphoto (takingphoto msg))
    (cl:cons ':clean (clean msg))
    (cl:cons ':findingdoor (findingdoor msg))
    (cl:cons ':info (info msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'action)))
  'action-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'action)))
  'action-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'action)))
  "Returns string type for a service object of type '<action>"
  "robot_nodes/action")