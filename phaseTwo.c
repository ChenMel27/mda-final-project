#include "hiker.h"
#include "gba.h"
#include "mode0.h"
#include "bgTwoFrontCM.h"
#include "sprites.h"
#include "phaseTwo.h"
#include "player.h"
#include "health.h"
#include "stdlib.h"
#include "healthaudio.h"
#include "digitalSound.h"

// how far above view to start
#define SNOW_SPAWN_BUFFER 10
#define SNOW_SPAWN_WIDTH (SCREENWIDTH - SNOW_WIDTH)
#define SNOW_SPAWN_HEIGHT SNOW_SPAWN_BUFFER

// Global phase variables
extern int hikerFrameDelay;
extern int hikerFrameCounter;
extern int hikerFrame;
extern int hikerFrames[4];
extern int hOff, vOff;
extern int isDucking;
extern int gameOver;
int winPhaseTwo = 0;
extern SPRITE player;
extern SPRITE health;
int playSound = 0;

void initPlayerTwo() {
    player.worldX = 0;
    player.worldY = 102;
    player.x = SCREENWIDTH / 2 - 8;
    player.y = SCREENHEIGHT / 2 - 16;
    player.width = 17;
    player.height = 24;
    player.oamIndex = 0;
    player.numFrames = 3;
    player.currentFrame = 0;
    player.isAnimating = 1;
    player.direction = 0;
    player.active = 1;
    player.xVel = 1;
    player.yVel = 0;
    
    DMANow(3, (void*) playerPal, SPRITE_PAL, playerPalLen / 2);
    DMANow(3, (void*) playerTiles, &CHARBLOCK[4], playerTilesLen / 2);
}

void updatePlayerTwo(int* hOff, int* vOff) {
    player.isAnimating = 0;

    // Ducking check
    isDucking = BUTTON_HELD(BUTTON_DOWN);

    // Collision corners
    int leftX = player.worldX;
    int rightX = player.worldX + player.width - 1;
    int topY = player.worldY;
    int bottomY = player.worldY + player.height - 1;

    // Horizontal movement
    if (BUTTON_HELD(BUTTON_LEFT) && player.worldX > 0) {
        player.isAnimating = 1;
        player.direction = 1;
        // iterate 3 up (left 1) for mountains + smooth movement
        for (int step = 0; step <= 3; step++) {
            int testLeftX = player.worldX - player.xVel;
            int testTopY = player.worldY - step;
            int testBottomY = player.worldY + player.height - 1 - step;

            if (colorAtTwo(testLeftX, testTopY) != 0x02 &&
                colorAtTwo(testLeftX, testBottomY) != 0x02) {
                
                player.worldX = testLeftX;
                player.worldY -= step;
                break;
            }
        }
    }
    

    if (BUTTON_HELD(BUTTON_RIGHT) && player.worldX < MAPWIDTH - player.width) {
        player.isAnimating = 1;
        player.direction = 0;
        for (int step = 0; step <= 3; step++) {
            if ((colorAtTwo(rightX + player.xVel, topY - step) != 0x02) &&
                (colorAtTwo(rightX + player.xVel, bottomY - step) != 0x02)) {
                player.worldX += player.xVel;
                player.worldY -= step;
                break;
            }
        }
    }

    // Vertical movement + gravity
    int grounded = 0;

    player.yVel += GRAVITY;
    if (player.yVel > TERMINAL_VELOCITY) {
        player.yVel = TERMINAL_VELOCITY;
    }

    if (player.yVel < 0) {
        for (int i = 0; i < -player.yVel; i++) {
            topY = player.worldY;
            if (topY > 0 &&
                colorAtTwo(leftX, topY - 1) != 0x02 &&
                colorAtTwo(rightX, topY - 1) != 0x02) {
                player.worldY--;
            } else {
                player.yVel = 0;
                break;
            }
        }
    } else if (player.yVel > 0) {
        for (int i = 0; i < player.yVel; i++) {
            bottomY = player.worldY + player.height - 1;
            if (bottomY + 1 < MAPHEIGHT &&
                colorAtTwo(leftX, bottomY + 1) != 0x02 &&
                colorAtTwo(rightX, bottomY + 1) != 0x02) {
                player.worldY++;
            } else {
                player.yVel = 0;
                grounded = 1;
                break;
            }
        }
    } else {
        bottomY = player.worldY + player.height - 1;

        int groundedFarLeft = colorAtTwo(leftX, bottomY + 1) == 0x02;
        int groundedMiddle = colorAtTwo(leftX + player.width / 2, bottomY + 1) == 0x02;
        int groundedFarRight = colorAtTwo(rightX, bottomY + 1) == 0x02;

        if (groundedFarLeft || groundedMiddle || groundedFarRight) {
            grounded = 1;
        }
    }
    

    // Jumping
    if (BUTTON_PRESSED(BUTTON_UP) && grounded) {
        player.yVel = -12;
        grounded = 0;
    }

    // Animating
    hikerFrameCounter++;
    if (player.isAnimating && hikerFrameCounter > hikerFrameDelay) {
        hikerFrame = (hikerFrame + 1) % player.numFrames;
        hikerFrameCounter = 0;
    } else if (!player.isAnimating) {
        hikerFrame = 0;
        hikerFrameCounter = 0;
    }

    // Camera setting
    *hOff = player.worldX - (SCREENWIDTH / 2 - player.width / 2);
    *vOff = player.worldY - (SCREENHEIGHT / 2 - player.height / 2);

    if (*hOff < 0) *hOff = 0;
    if (*vOff < 0) *vOff = 0;
    if (*hOff > MAPWIDTH - SCREENWIDTH) *hOff = MAPWIDTH - SCREENWIDTH;
    if (*vOff > MAPHEIGHT - SCREENHEIGHT) *vOff = MAPHEIGHT - SCREENHEIGHT;

    // Win condition
    if (player.worldX + player.width >= MAPWIDTH - 1) {
        winPhaseTwo = 1;
    }
}

void drawPlayerTwo() {
    // Four corners of the player
    int leftX   = player.worldX;
    int rightX  = player.worldX + player.width - 1;
    int topY    = player.worldY;
    int bottomY = player.worldY + player.height - 1;
    
    // If player is in water, lose a life
    if (colorAtTwo(leftX, topY) == 0x01 ||
        colorAtTwo(rightX, topY) == 0x01 ||
        colorAtTwo(leftX, bottomY) == 0x01 ||
        colorAtTwo(rightX, bottomY) == 0x01) {
        
        // Lose a life
        if (health.active > 0) {
            health.active--;
            playSound = 1;
            // If no lives, go to lose
            if (health.active == 0) {
                gameOver = 1;
            }
        }
        
        // Reset player position back to start of phase two
        player.worldX = PLAYER_START_X;
        player.worldY = PLAYER_START_Y;
        player.yVel = 0;
        
        // Reset the camera offsets
        hOff = 0;
        vOff = 0;
        return;
    }
    
    int screenX = player.worldX - hOff;
    int screenY = player.worldY - vOff;
    
    if (player.active) {
        shadowOAM[player.oamIndex].attr0 = ATTR0_Y(screenY) | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_TALL;
        if (player.direction == 0) {
            shadowOAM[player.oamIndex].attr1 = ATTR1_X(screenX) | ATTR1_MEDIUM;
        } else if (player.direction == 1) {
            shadowOAM[player.oamIndex].attr1 = ATTR1_X(screenX) | ATTR1_MEDIUM | ATTR1_HFLIP;
        }
        
        // If ducking use the duck tile
        if (isDucking) {
            shadowOAM[player.oamIndex].attr2 = ATTR2_TILEID(4, 5);
        } else {
            shadowOAM[player.oamIndex].attr2 = ATTR2_TILEID(hikerFrames[hikerFrame], 1);
        }
    } else {
        gameOver = 1;
    }
}

// ============================= [ SNOW LOGIC ] =============================
void initSnow() {
    // seed
    srand(1234);
    for (int i = 0; i < MAX_SNOW; i++) {
        snows[i].width = SNOW_WIDTH;
        snows[i].height = SNOW_HEIGHT;
        snows[i].oamIndex = 120 + i;
        snows[i].active = 1;
        snows[i].yVel = SNOW_SPEED;
        resetSnow(i);
    }
}

void updateSnow() {
    for (int i = 0; i < MAX_SNOW; i++) {
        if (!snows[i].active) continue;

        snows[i].worldY += snows[i].yVel;

        // collision with snow
        if (collision(snows[i].worldX, snows[i].worldY, SNOW_WIDTH, SNOW_HEIGHT,
            player.worldX,   player.worldY,   player.width,   player.height)) {
            playSound = 1;
            health.active--;
            // Lose if no more health
            if (health.active == 0) gameOver = 1;

            // Or reset player
            player.worldX = PLAYER_START_X;
            player.worldY = PLAYER_START_Y;
            player.yVel = 0;
            hOff = 0;
            vOff = 0;
            resetSnow(i);
        }
        // fell below bottom of view
        else if (snows[i].worldY > vOff + SCREENHEIGHT) {
            resetSnow(i);
        }
    }
}

void drawSnow() {
    for (int i = 0; i < MAX_SNOW; i++) {
        if (!snows[i].active) {
            shadowOAM[snows[i].oamIndex].attr0 = ATTR0_HIDE;
            continue;
        }

        int sx = snows[i].worldX - hOff;
        int sy = snows[i].worldY - vOff;

        // hide if completely off‑screen
        if (sx < -SNOW_WIDTH || sx > SCREENWIDTH || sy < -SNOW_HEIGHT|| sy > SCREENHEIGHT) {
            shadowOAM[snows[i].oamIndex].attr0 = ATTR0_HIDE;
        } else {
            shadowOAM[snows[i].oamIndex].attr0 = ATTR0_Y(sy) | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE;
            shadowOAM[snows[i].oamIndex].attr1 = ATTR1_X(sx) | ATTR1_SMALL;
            shadowOAM[snows[i].oamIndex].attr2 = ATTR2_TILEID(SNOW_TILE_COL, SNOW_TILE_ROW);
        }
    }
}

void resetSnow(int i) {
    // spawn somewhere in the visible x range
    snows[i].worldX = hOff + (rand() % SNOW_SPAWN_WIDTH);
    // spawn just above the top of the screen
    snows[i].worldY = vOff - (rand() % SNOW_SPAWN_HEIGHT) - SNOW_HEIGHT;
}

inline unsigned char colorAtTwo(int x, int y) {
    return ((unsigned char*) bgTwoFrontCMBitmap)[OFFSET(x, y, MAPWIDTH)];
}