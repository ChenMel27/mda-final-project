#ifndef MULTIPLAYER_H
#define MULTIPLAYER_H

#define REG_SIODATA32  *(volatile u32*)0x4000120
#define REG_SIOCNT     *(volatile u16*)0x4000128

typedef unsigned char  u8;
typedef unsigned short u16;
typedef unsigned int   u32;

typedef struct {
    u16 worldX;
    u16 worldY;
    u8  direction;
    u8  health;
    u8  winFlag;
    u8  padding;       // Was originally there
    u16 finishTime;    // New field for local finish timer
    u16 reserved;      // Extra padding for alignment (optional)
} PlayerPacket;

extern PlayerPacket localPacket;
extern PlayerPacket remotePacket;

#endif
