; Auto-generated. Do not edit!


(cl:in-package crazy_msgs-msg)


;//! \htmlinclude nodeReady.msg.html

(cl:defclass <nodeReady> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass nodeReady (<nodeReady>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <nodeReady>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'nodeReady)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name crazy_msgs-msg:<nodeReady> is deprecated: use crazy_msgs-msg:nodeReady instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <nodeReady>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader crazy_msgs-msg:header-val is deprecated.  Use crazy_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <nodeReady>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader crazy_msgs-msg:status-val is deprecated.  Use crazy_msgs-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <nodeReady>) ostream)
  "Serializes a message object of type '<nodeReady>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <nodeReady>) istream)
  "Deserializes a message object of type '<nodeReady>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<nodeReady>)))
  "Returns string type for a message object of type '<nodeReady>"
  "crazy_msgs/nodeReady")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'nodeReady)))
  "Returns string type for a message object of type 'nodeReady"
  "crazy_msgs/nodeReady")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<nodeReady>)))
  "Returns md5sum for a message object of type '<nodeReady>"
  "29e7de2a1b8476cc222dc6a214a9a968")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'nodeReady)))
  "Returns md5sum for a message object of type 'nodeReady"
  "29e7de2a1b8476cc222dc6a214a9a968")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<nodeReady>)))
  "Returns full string definition for message of type '<nodeReady>"
  (cl:format cl:nil "Header header~%bool status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'nodeReady)))
  "Returns full string definition for message of type 'nodeReady"
  (cl:format cl:nil "Header header~%bool status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <nodeReady>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <nodeReady>))
  "Converts a ROS message object to a list"
  (cl:list 'nodeReady
    (cl:cons ':header (header msg))
    (cl:cons ':status (status msg))
))
