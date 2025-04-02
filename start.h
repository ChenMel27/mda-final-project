#ifndef START_PHASE_PLAYER_H
#define START_PHASE_PLAYER_H

#include "gba.h"

#define MAPWIDTH 512
#define MAPHEIGHT 512

int next;

void initStartPlayer();
void initGuideSprite();
void updateStartPlayer(int* hOff, int* vOff);
void updateGuideSprite();
void drawStartPlayer();
void drawGuideSprite();
int checkPlayerGuideCollision();

#endif
