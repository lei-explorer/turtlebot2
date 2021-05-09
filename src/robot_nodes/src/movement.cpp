#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#include <robot_nodes/action.h>
#include <kobuki_msgs/BumperEvent.h>
#include <cmath>
bool avoid;
int direction = 0;
float rotate;
float disY;//the distance of robot on the y axis
bool needturn = false;
int wall = 0;
bool findingdoor;
int Nan;
int posdoor = 0;
int step = 0;
int front = 0;
int left = 0;
int right = 0;

//function to send response and receive request 
bool movecallback(robot_nodes::action::Request &req,
                  robot_nodes::action::Response &res){
  //request for detect obstacle
  if (req.block == true){
     res.clean = true;
     avoid = true;
     res.takingphoto=true;
  }else{
     res.clean = false;
     res.takingphoto=false;
     avoid = false; 
  }
  
  //request for which side of bumper is pressed
  if(req.bumperside == 2) direction = 1; // turn left, right bumper is pressed
  else if (req.bumperside == 0) direction = 0;//turn right, left bumper is pressed. and if centre bumper is pressed, the direction remain.
  else direction = direction;
  //requesr for yaw and distance on axis
  rotate = req.yaw;//
  disY = req.yposition;  
  wall = req.wall;//requset for scaner , if the wall where the door is detected
  Nan = req.nan;//door value.
  res.findingdoor = findingdoor;//responsd when the robot scan around to find the door
  return true;
}


int main(int argc, char**argv){
 
  ros::init(argc, argv, "moved_pub");

  ros::NodeHandle n;
  
  ros::ServiceServer move_service = n.advertiseService("action", movecallback);
  ros::Publisher move = n.advertise<geometry_msgs::Twist>("/cmd_vel_mux/input/teleop",10);
  ros::Rate loop_rate2(1);
  ROS_INFO("To stop turtlebot press ctrl + c");
  
  geometry_msgs::Twist vel_msg;

  while(ros::ok()){
   ros::spinOnce();

    //if obstacle is dected, move backwards 0.2m
    if (avoid == true ){
        vel_msg.linear.x=-0.2; 
        move.publish(vel_msg);	
	needturn=true;
        ros::Duration(1).sleep();
    }

    else {
	//after move backwarks ,check which bumper is pressed 
       if(needturn){
        //if right bumper is pressed, go left
        //lif left bumper is pressed, go right
        //the centre bumper will inherit last bumper logic, if no pumber is pressed yet, centre pumber is defaulted to go right. 
         if(direction == 1){ 
	   vel_msg.angular.z =2.7;
           vel_msg.linear.x=0;
           move.publish(vel_msg);
           ros::Duration(0.5).sleep();
           vel_msg.angular.z = 0;
           vel_msg.linear.x=0.7;
           move.publish(vel_msg);
	   ros::Duration(0.5).sleep();
	   			 
           needturn = false;
         }
	 else if(direction == 0){  
	   vel_msg.angular.z =-2.7;
           vel_msg.linear.x=0;
           move.publish(vel_msg);
           ros::Duration(0.5).sleep();

           vel_msg.angular.z = 0;
           vel_msg.linear.x=0.7;
           move.publish(vel_msg);	 
	   ros::Duration(0.5).sleep();

	   needturn =false;
         }
       }
       // if the scaner detect robot is close to the wall where is the door, it will stop and start to scan the position of the door.
       else if(wall == 1 && ((rotate>(-5-disY*5) && rotate<(5-disY*5))||(findingdoor))){
          
         if(!findingdoor){
           findingdoor = true;
           vel_msg.angular.z =0;
           vel_msg.linear.x=0;
           move.publish(vel_msg);
           ros::Duration(0.5).sleep();
         }
         
         ROS_INFO("pos = %d",posdoor);
         if (posdoor == 3)
         {
	          vel_msg.angular.z =-2.7;
            vel_msg.linear.x=0;
            move.publish(vel_msg);        
            ros::Duration(0.5).sleep();

            vel_msg.angular.z = 0;
            vel_msg.linear.x=0.7;
            move.publish(vel_msg);
            ros::Duration(0.5).sleep();

            posdoor =0;
            step = 0;
            front = 0;
            left = 0;
            right = 0; 
	          ros::Duration(0.5).sleep();
         }
         else if(posdoor == 1){
	   vel_msg.angular.z =2.7;
           vel_msg.linear.x=0;
           move.publish(vel_msg);        
           ros::Duration(0.5).sleep();

           vel_msg.angular.z = 0;
           vel_msg.linear.x=0.7;
           move.publish(vel_msg);
	   ros::Duration(0.5).sleep();

           posdoor =0;
           step = 0;
           front = 0;
           left = 0;
           right = 0; 
	   ros::Duration(0.5).sleep();
         }else if(posdoor == 2){

           vel_msg.angular.z = 0;
           vel_msg.linear.x=1.8;
           move.publish(vel_msg);
	   ros::Duration(0.5).sleep();

           posdoor =0;
           step = 0;
           front = 0;
           left = 0;
           right = 0; 
	   ros::Duration(0.5).sleep();
        }
       }
       // keep robot go straight
       else if(rotate>(-5-disY*6) && rotate<(5-disY*6)){
         vel_msg.linear.x=0.35;
         vel_msg.angular.z = 0.0;	
         move.publish(vel_msg);
         
       }
       //adjust the robot direction
       else{
         ROS_INFO("rotate=%d----- disY =%d",rotate,disY) ;
         if((rotate< -disY*6 && rotate > -90)||( rotate < 0 &&rotate <-90)){
           vel_msg.linear.x=0.0;
           vel_msg.angular.z = ((-disY*6 )-rotate)*0.007+0.05;
           move.publish(vel_msg);         
         } 
         else if((rotate > -disY*6 && rotate<90)||(rotate > 0 &&rotate > 90)){
           vel_msg.linear.x=0.0;
           vel_msg.angular.z =((-disY*6)-rotate)*0.007-0.05; 
           move.publish(vel_msg);
         }    
         ros::Duration(0.5).sleep();
       }
     }
     // scan the position of the door
     if(findingdoor){
        ROS_INFO("nan = %d, front = %d,left= %d , right = %d",Nan,front,left,right);
        //scan right hand side
        if(rotate > -45 && step == 0){
           vel_msg.angular.z = -0.5;
           vel_msg.linear.x=0;
           move.publish(vel_msg);
           //ros::Duration(0.5).sleep();
           if(front < Nan && (rotate >-7 && rotate <10)){
             front = Nan;
           }else if (right < Nan && (rotate< -7 && rotate > -45)){
             right = Nan;
           } else if (left < Nan && (rotate >7 && rotate < 45)){
             left = Nan;
           }
        } else if(rotate < -45 && step == 0){
           step++;
        }
        //scan left hand side
        if(rotate < 45 && step == 1){
           vel_msg.angular.z = 0.5;
           vel_msg.linear.x=0;
           move.publish(vel_msg);
           if(front < Nan && (rotate >-7 && rotate <7)){
             front = Nan;
           }else if (right < Nan && (Nan <= 635) && (rotate< -7 && rotate > -45)){
             right = Nan;
           } else if (left < Nan && (Nan <= 635) && (rotate >7 && rotate < 45)){
             left = Nan;
           }
        } else if(rotate > 45 && step == 1){
           step++;
        }
        // find the door on which side of robot
        if (step == 2 && posdoor == 0){
           if(left > front && left > right){
             posdoor = 1;
           }else if (right > front && right > left){
             posdoor = 3;
           } else if (front > right && front > left){
             posdoor = 2;
           }
           findingdoor = false;
        }
        ros::Duration(0.5).sleep();
      }    
	
  }
  return 0;

}
