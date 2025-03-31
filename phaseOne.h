#ifndef PLAYER_H
#define PLAYER_H

#include "gba.h"
#include "sprites.h"

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


extern SPRITE player;
int gameOver;
int winPhaseOne;
unsigned char colorAt(int x, int y);
void initPlayer();
void updatePlayer(int* hOff, int* vOff);
void drawPlayer();


#endif