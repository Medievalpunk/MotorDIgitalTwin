//
// Created by sejego on 10/18/20.
// This script parses the data from Dewetron measurement csv file
// add relative path to file.
// get onevalue of current?
//

#include <iostream>
#include <unordered_map>
#include <fstream>
#include <sstream>
#include <string>

#include "parseDewetron.h"

// instantiate the object with file name and open it
parseDewetron::parseDewetron(std::string filename, float frequency)
{
    dewetronFile = std::ifstream(filename);
    usedFrequency = frequency;
    parseDewetronFile();        //is this ok?
}

// parse the Dewetron measurements file
void parseDewetron::parseDewetronFile()
{
    bool isFirstLine = true;
    bool isFirstLineWithData = false;
    bool isSecondLineWithData = false;
    int arrCounter;
    std::string element;
    int buffCounter;
    if(!dewetronFile.is_open())
    {
        throw std::runtime_error("Could not open file");
    }

    //if file is open and is OK continue

    else if(dewetronFile.good()) {
        while (std::getline(dewetronFile, line))
        {
            if(isFirstLine)                 // check for first line, cuz it contains headers
            {
                std::stringstream ss(line); // not sure if needed here
                isFirstLine = false;
                isFirstLineWithData = true;
                continue;
            }
                // Create a stringstream from line
                std::stringstream ss(line);
                buffCounter = 0;
                arrCounter = 0;

                // start reading the file line by line

                while (std::getline(ss, element, ','))
                {
                    //check for columns that matter
                    switch(buffCounter)
                    {
                        case 0:
                            bufferArray[arrCounter] = std::stof(element);
                            arrCounter++;
                            break;
                        case 5:
                            bufferArray[arrCounter] = std::stof(element);
                            arrCounter++;
                            break;
                        case 10:
                            bufferArray[arrCounter] = std::stof(element);
                            arrCounter++;
                            break;
                        case 15:
                            bufferArray[arrCounter] = std::stof(element);
                            arrCounter++;
                            break;
                        case 20:
                            bufferArray[arrCounter] = std::stof(element);
                            arrCounter++;
                            break;
                        case 25:
                            bufferArray[arrCounter] = std::stof(element);
                            arrCounter++;
                            break;
                        case 30:
                            bufferArray[arrCounter] = std::stof(element);
                            break;
                    }
                    buffCounter++;
                }
                // insert values for appropriate umaps
                for (int j = 0; j < 7; j++) {

                    switch (j) {
                        case 1:
                            current_1.insert(std::make_pair(bufferArray[0], bufferArray[j]));
                            break;
                        case 2:
                            current_2.insert(std::make_pair(bufferArray[0], bufferArray[j]));
                            break;
                        case 3:
                            current_3.insert(std::make_pair(bufferArray[0], bufferArray[j]));
                            break;
                        case 4:
                            voltage_1.insert(std::make_pair(bufferArray[0], bufferArray[j]));
                            break;
                        case 5:
                            voltage_2.insert(std::make_pair(bufferArray[0], bufferArray[j]));
                            break;
                        case 6:
                            voltage_3.insert(std::make_pair(bufferArray[0], bufferArray[j]));
                            break;
                    }
                    if(isFirstLineWithData)
                    {
                        startTime = bufferArray[0];
                        isSecondLineWithData= true;
                        isFirstLineWithData = false;
                    }
                    else if(isSecondLineWithData)
                    {
                        timeStep = bufferArray[0] - startTime;
                        isSecondLineWithData = false;
                    }
                    //std::cout << bufferArray[j] << "\n";
                }
            }
        }
    dewetronFile.close();
}
float parseDewetron::getCurrentOne(float key)
{
    return current_1.at(key);
}
float parseDewetron::getCurrentTwo(float key)
{
    return current_2.at(key);
}
float parseDewetron::getCurrentThree(float key)
{
    return current_3.at(key);
}
float parseDewetron::getVoltageOne(float key)
{
    return voltage_1.at(key);
}
float parseDewetron::getVoltageTwo(float key)
{
    return voltage_2.at(key);
}
float parseDewetron::getVoltageThree(float key)
{
    return voltage_3.at(key);
}
float parseDewetron::getFrequency()
{
    return usedFrequency;
}
float parseDewetron::getStartTime()
{
    return startTime;
}
float parseDewetron::getTimeStep()
{
    return timeStep;
}