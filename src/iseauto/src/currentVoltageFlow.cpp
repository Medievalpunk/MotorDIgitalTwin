//
// Created by sejego on 10/19/20.
// TODO: MAKE IT WORK
//
#include <iostream>
#include <sstream>
#include <string>
#include <fstream>
#include <vector>
#include "parseDewetron.h"

int main(int argc, char **argv)
{
    float current1=0;

    ros::init(argc, argv, "input_current_voltage");
    ROS_INFO("Started iseauto inputCurrentVoltage node");
    ros::NodeHandle handler;
    // initializing publishers/subscribers
    ros::Publisher inputCurrentFlow = handler.advertise<std_msgs::Float32>("iseauto/control/input_current", 10);
    ros::Publisher inputVoltageFlow = handler.advertise<std_msgs::Float32>("iseauto/control/input_voltage", 10);

    try
    {
        parseDewetron dewetron("1k Hz csv.csv", 1000);      //add from params/ from input frequency
        current1 = dewetron.getCurrentOne();

    }
    catch (const ros::Exception &e)
    {
        ROS_ERROR("Error occured %s", e.what());
        return (1);
    }

    return 0;
}
