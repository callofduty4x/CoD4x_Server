#!/bin/bash

gcc -D BOTLIB -c *.c
gcc -c ../q_math.c
gcc -c ../qshared.c
gcc -c ../qvsnprintf.c
echo Linking
gcc -shared -o botlib.so *.o
echo Cleaning up
rm *.o

