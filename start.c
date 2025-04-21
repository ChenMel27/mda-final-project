#include "start.h"
#include "gba.h"
#include "mode0.h"
#include "townCM.h"
#include "townCM2.h"
#include "player.h"
#include "sprites.h"

// Guide movement + animation vars
int tileFlashTimer = 0;
int tileFlashState = 0;
u16 originalTiles[4][16];  // tile 84, 85, 116, 117

// Timing for guide animation
int guideFrameCounter = 0;
int guideFrameDelay = 6;
int guideAnimIndex = 0;
int guideSpeed = 1;
int guidePatrolLeftBound = 0;
int guidePatrolRightBound = 0;
int guideMoveCounter = 0;
int guideMoveDelay = 2;
int transformedPlayer = 0;

extern int talkedToGuide;

// -1 = moving left, 1 = moving right
int guideMoveDirection = -1;

// Tile frames for guide
int guideLeftFrames[5] = {18, 16, 14, 12, 10};
int guideRightFrames[4] = {12, 14, 16, 18};

// Start player animation
int startHikerFrameDelay = 4;
int startHikerFrameCounter = 0;
int startHikerFrame = 0;
int startHikerFramesHorizontal[] = {24, 26, 28, 20, 22};
int startHikerFramesUp[] = {0, 2, 4, 6, 8};
int startHikerFramesDown[] = {10, 12, 14, 16, 18};
int next = 0;

typedef enum {
    RIGHT,
    LEFT,
    UP,
    DOWN
} Direction;

extern int hOff, vOff;

SPRITE startPlayer;
SPRITE guide;

inline unsigned char startColorAt(int x, int y) {
    return townCMBitmap[OFFSET(x, y, 512)];
}

inline unsigned char start2ColorAt(int x, int y) {
    return townCM2Bitmap[OFFSET(x, y, 512)];
}

void flashColorInTile(int tileId, u8 targetIndex, u8 flashIndex, int flashOn, u16* originalTileData) {
    volatile u16* tile = &CHARBLOCK[0].tileimg[tileId * 16];

    for (int i = 0; i < 16; i++) {
        u16 original = originalTileData[i];
        u16 result = 0;

        for (int j = 0; j < 4; j++) {
            u8 pixel = (original >> (j * 4)) & 0xF;

            if (pixel == targetIndex && flashOn) {
                pixel = flashIndex;
            }

            result |= (pixel << (j * 4));
        }

        tile[i] = result;
    }
}



void fillTileWithColor(int tileId, u8 colorIndex) {
    u8 packed = (colorIndex << 4) | colorIndex;
    u16 word = (packed << 8) | packed;
    volatile u16* tile = &CHARBLOCK[0].tileimg[tileId * 16]; // 4bpp = 16 u16s per tile
    for (int i = 0; i < 16; i++) {
        tile[i] = word;
    }
}


// Initialize
void initStartPlayer() {
    startPlayer.worldX = 0;
    startPlayer.worldY = 165;
    startPlayer.x = SCREENWIDTH / 2 - 8;
    startPlayer.y = SCREENHEIGHT / 2 - 8;
    startPlayer.width = 16;
    startPlayer.height = 16;
    startPlayer.oamIndex = 0;
    startPlayer.numFrames = 5;
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
    guide.oamIndex = 1;
    guide.numFrames = 1;
    guide.currentFrame = 0;
    guide.isAnimating = 1;
    guide.direction = 0;
    guide.yVel = 0;
    
    // guide movs 20 pixels left and right from its starting x
    guidePatrolLeftBound = guide.worldX - 20;
    guidePatrolRightBound = guide.worldX + 20;
}

// Update
void updateStartPlayer(int* hOff, int* vOff) {
    startPlayer.isAnimating = 0;
    int speed = 1;
    
    // 4 corners of collision
    int leftX   = startPlayer.worldX;
    int rightX  = startPlayer.worldX + startPlayer.width - 1;
    int topY    = startPlayer.worldY;
    int bottomY = startPlayer.worldY + startPlayer.height - 1;
    
    if (talkedToGuide) {
        if (BUTTON_HELD(BUTTON_RIGHT)) {
            startPlayer.isAnimating = 1;
            startPlayer.direction = RIGHT;
            int newX = startPlayer.worldX + speed;
            if (startPlayer.worldX + startPlayer.width < STARTMAPWIDTH &&
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
            if (!transformedPlayer &&
                startColorAt(newX, topY) == 3 ||
                startColorAt(newX, bottomY) == 3) {
                transformedPlayer = 1;
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
            if (!transformedPlayer &&
                startColorAt(leftX, newY) == 3 ||
                startColorAt(rightX, newY) == 3) {
                transformedPlayer = 1;
            }
        }
        if (BUTTON_HELD(BUTTON_DOWN)) {
            startPlayer.isAnimating = 1;
            startPlayer.direction = DOWN;
            int newY = startPlayer.worldY + speed;
            if (startPlayer.worldY < STARTMAPHEIGHT - startPlayer.height &&
                startColorAt(leftX, newY + startPlayer.height - 1) != 0 &&
                startColorAt(rightX, newY + startPlayer.height - 1) != 0) {
                startPlayer.worldY = newY;
            }
            if (!transformedPlayer &&
                startColorAt(leftX, newY + startPlayer.height - 1) == 3 ||
                startColorAt(rightX, newY + startPlayer.height - 1) == 3) {
                transformedPlayer = 1;
            }
        }
    } else {
        if (BUTTON_HELD(BUTTON_RIGHT)) {
            startPlayer.isAnimating = 1;
            startPlayer.direction = RIGHT;
            int newX = startPlayer.worldX + speed;
            if (startPlayer.worldX + startPlayer.width < STARTMAPWIDTH &&
                start2ColorAt(newX + startPlayer.width - 1, topY) != 0 &&
                start2ColorAt(newX + startPlayer.width - 1, bottomY) != 0) {
                startPlayer.worldX = newX;
            }
            if (start2ColorAt(newX + startPlayer.width - 1, topY) == 2 ||
                start2ColorAt(newX + startPlayer.width - 1, bottomY) == 2) {
                next = 1;
            }

        }
        if (BUTTON_HELD(BUTTON_LEFT)) {
            startPlayer.isAnimating = 1;
            startPlayer.direction = LEFT;
            int newX = startPlayer.worldX - speed;
            if (newX >= 0 &&
                start2ColorAt(newX, topY) != 0 &&
                start2ColorAt(newX, bottomY) != 0) {
                startPlayer.worldX = newX;
            }
        }
        if (BUTTON_HELD(BUTTON_UP)) {
            startPlayer.isAnimating = 1;
            startPlayer.direction = UP;
            int newY = startPlayer.worldY - speed;
            if (newY >= 0 &&
                start2ColorAt(leftX, newY) != 0 &&
                start2ColorAt(rightX, newY) != 0) {
                startPlayer.worldY = newY;
            }
        }
        if (BUTTON_HELD(BUTTON_DOWN)) {
            startPlayer.isAnimating = 1;
            startPlayer.direction = DOWN;
            int newY = startPlayer.worldY + speed;
            if (startPlayer.worldY < STARTMAPHEIGHT - startPlayer.height &&
                start2ColorAt(leftX, newY + startPlayer.height - 1) != 0 &&
                start2ColorAt(rightX, newY + startPlayer.height - 1) != 0) {
                startPlayer.worldY = newY;
            }
        }
    }
    
    // Start player animation
    startHikerFrameCounter++;
    if (startPlayer.isAnimating && startHikerFrameCounter > startHikerFrameDelay) {
        startHikerFrame = (startHikerFrame + 1) % startPlayer.numFrames;
        startHikerFrameCounter = 0;
    } else if (!startPlayer.isAnimating) {
        startHikerFrame = 0;
        startHikerFrameCounter = 0;
    }
    
    // Camera
    *hOff = startPlayer.worldX - (SCREENWIDTH / 2 - startPlayer.width / 2);
    *vOff = startPlayer.worldY - (SCREENHEIGHT / 2 - startPlayer.height / 2);
    
    // Clamp camera
    if (*hOff < 0) *hOff = 0;
    if (*vOff < 0) *vOff = 0;
    if (*hOff > STARTMAPWIDTH - SCREENWIDTH) *hOff = STARTMAPWIDTH - SCREENWIDTH;
    if (*vOff > STARTMAPHEIGHT - SCREENHEIGHT) *vOff = STARTMAPHEIGHT - SCREENHEIGHT;
}

void updateGuideSprite() {
    // Animate the guide
    guideFrameCounter++;
    if (guideFrameCounter > guideFrameDelay) {
        if (guideMoveDirection == -1) {
            // 6 frames left
            guideAnimIndex = (guideAnimIndex + 1) % 5;
        } else {
            // 5 frames right
            guideAnimIndex = (guideAnimIndex + 1) % 4;
        }
        guideFrameCounter = 0;
    }
    guideMoveCounter++;
    if (guideMoveCounter > guideMoveDelay) {
        // Move guide horizontally
        guide.worldX += guideSpeed * guideMoveDirection;
        guideMoveCounter = 0;
    }
    
    // Reverse direction
    if (guide.worldX < guidePatrolLeftBound) {
        guide.worldX = guidePatrolLeftBound;
        guideMoveDirection = 1;
        guideAnimIndex = 0;
    } else if (guide.worldX > guidePatrolRightBound) {
        guide.worldX = guidePatrolRightBound;
        guideMoveDirection = -1;
        guideAnimIndex = 0;
    }
    if (transformedPlayer) {
        startPlayer.height = 11;
        startPlayer.width = 6;
    }
}


// Draw
void drawStartPlayer() {
    int screenX = startPlayer.worldX - hOff;
    int screenY = startPlayer.worldY - vOff;
    shadowOAM[startPlayer.oamIndex].attr0 =
        ATTR0_Y(screenY) | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_TALL;
        if (transformedPlayer) {
            shadowOAM[startPlayer.oamIndex].attr1 = ATTR1_X(screenX) | ATTR1_SMALL;
            shadowOAM[startPlayer.oamIndex].attr2 = ATTR2_TILEID(10, 14); // Tile (10,14)
        }
         else {
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
}

void drawGuideSprite() {
    int screenX = guide.worldX - hOff;
    int screenY = guide.worldY - vOff;
    shadowOAM[guide.oamIndex].attr0 =
        ATTR0_Y(screenY) | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_TALL;
    
    int tileX;
    int hflip = 0;
    
    // flip logic
    if (guideMoveDirection == -1) {
        tileX = guideLeftFrames[guideAnimIndex];
        hflip = 0;
    } else {
        tileX = guideRightFrames[guideAnimIndex];
        hflip = ATTR1_HFLIP;
    }
    
    shadowOAM[guide.oamIndex].attr1 = ATTR1_X(screenX) | ATTR1_MEDIUM | hflip;
    shadowOAM[guide.oamIndex].attr2 = ATTR2_TILEID(tileX, 9);
}

// Collision checking between player and guide
int checkPlayerGuideCollision() {
    return collision(
        startPlayer.worldX, startPlayer.worldY, startPlayer.width, startPlayer.height,
        guide.worldX, guide.worldY, guide.width, guide.height
    );
}
