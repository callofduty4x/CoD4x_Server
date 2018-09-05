#!/bin/bash
NAME='censor'

#Compiling: debugging
#echo `gcc -g -m32 -Wall -O1 -s -fvisibility=hidden -mtune=core2 -c *.c`

#Compiling: release
$(PLUGIN_COMP_CC) -m32 -Wall -O1 -s -fvisibility=hidden -mtune=prescott -c *.c

#Linking
$(PLUGIN_COMP_CC) -m32 -s -shared -fvisibility=hidden -o $NAME''.so *.o

if [ $? -ne 0 ]
then
    echo "Compile failed!"
    exit 1
fi

#Cleaning up
echo `rm *.o`

