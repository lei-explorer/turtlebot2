#include <ros/ros.h>
#include "robot_nodes/action.h"
#define _USE_MATH_DEFINES
#include <cmath>
#include <kobuki_msgs/BumperEvent.h>
#include <nav_msgs/Odometry.h>
#define pi 3.1415926

#include <std_msgs/Float64.h>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <image_transport/image_transport.h>  //py暂不支持，尝试手动发布节点
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>
#include <sensor_msgs/LaserScan.h>
#include <string>
#include <sstream>

//globel values
bool state;
int bump;
float yaw;
float yposition;
int count =0;
bool take = false;
int NaN;
int wall;
bool finddoor;


//function for bumper 
void depthcallback(const kobuki_msgs::BumperEvent &data){
  if(data.state == 1){ // bumper is pressed 保险按下
    state = true;
  }  
  if(data.bumper==2){
     ROS_INFO("right bumper ");
     bump = 2;} // right bumper  
  else if(data.bumper==0 ) {
     ROS_INFO("left bumper ");
     bump= 0;}//left bumper
  else {
     ROS_INFO("centre bumper "); 
     bump = 1;}// centre bumper
}

// function for odometry
void odomcallback(const nav_msgs::Odometry &nav){

  // position on the y axis
  yposition = nav.pose.pose.position.y;

  //calculate the yaw of the robot
  double sin_cosp = 2*(nav.pose.pose.orientation.z*nav.pose.pose.orientation.w + nav.pose.pose.orientation.x*nav.pose.pose.orientation.y);
  double cos_cosp = 1 - 2*(nav.pose.pose.orientation.z*nav.pose.pose.orientation.z+nav.pose.pose.orientation.y*nav.pose.pose.orientation.y);
  
  yaw = std::atan2(sin_cosp,cos_cosp);
}
//function for taking photo
void photoCallback (const sensor_msgs::Image::ConstPtr& msg)
  {	
        std::ostringstream convert;
        convert << count;
        std::string name =convert.str();
        cv_bridge::CvImagePtr cv_ptr;
    //take a photo, if detect a obstacle
    if(take){
      count += 1;
      ROS_INFO("taking phot: %d", count);
      try
      {   //convert array to the jpd 
	      cv_ptr = cv_bridge::toCvCopy(msg,sensor_msgs::image_encodings::BGR8);
        // addressname = "/home/kxu221/photo"+name+".jpg";
  	    cv::imwrite("/home/lzw/turtlebot2/photo/"+name+".jpg",cv_ptr->image); 
	      take = false;
      }
      catch(cv_bridge::Exception& e)
      {
	      ROS_ERROR("Could not convert" );
	      return;
      }
    }
  } 
// function for scaner
void scancallback (const sensor_msgs::LaserScan &msg){
  std::vector<float> ranges = msg.ranges;
  int dis = 0;
  NaN = 0;
  //check if the robot close to the wall
  for (int i=0; i<ranges.size(); i++ ){
    if(isnan(ranges[i])){
      NaN = NaN + 1;
    }
    else{
      if(ranges[i] < 0.9){
        dis = dis +1;
      }
    }
  } 
  if(((ranges.size() == (NaN+dis)) && NaN!= 640 && (yaw>(-5-yposition*6) && yaw<(5-yposition*6))) || finddoor){
    wall = 1 ;
  }else{
    wall = 0;
  }
}
//main function for subsrciber
int main (int argc, char ** argv){
  ros::init(argc,argv,"sensor_sub");

  ros::NodeHandle n;

  ros::Rate loop_rate(1);

  ros::ServiceClient test = n.serviceClient<robot_nodes::action> ("action");

  robot_nodes::action srv;

  //subscribe for bumper
  ros::Subscriber bumper = n.subscribe("/mobile_base/events/bumper",1,depthcallback);
  //subscribe for odometry
  ros::Subscriber odom = n.subscribe("/odom",1,odomcallback);
  //subscribe for scaner
  ros::Subscriber scan = n.subscribe("/scan",1,scancallback);

  //subscribe for camera
  image_transport::ImageTransport it_(n);
  image_transport::Subscriber photo= it_.subscribe("/camera/rgb/image_raw",1,photoCallback);
  
  //while loop for send requset and receive a response 
  while (ros::ok()){
    ros::spinOnce();
    srv.request.yposition = yposition; 
    srv.request.yaw = (yaw*180)/pi;

    finddoor=srv.response.findingdoor;
    srv.request.wall = wall;
    srv.request.nan = NaN;

    if(srv.response.clean){
      ROS_INFO("bumper off");
      state = false;
      srv.request.block = false;
    }
  
    if(state == true){
      ROS_INFO("bumper on");
      srv.request.block = true;
      take =true;
    }

    if(bump == 2) srv.request.bumperside = 2; // right bumper  
    else if(bump == 0 ) srv.request.bumperside = 0;//left bumper
    else srv.request.bumperside = 1; // centre bumper
  
    if (test.call(srv)) {}
    //ros::Duration(0.5).sleep();
    //loop_rate.sleep();
  }
  return 0;

}
