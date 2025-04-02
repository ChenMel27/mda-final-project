#include "start.h"
#include "gba.h"
#include "mode0.h"
#include "townCM.h"
#include "player.h"
#include "sprites.h"

// Animation vars for the starting
int startHikerFrameDelay = 4;
int startHikerFrameCounter = 0;
int startHikerFrame = 0;
int startHikerFramesHorizontal[] = {20, 22, 24};
int startHikerFramesUp[] = {0, 2, 4};
int startHikerFramesDown[] = {10, 12, 14};
int next = 0;

typedef enum {
    RIGHT,
    LEFT,
    UP,
    DOWN
} Direction;

extern int hOff, vOff;

// Define the sprites for the start phase
SPRITE startPlayer;
SPRITE guide;

// Bg screen block index
extern int sbb;

// Collision map function for the townCMBitmap
inline unsigned char startColorAt(int x, int y) {
    return townCMBitmap[OFFSET(x, y, 512)];
}

void initStartPlayer() {
    startPlayer.worldX = 0;
    startPlayer.worldY = 165;
    startPlayer.x = SCREENWIDTH / 2 - 8;
    startPlayer.y = SCREENHEIGHT / 2 - 8;
    startPlayer.width = 16;
    startPlayer.height = 16;
    startPlayer.oamIndex = 0;
    startPlayer.numFrames = 3;
    startPlayer.currentFrame = 0;
    startPlayer.isAnimating = 1;
    startPlayer.direction = RIGHT;
    startPlayer.yVel = 0;

    DMANow(3, (void*)playerPal, SPRITE_PAL, playerPalLen / 2);
    DMANow(3, (void*)playerTiles, &CHARBLOCK[4], playerTilesLen / 2);
}

void initGuideSprite() {
    guide.worldX = 436;
    guide.worldY = 127;
    guide.width = 16;
    guide.height = 32;
    // Sprite uses 0
    guide.oamIndex = 1;
    guide.numFrames = 1;
    guide.currentFrame = 0;
    guide.isAnimating = 0;
    guide.direction = 0;
    guide.yVel = 0;
}

void updateStartPlayer(int* hOff, int* vOff) {
    startPlayer.isAnimating = 0;
    int speed = 1;
    
    // Four corners
    int leftX   = startPlayer.worldX;
    int rightX  = startPlayer.worldX + startPlayer.width - 1;
    int topY    = startPlayer.worldY;
    int bottomY = startPlayer.worldY + startPlayer.height - 1;
    
    if (BUTTON_HELD(BUTTON_RIGHT)) {
        startPlayer.isAnimating = 1;
        startPlayer.direction = RIGHT;
        int newX = startPlayer.worldX + speed;
        if (startPlayer.worldX + startPlayer.width < MAPWIDTH &&
            startColorAt(newX + startPlayer.width - 1, topY) != 0 &&
            startColorAt(newX + startPlayer.width - 1, bottomY) != 0) {
            startPlayer.worldX = newX;
        }
        if (startColorAt(newX + startPlayer.width - 1, topY) == 2 ||
            startColorAt(newX + startPlayer.width - 1, bottomY) == 2) {
            next = 1;
        }
    }

    if (BUTTON_HELD(BUTTON_LEFT)) {
        startPlayer.isAnimating = 1;
        startPlayer.direction = LEFT;
        int newX = startPlayer.worldX - speed;
        if (newX >= 0 &&
            startColorAt(newX, topY) != 0 &&
            startColorAt(newX, bottomY) != 0) {
            startPlayer.worldX = newX;
        }
    }
    
    if (BUTTON_HELD(BUTTON_UP)) {
        startPlayer.isAnimating = 1;
        startPlayer.direction = UP;
        int newY = startPlayer.worldY - speed;
        if (newY >= 0 &&
            startColorAt(leftX, newY) != 0 &&
            startColorAt(rightX, newY) != 0) {
            startPlayer.worldY = newY;
        }
    }
    
    if (BUTTON_HELD(BUTTON_DOWN)) {
        startPlayer.isAnimating = 1;
        startPlayer.direction = DOWN;
        int newY = startPlayer.worldY + speed;
        if (startPlayer.worldY < MAPHEIGHT - startPlayer.height &&
            startColorAt(leftX, newY + startPlayer.height - 1) != 0 &&
            startColorAt(rightX, newY + startPlayer.height - 1) != 0) {
            startPlayer.worldY = newY;
        }
    }
    
    // Animation handling for the start player.
    startHikerFrameCounter++;
    if (startPlayer.isAnimating && startHikerFrameCounter > startHikerFrameDelay) {
        startHikerFrame = (startHikerFrame + 1) % startPlayer.numFrames;
        startHikerFrameCounter = 0;
    } else if (!startPlayer.isAnimating) {
        startHikerFrame = 0;
        startHikerFrameCounter = 0;
    }
    
    // Center the camera
    *hOff = startPlayer.worldX - (SCREENWIDTH / 2 - startPlayer.width / 2);
    *vOff = startPlayer.worldY - (SCREENHEIGHT / 2 - startPlayer.height / 2);
    
    // Clamp camera to map boundaries.
    if (*hOff < 0) *hOff = 0;
    if (*vOff < 0) *vOff = 0;
    if (*hOff > MAPWIDTH - SCREENWIDTH) *hOff = MAPWIDTH - SCREENWIDTH;
    if (*vOff > MAPHEIGHT - SCREENHEIGHT) *vOff = MAPHEIGHT - SCREENHEIGHT;
    
    // Update screen block index 20–23
    sbb = 20 + (*hOff / 512);
}

void updateGuideSprite() {
    // Add when I want to animate the guide
}

void drawStartPlayer() {
    int screenX = startPlayer.worldX - hOff;
    int screenY = startPlayer.worldY - vOff;
    shadowOAM[startPlayer.oamIndex].attr0 = ATTR0_Y(screenY) | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_TALL;
    if (startPlayer.direction == RIGHT) {
        shadowOAM[startPlayer.oamIndex].attr1 = ATTR1_X(screenX) | ATTR1_MEDIUM;
        shadowOAM[startPlayer.oamIndex].attr2 = ATTR2_TILEID(startHikerFramesHorizontal[startHikerFrame], 1);
    } else if (startPlayer.direction == LEFT) {
        shadowOAM[startPlayer.oamIndex].attr1 = ATTR1_X(screenX) | ATTR1_MEDIUM | ATTR1_HFLIP;
        shadowOAM[startPlayer.oamIndex].attr2 = ATTR2_TILEID(startHikerFramesHorizontal[startHikerFrame], 1);
    } else if (startPlayer.direction == UP) {
        shadowOAM[startPlayer.oamIndex].attr1 = ATTR1_X(screenX) | ATTR1_MEDIUM;
        shadowOAM[startPlayer.oamIndex].attr2 = ATTR2_TILEID(startHikerFramesUp[startHikerFrame], 1);
    } else if (startPlayer.direction == DOWN) {
        shadowOAM[startPlayer.oamIndex].attr1 = ATTR1_X(screenX) | ATTR1_MEDIUM;
        shadowOAM[startPlayer.oamIndex].attr2 = ATTR2_TILEID(startHikerFramesDown[startHikerFrame], 1);
    }
}

void drawGuideSprite() {
    int screenX = guide.worldX - hOff;
    int screenY = guide.worldY - vOff;
    shadowOAM[guide.oamIndex].attr0 = ATTR0_Y(screenY) | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_TALL;
    shadowOAM[guide.oamIndex].attr1 = ATTR1_X(screenX) | ATTR1_MEDIUM;
    shadowOAM[guide.oamIndex].attr2 = ATTR2_TILEID(0, 9);
}

// Checks collision with the guide sprite
int checkPlayerGuideCollision() {
    return collision(
        startPlayer.worldX, startPlayer.worldY, startPlayer.width, startPlayer.height,
        guide.worldX, guide.worldY, guide.width, guide.height
    );
}
