CC=gcc
CXX=g++
TARGET_NAME=cpptest

all: main.cpp
	$(CXX) -m32 -Wall -O1 -g -fvisibility=hidden -mtune=core2 -c *.cpp
	$(CXX) -m32 -g -shared -o $(TARGET_NAME).so *.o
clean:
	rm *.o
