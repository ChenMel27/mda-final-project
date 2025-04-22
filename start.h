#ifndef START_PHASE_PLAYER_H
#define START_PHASE_PLAYER_H

#include "gba.h"

#define STARTMAPWIDTH 512
#define STARTMAPHEIGHT 512

int next;
int cheatOn;
int tileFlashTimer;
int tileFlashState;
void initStartPlayer();
void initGuideSprite();
void updateStartPlayer(int* hOff, int* vOff);
void updateGuideSprite();
void drawStartPlayer();
void drawGuideSprite();
int checkPlayerGuideCollision();
void fillTileWithColor(int tileId, u8 colorIndex);
void flashColorInTile(int tileId, u8 targetIndex, u8 flashIndex, int flashOn, u16* originalTileData);
#endif
