;; Auto-generated. Do not edit!


(when (boundp 'robot_nodes::action)
  (if (not (find-package "ROBOT_NODES"))
    (make-package "ROBOT_NODES"))
  (shadow 'action (find-package "ROBOT_NODES")))
(unless (find-package "ROBOT_NODES::ACTION")
  (make-package "ROBOT_NODES::ACTION"))
(unless (find-package "ROBOT_NODES::ACTIONREQUEST")
  (make-package "ROBOT_NODES::ACTIONREQUEST"))
(unless (find-package "ROBOT_NODES::ACTIONRESPONSE")
  (make-package "ROBOT_NODES::ACTIONRESPONSE"))

(in-package "ROS")





(defclass robot_nodes::actionRequest
  :super ros::object
  :slots (_block _bumperside _yaw _yposition _wall _nan ))

(defmethod robot_nodes::actionRequest
  (:init
   (&key
    ((:block __block) nil)
    ((:bumperside __bumperside) 0)
    ((:yaw __yaw) 0.0)
    ((:yposition __yposition) 0.0)
    ((:wall __wall) 0)
    ((:nan __nan) 0)
    )
   (send-super :init)
   (setq _block __block)
   (setq _bumperside (round __bumperside))
   (setq _yaw (float __yaw))
   (setq _yposition (float __yposition))
   (setq _wall (round __wall))
   (setq _nan (round __nan))
   self)
  (:block
   (&optional __block)
   (if __block (setq _block __block)) _block)
  (:bumperside
   (&optional __bumperside)
   (if __bumperside (setq _bumperside __bumperside)) _bumperside)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:yposition
   (&optional __yposition)
   (if __yposition (setq _yposition __yposition)) _yposition)
  (:wall
   (&optional __wall)
   (if __wall (setq _wall __wall)) _wall)
  (:nan
   (&optional __nan)
   (if __nan (setq _nan __nan)) _nan)
  (:serialization-length
   ()
   (+
    ;; bool _block
    1
    ;; uint32 _bumperside
    4
    ;; float32 _yaw
    4
    ;; float32 _yposition
    4
    ;; int32 _wall
    4
    ;; int32 _nan
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _block
       (if _block (write-byte -1 s) (write-byte 0 s))
     ;; uint32 _bumperside
       (write-long _bumperside s)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yposition
       (sys::poke _yposition (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _wall
       (write-long _wall s)
     ;; int32 _nan
       (write-long _nan s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _block
     (setq _block (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint32 _bumperside
     (setq _bumperside (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yposition
     (setq _yposition (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _wall
     (setq _wall (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _nan
     (setq _nan (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass robot_nodes::actionResponse
  :super ros::object
  :slots (_takingphoto _clean _findingdoor _info ))

(defmethod robot_nodes::actionResponse
  (:init
   (&key
    ((:takingphoto __takingphoto) nil)
    ((:clean __clean) nil)
    ((:findingdoor __findingdoor) nil)
    ((:info __info) "")
    )
   (send-super :init)
   (setq _takingphoto __takingphoto)
   (setq _clean __clean)
   (setq _findingdoor __findingdoor)
   (setq _info (string __info))
   self)
  (:takingphoto
   (&optional __takingphoto)
   (if __takingphoto (setq _takingphoto __takingphoto)) _takingphoto)
  (:clean
   (&optional __clean)
   (if __clean (setq _clean __clean)) _clean)
  (:findingdoor
   (&optional __findingdoor)
   (if __findingdoor (setq _findingdoor __findingdoor)) _findingdoor)
  (:info
   (&optional __info)
   (if __info (setq _info __info)) _info)
  (:serialization-length
   ()
   (+
    ;; bool _takingphoto
    1
    ;; bool _clean
    1
    ;; bool _findingdoor
    1
    ;; string _info
    4 (length _info)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _takingphoto
       (if _takingphoto (write-byte -1 s) (write-byte 0 s))
     ;; bool _clean
       (if _clean (write-byte -1 s) (write-byte 0 s))
     ;; bool _findingdoor
       (if _findingdoor (write-byte -1 s) (write-byte 0 s))
     ;; string _info
       (write-long (length _info) s) (princ _info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _takingphoto
     (setq _takingphoto (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _clean
     (setq _clean (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _findingdoor
     (setq _findingdoor (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robot_nodes::action
  :super ros::object
  :slots ())

(setf (get robot_nodes::action :md5sum-) "2c9f29db40e0d32cd3790aa92a5e2750")
(setf (get robot_nodes::action :datatype-) "robot_nodes/action")
(setf (get robot_nodes::action :request) robot_nodes::actionRequest)
(setf (get robot_nodes::action :response) robot_nodes::actionResponse)

(defmethod robot_nodes::actionRequest
  (:response () (instance robot_nodes::actionResponse :init)))

(setf (get robot_nodes::actionRequest :md5sum-) "2c9f29db40e0d32cd3790aa92a5e2750")
(setf (get robot_nodes::actionRequest :datatype-) "robot_nodes/actionRequest")
(setf (get robot_nodes::actionRequest :definition-)
      "bool block
uint32 bumperside
float32 yaw
float32 yposition
int32 wall
int32 nan
---
bool takingphoto
bool clean
bool findingdoor
string info

")

(setf (get robot_nodes::actionResponse :md5sum-) "2c9f29db40e0d32cd3790aa92a5e2750")
(setf (get robot_nodes::actionResponse :datatype-) "robot_nodes/actionResponse")
(setf (get robot_nodes::actionResponse :definition-)
      "bool block
uint32 bumperside
float32 yaw
float32 yposition
int32 wall
int32 nan
---
bool takingphoto
bool clean
bool findingdoor
string info

")



(provide :robot_nodes/action "2c9f29db40e0d32cd3790aa92a5e2750")


