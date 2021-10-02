;; Auto-generated. Do not edit!


(when (boundp 'crazy_msgs::nodeReady)
  (if (not (find-package "CRAZY_MSGS"))
    (make-package "CRAZY_MSGS"))
  (shadow 'nodeReady (find-package "CRAZY_MSGS")))
(unless (find-package "CRAZY_MSGS::NODEREADY")
  (make-package "CRAZY_MSGS::NODEREADY"))

(in-package "ROS")
;;//! \htmlinclude nodeReady.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass crazy_msgs::nodeReady
  :super ros::object
  :slots (_header _status ))

(defmethod crazy_msgs::nodeReady
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:status __status) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _status __status)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:status
   (&optional (__status :null))
   (if (not (eq __status :null)) (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _status
       (if _status (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _status
     (setq _status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get crazy_msgs::nodeReady :md5sum-) "29e7de2a1b8476cc222dc6a214a9a968")
(setf (get crazy_msgs::nodeReady :datatype-) "crazy_msgs/nodeReady")
(setf (get crazy_msgs::nodeReady :definition-)
      "Header header
bool status

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :crazy_msgs/nodeReady "29e7de2a1b8476cc222dc6a214a9a968")


