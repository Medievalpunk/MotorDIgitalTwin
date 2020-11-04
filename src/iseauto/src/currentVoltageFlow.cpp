//
// Created by sejego on 10/19/20.
//
// TODO: Params for files and shit
// TODO: Naming of time variables.
// TODO: Handling for ending
//
#include <iostream>
#include <sstream>
#include <string>
#include <fstream>
#include <unordered_map>

#include <ros/ros.h>

#include <std_msgs/Float32.h>
#include <iseauto/Current.h>
#include <iseauto/Voltage.h>

#include "parseDewetron.h"

class InputCurrentVoltage
{
private:
    parseDewetron *dewetron;
    ros::Publisher PublishInputCurrent;
    ros::Publisher PublishInputVoltage;
    int rate = 60; // 1kHz
    double timeFromStartDewetron=0.000100;

public:
    iseauto::Current inputCurrentValues;
    iseauto::Voltage inputVoltageValues;
    InputCurrentVoltage(std::string filename, float frequency)
    {
        ros::NodeHandle handler;
        // initializing publishers/subscribers
        PublishInputCurrent = handler.advertise<iseauto::Current>("iseauto/control/input_current", 10);
        PublishInputVoltage = handler.advertise<iseauto::Voltage>("iseauto/control/input_voltage", 10);
        dewetron = new parseDewetron(filename, frequency); // get from params
    }
    void wrapToMsg(double time)
    {
        //float rosTime_double = (float)rosTime;
        //std::cout << rosTime << "\n";
        // wrap currents into msg
        inputCurrentValues.current1 = dewetron->getCurrentOne(time);
        inputCurrentValues.current2 = dewetron->getCurrentTwo(time);
        inputCurrentValues.current3 = dewetron->getCurrentThree(time);
        inputVoltageValues.voltage1 = dewetron->getVoltageOne(time);
        inputVoltageValues.voltage2 = dewetron->getVoltageTwo(time);
        inputVoltageValues.voltage3 = dewetron->getVoltageThree(time);
    }
    void spin() {

        ros::Rate r(rate);
        //ros::Time = ros::Time::now();
        ros::spinOnce();
        ROS_INFO("Initialized");
        // main control loop
        while (ros::ok())
        {
            spinOnce();
            ros::spinOnce();
            r.sleep();
        }
        ROS_INFO("Quit");
    }

    void spinOnce()
    {
        ros::spinOnce();
        wrapToMsg(timeFromStartDewetron);
        PublishInputCurrent.publish(inputCurrentValues);
        PublishInputVoltage.publish(inputVoltageValues);
        timeFromStartDewetron+=0.001;     //TODO:FIX THIS ASAP. EXTRACT FIRST VALUE AND SECOND AND COMPUTE THE STEP
    }

};
int main(int argc, char **argv)
{
    std::string csv_file;
    float frequency;
   /* parseDewetron dewetron("1k Hz csv.csv", 1000);
    std::cout << dewetron.getCurrentTwo(0.0271) << "\n";
    std::cout << dewetron.getVoltageOne(0.2391) << "\n";
    std::cout << dewetron.getCurrentThree(1.5071) << "\n";*/

    ros::init(argc, argv, "input_current_voltage");
    ROS_INFO("Started iseauto inputCurrentVoltage node");
    ros::param::get("/iseauto_input_current/csv_file", csv_file);
    ros::param::get("/iseauto_input_current/frequency", frequency);
    ROS_INFO("%s", csv_file.c_str());
    ROS_INFO("%lf", frequency);

    try
    {
        InputCurrentVoltage inputValues(csv_file, frequency);
        inputValues.spin();
    }
    catch (const ros::Exception &e)
    {
        ROS_ERROR("Error occured %s", e.what());
        return (1);
    }

    return 0;
}
/*
void test()
{
    parseDewetron dewetron("1k Hz csv.csv", 1000);
    std::cout << dewetron.getCurrentTwo(0.0271) << "\n";
    std::cout << dewetron.getVoltageOne(0.2391) << "\n";
    std::cout << dewetron.getCurrentThree(1.5071) << "\n";
}
*/