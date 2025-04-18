#include "gba.h"
#include "sprites.h"
#define PLAYER1_START_X 0
#define PLAYER1_START_Y 102
#define MAPWIDTH1 512
#define MAPHEIGHT1 256
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
int movedHorizontally;

void initPlayer();
void updatePlayer(int* hOff, int* vOff);
void drawPlayer();
void resetPlayerState();