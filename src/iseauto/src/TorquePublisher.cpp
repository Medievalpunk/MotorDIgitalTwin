//
// Created by sejego on 12/7/20.
//
#include "parseDewetron.h"

class TorquePublisher: public ParseDewetron
{
public:
    void parseDewetronFile()
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

                }
};
