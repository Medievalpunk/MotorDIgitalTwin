//
// Created by sejego on 10/18/20.
//

#ifndef CATKIN_WS_PARSEDEWETRON_H
#define CATKIN_WS_PARSEDEWETRON_H

#include <iostream>
#include <vector>
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

    //vectors of value pairs time:value
    std::vector<std::pair<float, float>> current_1;
    std::vector<std::pair<float, float>> current_2;
    std::vector<std::pair<float, float>> current_3;
    std::vector<std::pair<float, float>> voltage_1;
    std::vector<std::pair<float, float>> voltage_2;
    std::vector<std::pair<float, float>> voltage_3;

    //file parser
    parseDewetron(std::string filename, float frequency);

    //getters

    std::vector<std::pair<float, float>> getCurrentOneVector();
    std::vector<std::pair<float, float>> getCurrentTwoVector();
    std::vector<std::pair<float, float>> getCurrentThreeVector();
    std::vector<std::pair<float, float>> getVoltageOneVector();
    std::vector<std::pair<float, float>> getVoltageTwoVector();
    std::vector<std::pair<float, float>> getVoltageThreeVector();
    
    float getFrequency();

    // possible server features?

private:
    void parseDewetronFile();
};

#endif //CATKIN_WS_PARSEDEWETRON_H
