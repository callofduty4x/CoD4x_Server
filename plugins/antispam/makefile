CC=gcc
CPP=g++
TARGET_NAME=antispam

all: antispam_plugin.cpp
	$(CPP) -m32 -Wall -O1 -g -fvisibility=hidden -mtune=core2 -c antispam_plugin.cpp
	$(CPP) -m32 -g -shared -o $(TARGET_NAME).so *.o
clean:
	rm *.o
