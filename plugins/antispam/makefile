CC=gcc
CPP=g++
TARGET_NAME=antispam

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

all: antispam_plugin.cpp
	$(CPP) $(CFLAGS) -c *.cpp
	$(CPP) $(LFLAGS) -o $(TARGET_NAME).$(EXT) *.o $(LIBS)
		
clean:
ifeq ($(OS),Windows_NT)
	del *.o
else
	rm *.o
endif