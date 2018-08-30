#!/bin/bash
NAME='cpptest'

#Compiling: debugging
echo `$(PLUGIN_COMP_CXX) -g -m32 -Wall -O1 -s -fvisibility=hidden -mtune=core2 -c *.cpp`

#Compiling: release
#echo `$(PLUGIN_COMP_CXX) -m32 -Wall -O1 -s -fvisibility=hidden -mtune=core2 -c *.cpp`

#Linking
echo `$(PLUGIN_COMP_CXX) -m32 -shared -fvisibility=hidden -o $NAME''.so *.o`

#Cleaning up
echo `rm *.o`

if [ $? -ne 0 ]
then
    echo "Compile failed!"
    exit 1
fi