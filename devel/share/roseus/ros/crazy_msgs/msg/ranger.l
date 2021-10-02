;; Auto-generated. Do not edit!


(when (boundp 'crazy_msgs::ranger)
  (if (not (find-package "CRAZY_MSGS"))
    (make-package "CRAZY_MSGS"))
  (shadow 'ranger (find-package "CRAZY_MSGS")))
(unless (find-package "CRAZY_MSGS::RANGER")
  (make-package "CRAZY_MSGS::RANGER"))

(in-package "ROS")
;;//! \htmlinclude ranger.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass crazy_msgs::ranger
  :super ros::object
  :slots (_header _front _back _up _down _left _right ))

(defmethod crazy_msgs::ranger
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:front __front) 0.0)
    ((:back __back) 0.0)
    ((:up __up) 0.0)
    ((:down __down) 0.0)
    ((:left __left) 0.0)
    ((:right __right) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _front (float __front))
   (setq _back (float __back))
   (setq _up (float __up))
   (setq _down (float __down))
   (setq _left (float __left))
   (setq _right (float __right))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:front
   (&optional __front)
   (if __front (setq _front __front)) _front)
  (:back
   (&optional __back)
   (if __back (setq _back __back)) _back)
  (:up
   (&optional __up)
   (if __up (setq _up __up)) _up)
  (:down
   (&optional __down)
   (if __down (setq _down __down)) _down)
  (:left
   (&optional __left)
   (if __left (setq _left __left)) _left)
  (:right
   (&optional __right)
   (if __right (setq _right __right)) _right)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _front
    8
    ;; float64 _back
    8
    ;; float64 _up
    8
    ;; float64 _down
    8
    ;; float64 _left
    8
    ;; float64 _right
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _front
       (sys::poke _front (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _back
       (sys::poke _back (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _up
       (sys::poke _up (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _down
       (sys::poke _down (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _left
       (sys::poke _left (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _right
       (sys::poke _right (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _front
     (setq _front (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _back
     (setq _back (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _up
     (setq _up (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _down
     (setq _down (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _left
     (setq _left (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _right
     (setq _right (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get crazy_msgs::ranger :md5sum-) "1e02e898d8f610054d3edc7f76bbb8f8")
(setf (get crazy_msgs::ranger :datatype-) "crazy_msgs/ranger")
(setf (get crazy_msgs::ranger :definition-)
      "Header header
float64 front
float64 back
float64 up
float64 down
float64 left
float64 right

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



(provide :crazy_msgs/ranger "1e02e898d8f610054d3edc7f76bbb8f8")


