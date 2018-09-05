CC=gcc
CPP=g++
TARGET_NAME=cpptest

all: main.cpp
	$(CC) -m32 -Wall -O1 -g -fvisibility=hidden -mtune=core2 -c *.cpp
	$(CC) -m32 -g -shared -o $(TARGET_NAME).so *.o
clean:
	rm *.o
