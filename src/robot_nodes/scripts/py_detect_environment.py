#!/usr/bin/env python
#coding=utf-8
import rospy
import math
from robot_nodes.srv import *
# from robot_nodes.srv import action
from kobuki_msgs.msg import BumperEvent
from nav_msgs.msg import Odometry
from std_msgs.msg import Float64
import cv2
from cv_bridge import CvBridge,CvBridgeError
from sensor_msgs.msg import LaserScan
from sensor_msgs.msg import Image
import string
import numpy
import threading

pi=3.1415926

yposition=0.0
bump=0
yaw=0.0
wall=0
NaN = 0
finddoor=False
count=0
take=False
state=False
bump=0

def depthcallback(BumperEvent):
    global state,bump
    # rospy.loginfo("BumperEvent.state= %d",BumperEvent.state)
    # rospy.loginfo("BumperEvent.bumper= %d",BumperEvent.bumper)

    if BumperEvent.state == 1:
        state = True
    if BumperEvent.bumper == 2:
        rospy.loginfo("right bumper")
        bump = 2
    elif BumperEvent.bumper == 0:
        rospy.loginfo("left bumper")
        bump = 0
    else:
        rospy.loginfo("centre bumper")
        bump = 1

# function for odometry
def odomcallback(Odometry):
    global yposition
    global yaw
    yposition = Odometry.pose.pose.position.y
    sin_cosp = 2*(Odometry.pose.pose.orientation.z*Odometry.pose.pose.orientation.w + Odometry.pose.pose.orientation.x*Odometry.pose.pose.orientation.y)
    cos_cosp = 1-2*(Odometry.pose.pose.orientation.z*Odometry.pose.pose.orientation.z + Odometry.pose.pose.orientation.y*Odometry.pose.pose.orientation.y)
    yaw = math.atan2(sin_cosp,cos_cosp)
    # rospy.loginfo('this is in odomcallback,and yaw = %d yposition = ',yaw,yposition)
    
#   function for taking photo
def photoCallback(Image):
    global count
    global take
    convert=str(count)
    name=convert

    bridge=CvBridge()
    if take:
        count = count+1
        rospy.loginfo("taking phot: %d", count)
        try:
            # cv_image = CvBridge.imgmsg_to_cv2(Image, "bgr8")
            cv_image = bridge.imgmsg_to_cv2(Image,"bgr8")
            cv2.imwrite("/home/lzw/turtlebot2/photo/"+name+".jpg",cv_image)
            take=False
        except CvBridgeError as e:
            rospy.logerr("Could not convert" )
            return


#  function for scaner
def scancallback(LaserScan):
    global yposition
    global NaN
    global wall
    global finddoor
    global yaw
    ranges= LaserScan.ranges
    dis = 0
    NaN = 0
    for i in range(len(ranges)):
        if numpy.isnan(ranges[i]):
            NaN = NaN+1
        else:
            if ranges[i] < 0.9:
                dis = dis+1
    if ( len(ranges)== (NaN+dis) and NaN != 640  and (yaw>(-5-yposition*6) and yaw < (5-yposition*6)) or finddoor ):
        wall=1
    else:
        wall=0

def thread_job():
    rospy.spin()

def py_detect_environment():
    # rospy.init_node('pylistener', anonymous=True)
    # #Subscriber函数第一个参数是topic的名称，第二个参数是接受的数据类型 第三个参数是回调函数的名称
    # rospy.Subscriber('gps_info', gps, callback)
    # rospy.spin()
    rospy.init_node("sensor_sub",anonymous=True)
    add_thread1 = threading.Thread(target = thread_job) #另开一个进程，运行spin()
    add_thread1.start()

    rate = rospy.Rate(2)
    rospy.Subscriber("/mobile_base/events/bumper",BumperEvent,depthcallback,queue_size=5)
    rospy.Subscriber('/odom',Odometry,odomcallback,queue_size=1)
    rospy.Subscriber('/scan',LaserScan,scancallback,queue_size=1)
    rospy.Subscriber('/camera/rgb/image_raw',Image,photoCallback,queue_size=1)
    block = False
    bumperside = 0
    global yaw
    global bump
    global state
    global yposition
    global finddoor
    global take
    global NaN
    global pi
    test = rospy.ServiceProxy("actions",action)
    while not rospy.is_shutdown():
        rospy.wait_for_service("actions") #等待/actions服务，直到可用
        # rospy.loginfo("service actions is right !")
        try:
            resp = test.call(block,bumperside,(yaw*180)/pi,yposition,wall,NaN)
            # rospy.loginfo("the args translate to request yaw=%f,  yposition=%f",(yaw*180)/pi,yposition)
            # rospy.loginfo('resp.clean=')
            # rospy.loginfo(resp.clean)
            finddoor = resp.findingdoor
            if resp.clean:
                rospy.loginfo("bumper off")
                state = False
                block = False
            if state == True:
                rospy.loginfo("bumper on")
                block = True
                take = True
            if bump == 2:
                bumperside = 2 #right
            elif bump == 0:
                bumperside = 0 #left bumper
            else:
                bumperside = 1
            # rospy.loginfo('bumperside= %d',bumperside)
            # rate.sleep()

        except rospy.ServiceException, e:
            rospy.logwarn("Service call failed: %s"%e)
        rate.sleep()
    

if __name__ == '__main__':

    py_detect_environment()
    
