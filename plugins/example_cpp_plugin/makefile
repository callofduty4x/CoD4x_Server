CC=gcc
CPP=g++
TARGET_NAME=cpptest_plugin

ifeq ($(OS),Windows_NT)
EXT=dll
CFLAGS=-m32 -Wall -O1 -g -mtune=core2
LFLAGS=-m32 -g -shared -static-libgcc -static-libstdc++ 
LIBS=-L.. -lcom_plugin
else
EXT=so
CFLAGS=-m32 -Wall -O1 -g -fvisibility=hidden -mtune=core2
LFLAGS=-m32 -g -shared
LIBS=
endif

# gcc -m32 -Wall -O1 -g -mtune=core2 -c *.c || goto :error
# gcc -m32 -g -shared -static-libgcc -static-libstdc++ -o nehoscreenshotuploader.dll *.o -L..\ -lcom_plugin || goto :error

# -fvisibility=hidden -mtune=core2 -c *.c

all: cpptest_plugin.cpp
	$(CPP) $(CFLAGS) -c *.cpp
	$(CPP) $(LFLAGS) -o $(TARGET_NAME).$(EXT) *.o $(LIBS)
	
	#$(CC) -m32 -Wall -O1 -g -mtune=core2 -c *.c
	#$(CC) -m32 -g -shared -static-libgcc -static-libstdc++ -L.. -o nehoscreenshotuploader.dll *.o -lcom_plugin
	#$(CC) -m32 -Wall -O1 -g -fvisibility=hidden -mtune=core2 -c *.c
	#$(CC) -m32 -g -shared -o nehoscreenshotuploader.so *.o

		
clean:
	rm *.o