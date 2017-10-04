#pragma once

typedef struct snapshotInfo_t
{
    int clnum;
    struct client_s *client;
    int snapshotDeltaTime;
    byte fromBaseline;
    byte archived;
    byte pad[2];
} snapshotInfo_t;

typedef struct msg_t
{
    qboolean overflowed; //0x00
    qboolean readonly;   //0x04
    byte *data;          //0x08
    byte *splitData;     //0x0c
    int maxsize;         //0x10
    int cursize;         //0x14
    int splitSize;       //0x18
    int readcount;       //0x1c
    int bit;             //0x20	// for bitwise reads and writes
    union {
        int lastRefEntity; //0x24
        int lengthoffset;
    };
} msg_t; //Size: 0x28
