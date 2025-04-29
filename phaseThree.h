#include "gba.h"
#include "sprites.h"

#define PLAYER_START_X 20
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
unsigned char colorAtThreeCheat(int x, int y);
void initPlayerThree();
void updatePlayerThree(int* hOff, int* vOff);
void drawPlayerThree();
void initCountdownTimer(void);
void drawTimer(void);
void updatePlayerPalette();
unsigned short playerPaletteWork[256];
int winPhaseThree;
int leftWallTouched;

void initSnowThree();
void updateSnowThree();
void drawSnowThree();
void resetSnowThree(int i);
#define MAX_SNOW 3
#define SNOW_WIDTH 16
#define SNOW_HEIGHT 16
#define SNOW_TILE_ROW 14
#define SNOW_TILE_COL 0
#define SNOW_SPEED 1
// how far above view to start
#define SNOW_SPAWN_BUFFER 10
#define SNOW_SPAWN_WIDTH (SCREENWIDTH - SNOW_WIDTH)
#define SNOW_SPAWN_HEIGHT SNOW_SPAWN_BUFFER
SPRITE snows[MAX_SNOW];