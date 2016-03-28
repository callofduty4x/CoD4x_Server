#!/bin/bash

rm *.o
gcc -Wall -g -c make_gcc_compatible_asm.c
gcc -Wl -o make_gcc_compatible_asm *.o