CC=gcc
CPP=g++
TARGET_NAME=b3hide

all: b3hide.c
	$(CC) -m32 -Wall -O1 -g -fvisibility=hidden -mtune=core2 -c *.c
	$(CC) -m32 -g -shared -o $(TARGET_NAME).so *.o
clean:
	rm *.o
