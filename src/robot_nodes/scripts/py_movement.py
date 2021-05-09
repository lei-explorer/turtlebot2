#!/usr/bin/env python
#coding=utf-8
import rospy
import math
from geometry_msgs.msg import Twist
from robot_nodes.srv import *
# from robot_nodes.srv import action,actionResponse
from kobuki_msgs.msg import BumperEvent
import numpy
import threading

Nan=0
avoid = False
direction=0
needturn = False
wall=0
posdoor=0
step=0
front=0
left=0
right=0
rotate=0.0
disY=0.0
findingdoor = False

def movecallback(req):
    global avoid
    global direction
    global rotate
    global disY
    global wall
    global findingdoor
    global Nan

    if req.block == True:
        clean = True
        avoid=True
        takingphoto = True
    else:
        # rospy.loginfo('this is in movecallback, and the avoid=Flase')
        clean=False
        takingphoto=False
        avoid = False

    if req.bumperside == 2:
        direction =1
    elif req.bumperside == 0:
        direction = 0
    else:
        direction = direction

    rotate = req.yaw
    disY = req.yposition
    wall = req.wall
    Nan= req.nan
    # rospy.loginfo('this is in movecallback(req),the rotate=yaw=%f,  the disY=yposition=%f ',rotate,disY)
    # findingdoor = findingdoor
    return [takingphoto,clean,findingdoor,'success']

def thread_job():
    rospy.spin()

def py_movement():
    global avoid
    global direction
    global rotate
    global disY
    global needturn
    global wall
    global findingdoor
    global Nan,posdoor,step,front,left,right
    rospy.init_node("moved_pub",anonymous=True)

    add_thread = threading.Thread(target = thread_job) #另开一个进程，运行spin()
    add_thread.start()

    rate = rospy.Rate(2)
    s = rospy.Service("actions", action, movecallback)
    move_pub = rospy.Publisher('/cmd_vel_mux/input/teleop', Twist , queue_size=10)
    rospy.loginfo("To stop turtlebot press ctrl + c")
    vel_msg = Twist()
    while not rospy.is_shutdown():
        if avoid == True:
            vel_msg.linear.x=-0.2
            move_pub.publish(vel_msg)
            needturn = True
            rospy.sleep(rospy.Duration(1))
            # rospy.loginfo('this is in avoid = True')
        else:
            if needturn:
                # rospy.loginfo('this is in needturn is True')
                if direction == 1: #右边检测有障碍，左转，前进0.5s
                    vel_msg.angular.z=1.5 #原来是2.7
                    vel_msg.linear.x=0
                    move_pub.publish(vel_msg)
                    rospy.sleep(rospy.Duration(0.5))
                    vel_msg.angular.z=0
                    vel_msg.linear.x=0.7
                    move_pub.publish(vel_msg)
                    rospy.sleep(rospy.Duration(0.5))
                    needturn=False
                elif direction == 0:  #左边检测有障碍，右转，前进0.5s
                    vel_msg.angular.z=-1.5 #原来是-2.7,这里调小一点
                    vel_msg.linear.x=0
                    move_pub.publish(vel_msg)
                    rospy.sleep(rospy.Duration(0.5))

                    vel_msg.angular.z=0
                    vel_msg.linear.x=0.7
                    move_pub.publish(vel_msg)
                    rospy.sleep(rospy.Duration(0.5))
                    needturn=False
            # elif ( (wall == 1) and ( ( rotate>(-5-disY*5) and rotate<(5-disY*5) ) or findingdoor ) ):
            elif ( (wall == 1) and ( ( rotate>(-5+disY*5) and rotate<(5-disY*5) ) or findingdoor ) ):
                # rospy.loginfo('this is in 2 elif,pos = %d',posdoor)
                if not findingdoor:
                    findingdoor=True
                    vel_msg.angular.z=0
                    vel_msg.linear.x=0
                    move_pub.publish(vel_msg)
                    rospy.sleep(rospy.Duration(0.5))
                # rospy.loginfo("pos = %d",posdoor)
                if posdoor == 3:
                    vel_msg.angular.z=-2.7
                    vel_msg.linear.x=0
                    move_pub.publish(vel_msg)
                    rospy.sleep(rospy.Duration(0.5))

                    vel_msg.angular.z=0
                    vel_msg.linear.x=0.7
                    move_pub.publish(vel_msg)
                    rospy.sleep(rospy.Duration(0.5))

                    posdoor=0
                    step=0
                    front=0
                    left=0
                    right=0
                    rospy.sleep(rospy.Duration(0.5))
                elif posdoor == 1:
                    vel_msg.angular.z=2.7
                    vel_msg.linear.x=0
                    move_pub.publish(vel_msg)
                    rospy.sleep(rospy.Duration(0.5))

                    vel_msg.angular.z=0
                    vel_msg.linear.x=0.7
                    move_pub.publish(vel_msg)
                    rospy.sleep(rospy.Duration(0.5))

                    posdoor=0
                    step=0
                    front=0
                    left=0
                    right=0
                    rospy.sleep(rospy.Duration(0.5))
                elif posdoor ==2:
                    vel_msg.angular.z=0
                    vel_msg.linear.x=1.8
                    move_pub.publish(vel_msg)
                    rospy.sleep(rospy.Duration(0.5))

                    posdoor=0
                    step=0
                    front=0
                    left=0
                    right=0
                    rospy.sleep(rospy.Duration(0.5))
            # keep robot go straight
            elif (rotate>(-5-disY*6) and rotate<(5-disY*6)):
                # rospy.loginfo('this is in 3 elif')
                vel_msg.linear.x=0.35
                vel_msg.angular.z = 0.0
                move_pub.publish(vel_msg)
                rospy.sleep(rospy.Duration(0.5))
            # adjust the robot direction
            else:
                # rospy.loginfo('this is in 4 else ,and rotate=%f----- disY =%f',rotate,disY)
                if ((rotate< -disY*6 and rotate > -90) or ( rotate < 0 and rotate >-90)):
                # if ((rotate <disY*6) and disY<0) or disY<-1:
                    vel_msg.linear.x=0.0
                    vel_msg.angular.z = ((-disY*6 )-rotate)*0.007+0.05
                    move_pub.publish(vel_msg)
                    # rospy.loginfo('this is in 4 else ------if')
                elif ((rotate > -disY*6 and rotate<90) or (rotate > 0 and rotate < 90)):
                # elif ((rotate > disY*6) and disY>0) or disY>1:
                    vel_msg.linear.x=0.0
                    vel_msg.angular.z =((-disY*6)-rotate)*0.007-0.05
                    move_pub.publish(vel_msg)
                    # rospy.loginfo('this is in 4 else ------- elif')
                #这里是防止出现小车在某个位置一直来回摆荡
                else:
                    vel_msg.linear.x=0.015
                    if rotate<0:
                        vel_msg.angular.z=0.05
                    if rotate>0:
                        vel_msg.angular.z=-0.05
                    move_pub.publish(vel_msg)
                rospy.sleep(rospy.Duration(0.5))

        if findingdoor:
            rospy.loginfo("nan = %d, front = %d,left= %d , right = %d",Nan,front,left,right)
            # scan right hand side
            if (rotate > -45 and step == 0):
                vel_msg.angular.z = -0.5
                vel_msg.linear.x=0
                move_pub.publish(vel_msg)
                rospy.sleep(rospy.Duration(0.5))
                if (front < Nan and (rotate >-7 and rotate <10)):
                    front = Nan
                elif (right < Nan and (rotate< -7 and rotate > -45)):
                    right=Nan
                elif (left < Nan and (rotate >7 and rotate < 45)):
                    left = Nan
            elif (rotate < -45 and step == 0):
                step=step+1
            # scan left hand side
            if (rotate < 45 and step ==1):
                vel_msg.angular.z = 0.5
                vel_msg.linear.x=0
                move_pub.publish(vel_msg)
                rospy.sleep(rospy.Duration(0.5))
                if (front < Nan and (rotate >-7 and rotate <7)):
                    front = Nan
                elif (right < Nan and (Nan <= 635) and (rotate< -7 and rotate > -45)):
                    right = Nan
                elif (left < Nan and (Nan <= 635) and (rotate >7 and rotate < 45)):
                    left=Nan
            elif (rotate > 45 and step == 1):
                step=step+1
            # find the door on which side of robot
            if (step == 2 or posdoor == 0):
                # rospy.loginfo('come in if (step == 2 or posdoor == 0)')
                if(left > front and left > right):
                    posdoor = 1
                elif (right > front and right > left):
                    posdoor = 3
                elif (front > right and front > left):
                    posdoor = 2
                findingdoor = False
            # rospy.sleep(rospy.Duration(0.5))
        rate.sleep()
    

if __name__ == '__main__':
    py_movement()
    
