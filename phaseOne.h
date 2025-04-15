#include "gba.h"
#include "sprites.h"

// Starting player position
#define PLAYER_START_X 0
#define PLAYER_START_Y 102
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

int hikerFrameDelay;
int hikerFrameCounter;
int hikerFrame;
int hikerFrames[5];
int isDucking;
int gameOver;
int winPhaseOne;
int sbb;

void initPlayer();
void updatePlayer(int* hOff, int* vOff);
void drawPlayer();
void resetPlayerState();
unsigned char colorAt(int x, int y);
