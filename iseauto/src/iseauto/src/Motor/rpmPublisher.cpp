#include <ros/ros.h>
#include <std_msgs/Float32.h>

#define _USE_MATH_DEFINES

#include <cmath>
#include <iostream>

float rpm;
float angularVelocity;

void receiveVelocity(std_msgs::Float32ConstPtr msg);
void calculateRotation(float angVel);

int main(int argc, char *argv[])
{  
  ros::init(argc, argv, "Rotation");
  ros::NodeHandle nh("~");

  ros::Subscriber feedbackReceiver = nh.subscribe<std_msgs::Float32>("iseauto/feedback/shaft_angular_velocity", 10, receiveVelocity);
  ros::Publisher rotationPublish = nh.advertise<std_msgs::Float32>("iseauto/feedback/actual_rpm", 10);
  ros::Rate rate(60);
  std_msgs::Float32 rpm_msg;

  while(ros::ok())
  {
      calculateRotation(angularVelocity);
      rpm_msg.data = rpm;
      rotationPublish.publish(rpm_msg);
      ros::spinOnce(); 
      rate.sleep();
  }

  return 0;

}
void receiveVelocity(std_msgs::Float32ConstPtr msg)
{
  angularVelocity = msg->data;
}
void calculateRotation(float angVel)
{
  rpm = angVel*60/(2* M_PI);
}