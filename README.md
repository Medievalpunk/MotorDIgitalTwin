# PSG-453 project 

This README file is aimed to explain the main aspects of a PSG-453 project and guide the reader through various aspects of the project.

## Description of the project

To be added...

## Naming conventions
In PSG-453 there are several naming notations that must be followed. They are structured by the components of the project, namely ROS, Unity, physical test bench, sensors, etc.
### ROS
As a general rule, names in ROS should follow the naming convention described in [ROS Naming Conventions](http://wiki.ros.org/ROS/Patterns/Conventions)
| Component | Name |
| ------ | ------ | 
| ROS packages | Ros packages should have tb_ prefix|
| ROS nodes | ROS nodes should feature the name of the component as a prefix |
| ROS topics | ROS topics should describe what information they provide  |
| ROS services| TBD |
|source file namings|source files should follow the conventions of [CPP](http://manual.gromacs.org/documentation/5.1-current/dev-manual/naming.html) and [Python](https://visualgit.readthedocs.io/en/latest/pages/naming_convention.html) file naming|

### Visualizations
PSG-453 in its essence is intended to work with various visualization approaches. APIs and/or examples for some of them will be added to this project as submodules. Current list of Visualizations:
Unity 3D
### DEWETRON
