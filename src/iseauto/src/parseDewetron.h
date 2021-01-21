//
// Created by sejego on 10/18/20.
//

#ifndef CATKIN_WS_PARSEDEWETRON_H
#define CATKIN_WS_PARSEDEWETRON_H

#include <iostream>
#include <unordered_map>
#include <fstream>
#include <sstream>
#include <string>

class parseDewetron
{
public:
    // buffer for only data that is present
    float bufferArray[7];
    float usedFrequency;
    std::string line;
    std::ifstream dewetronFile;
    double startTime;
    double timeStep;

    //vectors of value pairs time:value
    std::unordered_map<float, float> current_1;
    std::unordered_map<float, float> current_2;
    std::unordered_map<float, float> current_3;
    std::unordered_map<float, float> voltage_1;
    std::unordered_map<float, float> voltage_2;
    std::unordered_map<float, float> voltage_3;

    //file parser
    parseDewetron(std::string filename, float frequency);

    //getters

    float getCurrentOne(float key);
    float getCurrentTwo(float key);
    float getCurrentThree(float key);
    float getVoltageOne(float key);
    float getVoltageTwo(float key);
    float getVoltageThree(float key);
    float getStartTime();
    float getTimeStep();
    
    float getFrequency();

    // possible server features?

private:
    void parseDewetronFile();
};

#endif //CATKIN_WS_PARSEDEWETRON_H
