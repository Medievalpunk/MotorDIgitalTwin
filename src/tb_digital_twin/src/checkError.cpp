//
// Created by sejego on 22.12.20.
//

#include <ros/ros.h>
#include <iostream>
#include <thread>
#include <numeric>
#include <cmath>
#include <tb_digital_twin/Current.h>


class WindingErrorChecker
{
public:
    /*
    float currents[3][500];
    float currentsBuff[3][500];
    //float pCurrentsBuff = &currentsBuff;
     */
    //std::vector<float> column();
    std::vector<std::vector<float>> currents;
    std::vector<std::vector<float>> currentsBuff;
    bool canCalculate = false;
    bool* const pCanCalculate = &canCalculate;
    float rmsCurrents[3] = {0.0};
    float mean[3], square[3];
    int i = 0;
    WindingErrorChecker()
    {
        std::cout << "Init happened\n";
        currents.resize(3);
        canCalculate = false;
    }
    ~WindingErrorChecker()
    {
        currents.clear();
        currentsBuff.clear();
    }

    void currentCallback(const tb_digital_twin::Current::ConstPtr& msg)
    {
        if(i>=300)
        {
            //std::cout << "Listened\n";
            i = 0;
            currentsBuff = currents;
            canCalculate = true;
            currents.clear();
            currents.resize(3);
        }

        currents.at(0).push_back(msg->current1);
        //std::cout<< currents[0][i] << "\n\n";
        currents.at(1).push_back(msg->current2);
        currents.at(2).push_back(msg->current3);

        i++;
    }

    void phaseChecker(bool *pNotTerminated)
    {
        std::cout << *pCanCalculate << "\n";
        while(true)
        {
            if(*pNotTerminated == false)
                break;

            if(*pCanCalculate == true)
            {
                printf("Start Calculate\n");
                for(int j = 0; j<300;j++)
                {
                    square[0] += currentsBuff[0][j]*currentsBuff[0][j];
                    square[1] += currentsBuff[1][j]*currentsBuff[1][j];
                    square[2] += currentsBuff[2][j]*currentsBuff[2][j];
                }
                for(int j = 0; j<3;j++)
                {
                    mean[j] = (square[j] / 300);
                }
                for(int j = 0; j<3; j++)
                {
                    rmsCurrents[j] = std::sqrt(mean[j]);
                }
                std::cout << "First is: " << rmsCurrents[0] << " - Second is: "<< rmsCurrents[1] << " - Third is: " << rmsCurrents[2] << "\n";

                /* CLEANUP */
                currentsBuff.clear();
                for(int j =0; j < 3;j++)
                {
                    square[j] = 0;
                }
                *pCanCalculate = false;
            }
        }
    }
};

int main(int argc, char *argv[])
{
    bool notTerminated = true;
    bool *pNotTerminated = &notTerminated;
    WindingErrorChecker wec;
    ros::init(argc, argv, "tb_loading_motor_status");
    ros::NodeHandle nh;
    //tb_digital_twin::Current deviation;
    std::thread tPhaseChecker(&WindingErrorChecker::phaseChecker, &wec, pNotTerminated);
    ros::Subscriber currentsListener = nh.subscribe<tb_digital_twin::Current>("tb/loading_motor/input_current", 200, &WindingErrorChecker::currentCallback, &wec);
    //ros::Rate rate(60);

    ros::spin();
    if(ros::ok() == false)
    {
        notTerminated = false;
        tPhaseChecker.join();
        return 0;
    }


    /*
    while(ros::ok())
    {
        for(int i = 1; i < 100; i++)
        {
            ros::spinOnce();
            p2 = p2+(0.01*i);
            p3 = p3+(0.03*i);
            deviation.current1 = p1;
            deviation.current2 = p2;
            deviation.current3 = p3;
            kPublisher.publish(deviation);
            rate.sleep();
            if(i%10)
            {
                ROS_WARN("Potential malfunction in windings");
            }
            if(i == 99) {
                exit(1);
            }
        }
    }
     */

    return 0;
}

