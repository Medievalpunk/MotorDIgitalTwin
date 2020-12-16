#include <ros/ros.h>

#include <std_msgs/Float32.h>
#include <iseauto/Current.h>
#include <iseauto/Voltage.h>
#include <iseauto/Power.h>

class Power
{
private:
    float inputCurrent[3];
    float inputVoltage[3];
public:
    float phasePower[3];
    float totalPower;

    void currentCallback(const iseauto::Current::ConstPtr& msg)
    {
        inputCurrent[0] = msg->current1;
        inputCurrent[1] = msg->current2;
        inputCurrent[2] = msg->current3;
    }
    void voltageCallback(const iseauto::Voltage::ConstPtr& msg)
    {
        inputVoltage[0] = msg->voltage1;
        inputVoltage[1] = msg->voltage2;
        inputVoltage[2] = msg->voltage3;
    }
    float calculatePower()
    {
        totalPower = 0;
        for(int i=0;i<3;i++)
        {
            phasePower[i] = inputCurrent[i]*inputVoltage[i];
        }
        totalPower = phasePower[0]+phasePower[1]+phasePower[2];
    }
};

int main(int argc, char *argv[])
{
    Power power;
    ros::NodeHandle handler;
    ros::Publisher totalPowerPublisher = handler.advertise<iseauto::Power>("tb/loading_motor/motor_power", 100);
    ros::Subscriber voltageSubscriber = handler.subscribe<iseauto::Voltage>("tb/loading_motor/input_voltage", 100, &Power::voltageCallback, &power);
    ros::Subscriber currentSubscriber = handler.subscribe<iseauto::Current>("tb/loading_motor/input_current", 100, &Power::currentCallback, &power);
    ros::Rate rate(60);

    iseauto::Power powerMsg;
    powerMsg.phase1 = 0;
    powerMsg.phase2 = 0;
    powerMsg.phase3 = 0;
    powerMsg.total = 0;

    while(ros::ok())
    {
        ros::spinOnce();
        power.calculatePower();
        powerMsg.phase1 = power.phasePower[0];
        powerMsg.phase2 = power.phasePower[1];
        powerMsg.phase3 = power.phasePower[2];
        powerMsg.total = power.totalPower;
        totalPowerPublisher.publish(powerMsg);
        rate.sleep();

    }
    return 0;
}
