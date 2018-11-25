#!/bin/bash
NAME='censor'

#Compiling: debugging
#echo `gcc -g -m32 -Wall -O1 -s -fvisibility=hidden -mtune=core2 -c *.c`

#Compiling: release
gcc -m32 -Wall -O1 -s -fvisibility=hidden -mtune=prescott -c *.c

#Linking
gcc -m32 -s -shared -fvisibility=hidden -o $NAME''.so *.o

if [ $? -ne 0 ]
then
    echo "Compile failed!"
    exit 1
fi

#Cleaning up
echo `rm *.o`

