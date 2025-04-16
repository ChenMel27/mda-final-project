#include "gba.h"
#include "sprites.h"

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
#define MAX_SNOW 0
#define SNOW_WIDTH 16
#define SNOW_HEIGHT 16
#define SNOW_TILE_ROW 14
#define SNOW_TILE_COL 0
#define SNOW_SPEED 1

SPRITE snows[MAX_SNOW];

unsigned char colorAtTwo(int x, int y);
void initPlayerTwo();
void updatePlayerTwo(int* hOff, int* vOff);
void drawPlayerTwo();
void initSnow();
void updateSnow();
void drawSnow();
int winPhaseTwo;