;; Auto-generated. Do not edit!


(when (boundp 'crazy_msgs::status)
  (if (not (find-package "CRAZY_MSGS"))
    (make-package "CRAZY_MSGS"))
  (shadow 'status (find-package "CRAZY_MSGS")))
(unless (find-package "CRAZY_MSGS::STATUS")
  (make-package "CRAZY_MSGS::STATUS"))

(in-package "ROS")
;;//! \htmlinclude status.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass crazy_msgs::status
  :super ros::object
  :slots (_header _status ))

(defmethod crazy_msgs::status
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:status __status) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _status (string __status))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _status
    4 (length _status)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get crazy_msgs::status :md5sum-) "5af2dbd9f0f51a7e50dfafa69867ed29")
(setf (get crazy_msgs::status :datatype-) "crazy_msgs/status")
(setf (get crazy_msgs::status :definition-)
      "Header header
string status

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



(provide :crazy_msgs/status "5af2dbd9f0f51a7e50dfafa69867ed29")


