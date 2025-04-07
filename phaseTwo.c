#include "hiker.h"
#include "gba.h"
#include "mode0.h"
#include "bgTwoFrontCM.h"
#include "sprites.h"
#include "phaseTwo.h"
#include "player.h"
#include "health.h"
#include "stdlib.h"

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
extern int sbb;

void initPlayerTwo() {
    resetPlayerState();
    player.worldX = 0;
    player.worldY = 101;
    player.x = SCREENWIDTH / 2 - 8;
    player.y = SCREENHEIGHT / 2 - 16;
    player.width = 17;
    player.height = 23;
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
    
    // Duck if button held down
    if (BUTTON_HELD(BUTTON_DOWN)) {
        isDucking = 1;
    } else {
        isDucking = 0;
    }
    
    // Four corners of the player for collision sprite
    int leftX = player.worldX;
    int rightX = player.worldX + player.width - 1;
    int topY = player.worldY;
    int bottomY = player.worldY + player.height - 1;
    
    if (BUTTON_HELD(BUTTON_LEFT)) {
        player.isAnimating = 1;
        player.direction = 1;
        if (player.worldX > 0) {
            int step;
            // Try stepping up up to 3 pixels:
            for (step = 0; step <= 3; step++) {
                if ((colorAtTwo(leftX - player.xVel, topY - step) != 0x02) &&
                    (colorAtTwo(leftX - player.xVel, bottomY - step) != 0x02)) {
                    player.worldX -= player.xVel;
                    player.worldY -= step;  // adjust upward by 'step' pixels
                    break;
                }
            }
        }
    }

    // For right movement:
    if (BUTTON_HELD(BUTTON_RIGHT)) {
        player.isAnimating = 1;
        player.direction = 0;
        if (player.worldX < MAPWIDTH - player.width) {
            int step;
            for (step = 0; step <= 3; step++) {
                if ((colorAtTwo(rightX + player.xVel, topY - step) != 0x02) &&
                    (colorAtTwo(rightX + player.xVel, bottomY - step) != 0x02)) {
                    player.worldX += player.xVel;
                    player.worldY -= step;
                    break;
                }
            }
        }
    }
    
    // Jump if up button pressed
    if (BUTTON_PRESSED(BUTTON_UP) && player.yVel == 0) {
        player.yVel = -12;
    }
    
    // Gravity
    player.yVel += GRAVITY;
    if (player.yVel > TERMINAL_VELOCITY) {
        player.yVel = TERMINAL_VELOCITY;
    }
    
    // Vertical movement... move one pixel at a time
    if (player.yVel < 0) {
        for (int i = 0; i < -player.yVel; i++) {
            topY = player.worldY;
            if (topY - 1 >= 0 &&
                colorAtTwo(leftX, topY - 1) != 0x02 &&
                colorAtTwo(rightX, topY - 1) != 0x02) {
                player.worldY--;
            } else {
                player.yVel = 0;  // ceiling
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
                player.yVel = 0;  // landed ground
                break;
            }
        }
    }
    
    // Animation
    hikerFrameCounter++;
    if (player.isAnimating && hikerFrameCounter > hikerFrameDelay) {
        hikerFrame = (hikerFrame + 1) % player.numFrames;
        hikerFrameCounter = 0;
    } else if (!player.isAnimating) {
        hikerFrame = 0;
        hikerFrameCounter = 0;
    }
    
    // Center the cam
    *hOff = player.worldX - (SCREENWIDTH / 2 - player.width / 2);
    *vOff = player.worldY - (SCREENHEIGHT / 2 - player.height / 2);
    
    // Camera clamped to map
    if (*hOff < 0) *hOff = 0;
    if (*vOff < 0) *vOff = 0;
    if (*hOff > MAPWIDTH - SCREENWIDTH) *hOff = MAPWIDTH - SCREENWIDTH;
    if (*vOff > MAPHEIGHT - SCREENHEIGHT) *vOff = MAPHEIGHT - SCREENHEIGHT;
    
    // Update screen block index.
    sbb = 20 + (*hOff / 256);

    // Check if player has reached the end of the map
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
    
    // If any corner is over the bad tile (1) hide the sprite
    if (colorAtTwo(leftX, topY) == 0x01 ||
        colorAtTwo(rightX, topY) == 0x01 ||
        colorAtTwo(leftX, bottomY) == 0x01 ||
        colorAtTwo(rightX, bottomY) == 0x01) {
        
        // Lose a life
        if (health.active > 0) {
            health.active--;
            if (health.active == 0) {
                gameOver = 1;
            }
        }
        
        // Reset player's position back to starting point
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
            shadowOAM[player.oamIndex].attr2 = ATTR2_TILEID(4, 4);
        } else {
            shadowOAM[player.oamIndex].attr2 = ATTR2_TILEID(hikerFrames[hikerFrame], 1);
        }
    } else {
        gameOver = 1;
    }
}

void initSnow() {
    for (int i = 0; i < MAX_SNOW; i++) {
        snows[i].worldX = rand() % (MAPWIDTH - SNOW_WIDTH);
        // Start above screen
        snows[i].worldY = rand() % 60 - 80;
        snows[i].width = SNOW_WIDTH;
        snows[i].height = SNOW_HEIGHT;
        snows[i].oamIndex = 120 + i;
        snows[i].active = 1;
        snows[i].yVel = SNOW_SPEED;
    }
}

void updateSnow() {
    for (int i = 0; i < MAX_SNOW; i++) {
        if (snows[i].active) {
            snows[i].worldY += snows[i].yVel;


            if (collision(snows[i].worldX, snows[i].worldY, SNOW_WIDTH, SNOW_HEIGHT,
                player.worldX, player.worldY, player.width, player.height)) {
                // Reset the snow to the top of the screen
                snows[i].worldY = -SNOW_HEIGHT;
                snows[i].worldX = rand() % (MAPWIDTH - SNOW_WIDTH);
            
                // Reduce player's health
                if (health.active > 0) {
                    health.active--;
                    if (health.active == 0) {
                        gameOver = 1;
                    }
                }
                // Reset player's position back to starting point
                player.worldX = PLAYER_START_X;
                player.worldY = PLAYER_START_Y;
                player.yVel = 0;
                
                // Reset the camera offsets
                hOff = 0;
                vOff = 0;
            }
  

            // Reset if off screen
            if (snows[i].worldY > MAPHEIGHT) {
                snows[i].worldY = rand() % 60 - 80;
                snows[i].worldX = rand() % (MAPWIDTH - SNOW_WIDTH);
            }
        }
    }
}

void drawSnow() {
    for (int i = 0; i < MAX_SNOW; i++) {
        if (snows[i].active) {
            int screenX = snows[i].worldX - hOff;
            int screenY = snows[i].worldY - vOff;

            shadowOAM[snows[i].oamIndex].attr0 = ATTR0_Y(screenY) | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE;
            shadowOAM[snows[i].oamIndex].attr1 = ATTR1_X(screenX) | ATTR1_SMALL;
            shadowOAM[snows[i].oamIndex].attr2 = ATTR2_TILEID(SNOW_TILE_COL, SNOW_TILE_ROW);
        }
    }
}


inline unsigned char colorAtTwo(int x, int y) {
    return ((unsigned char*) bgTwoFrontCMBitmap)[OFFSET(x, y, MAPWIDTH)];
}

