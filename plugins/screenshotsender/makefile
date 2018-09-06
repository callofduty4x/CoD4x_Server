CC=gcc
CPP=g++
TARGET_NAME=nehoscreenshotuploader

ifeq ($(OS),Windows_NT)
EXT=dll
LFLAGS=-L..\ -lcom_plugin -static-libgcc -static-libstdc++
else
EXT=so
LFLAGS=
endif

# gcc -m32 -Wall -O1 -g -mtune=core2 -c *.c || goto :error
# gcc -m32 -g -shared -static-libgcc -static-libstdc++ -o nehoscreenshotuploader.dll *.o -L..\ -lcom_plugin || goto :error

# -fvisibility=hidden -mtune=core2 -c *.c

all: qshared.c main.c
	$(CC) -m32 -g -Wall -O1 -c *.c
	$(CC) -m32 -g -shared -o $(TARGET_NAME).$(EXT) *.o $(LFLAGS)
clean:
	rm *.o
