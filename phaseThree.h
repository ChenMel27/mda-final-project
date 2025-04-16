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
#define REG_SIODATA32 (*(volatile unsigned int*) 0x4000120)
#define REG_SIOCNT (*(volatile unsigned short*) 0x4000128)


unsigned char colorAtThree(int x, int y);
void initPlayerThree();
void updatePlayerThree(int* hOff, int* vOff);
void drawPlayerThree();
void initCountdownTimer(void);
void drawTimer(void);
void updatePlayerPalette();
unsigned short playerPaletteWork[256];
int winPhaseThree;

typedef struct {
    unsigned short worldX;
    unsigned short worldY;
    unsigned char winFlag;
    unsigned char loseFlag;
    unsigned char health;
    unsigned char finishTime;
    unsigned short padding;
} PlayerPacket;

extern PlayerPacket localPacket;
extern PlayerPacket remotePacket;
extern int multiplayerGameOver;

void syncMultiplayerState();

