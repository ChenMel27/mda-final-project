#include "gba.h"
#include "sprites.h"

#define PLAYER_START_X 0
#define PLAYER_START_Y 101
#define PLAYER_START_X 0
#define PLAYER_START_Y 101
#define MAPWIDTH 512
#define MAPHEIGHT 256
#define SCREENWIDTH 240
#define SCREENHEIGHT 160
#define GRAVITY 1
#define TERMINAL_VELOCITY 4
#define BG_WIDTH  512
#define BG_HEIGHT 256
#define SCREEN_WIDTH  240
#define SCREEN_HEIGHT 160
#define MAX_HOFF (BG_WIDTH - SCREEN_WIDTH)
#define MAX_VOFF (BG_HEIGHT - SCREEN_HEIGHT)

unsigned char colorAtThree(int x, int y);
void initPlayerThree();
void updatePlayerThree(int* hOff, int* vOff);
void drawPlayerThree();
void initCountdownTimer(void);
void drawTimer(void);
void updatePlayerPalette();
unsigned short playerPaletteWork[256];
int winPhaseThree;
extern int localFinishedTime;
extern int remoteFinishedTime;
extern int multiplayerGameOver;
extern char resultMessage[32];
typedef struct {
    u16 worldX;
    u16 worldY;
    u8 direction;
    u8 health;
    u8 winFlag;
    u8 padding;
} PlayerPacket;

extern SPRITE remotePlayer;
extern PlayerPacket localPacket;
extern PlayerPacket remotePacket;
#define REG_SIODATA32  *(volatile u32*)0x4000120
#define REG_SIOCNT     *(volatile u16*)0x4000128
