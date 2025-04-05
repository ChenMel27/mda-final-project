#include "hiker.h"
#include "gba.h"
#include "mode0.h"
#include "bgOneFrontCM.h"
#include "sprites.h"
#include "phaseOne.h"
#include "player.h"

// Starting position definitions
#define PLAYER_START_X 0
#define PLAYER_START_Y 101

// Animation variables
int hikerFrameDelay = 4;
int hikerFrameCounter = 0;
int hikerFrame = 0;
int hikerFrames[] = {20, 22, 24};
extern int hOff, vOff;
int isDucking = 0;
int gameOver = 0;
int winPhaseOne = 0;

// Row/Col positions for each frame of the health bar
int healthBarFrames[9][2] = {
    {6, 5}, {6, 6}, {6, 7},
    {10, 5}, {10, 6}, {10, 7},
    {14, 5}, {14, 6}, {14, 7}
};

SPRITE player;
SPRITE health;

// Bg sbb
int sbb = 20;

void initPlayer() {
    player.worldX = PLAYER_START_X;
    player.worldY = PLAYER_START_Y;
    player.x = SCREENWIDTH / 2 - 8;   // Center horizontally (16x32 sprite)
    player.y = SCREENHEIGHT / 2 - 16; // Center vertically
    player.width = 16;
    player.height = 25;
    player.oamIndex = 0;
    player.numFrames = 3;
    player.currentFrame = 0;
    player.isAnimating = 1;
    player.direction = 0;
    player.active = 1;  // This flag can remain constant as health is tracked via health.active
    player.xVel = 1;
    player.yVel = 0;
    
    DMANow(3, (void*) playerPal, SPRITE_PAL, playerPalLen / 2);
    DMANow(3, (void*) playerTiles, &CHARBLOCK[4], playerTilesLen / 2);
}

void initHealth() {
    health.worldX = 10;
    health.worldY = 10;
    health.width = 32;
    health.height = 8;
    health.oamIndex = 100;  // Use a different OAM slot than the player
    health.numFrames = 9;
    health.currentFrame = 0;
    health.isAnimating = 0;
    health.direction = 0;
    health.active = 9; // Start with full lives
}

void updateHealth() {
    health.isAnimating = 0;
}

void drawHealth() {
    int frameIndex = 9 - health.active;
    if (frameIndex < 0) frameIndex = 0;
    if (frameIndex > 8) frameIndex = 8;

    int row = healthBarFrames[frameIndex][0];
    int col = healthBarFrames[frameIndex][1];

    shadowOAM[health.oamIndex].attr0 = ATTR0_Y(health.worldY) | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_WIDE;
    shadowOAM[health.oamIndex].attr1 = ATTR1_X(health.worldX) | ATTR1_SMALL;
    shadowOAM[health.oamIndex].attr2 = ATTR2_TILEID(row, col);
}

void updatePlayer(int* hOff, int* vOff) {
    player.isAnimating = 0;
    
    // Duck if button held down
    if (BUTTON_HELD(BUTTON_DOWN)) {
        isDucking = 1;
    } else {
        isDucking = 0;
    }
    
    // Four corners of the player for collision detection
    int leftX = player.worldX;
    int rightX = player.worldX + player.width - 1;
    int topY = player.worldY;
    int bottomY = player.worldY + player.height - 1;
    
    if (BUTTON_HELD(BUTTON_LEFT)) {
        player.isAnimating = 1;
        player.direction = 1;
        if (player.worldX > 0 &&
            colorAt(leftX - player.xVel, topY) != 0 &&
            colorAt(leftX - player.xVel, bottomY) != 0) {
            player.worldX -= player.xVel;
        }
    }
    if (BUTTON_HELD(BUTTON_RIGHT)) {
        player.isAnimating = 1;
        player.direction = 0;
        if (player.worldX < MAPWIDTH - player.width &&
            colorAt(rightX + player.xVel, topY) != 0 &&
            colorAt(rightX + player.xVel, bottomY) != 0) {
            player.worldX += player.xVel;
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
                colorAt(leftX, topY - 1) != 0 &&
                colorAt(rightX, topY - 1) != 0) {
                player.worldY--;
            } else {
                player.yVel = 0;  // Hit ceiling
                break;
            }
        }
    } else if (player.yVel > 0) {
        for (int i = 0; i < player.yVel; i++) {
            bottomY = player.worldY + player.height - 1;
            if (bottomY + 1 < MAPHEIGHT &&
                colorAt(leftX, bottomY + 1) != 0 &&
                colorAt(rightX, bottomY + 1) != 0) {
                player.worldY++;
            } else {
                player.yVel = 0;  // Landed on ground
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
    
    // Center the camera
    *hOff = player.worldX - (SCREENWIDTH / 2 - player.width / 2);
    *vOff = player.worldY - (SCREENHEIGHT / 2 - player.height / 2);
    
    // Clamp camera to map boundaries
    if (*hOff < 0) *hOff = 0;
    if (*vOff < 0) *vOff = 0;
    if (*hOff > MAPWIDTH - SCREENWIDTH) *hOff = MAPWIDTH - SCREENWIDTH;
    if (*vOff > MAPHEIGHT - SCREENHEIGHT) *vOff = MAPHEIGHT - SCREENHEIGHT;
    
    // Update screen block index.
    sbb = 20 + (*hOff / 256);

    // Check if player has reached the end of the map
    if (player.worldX + player.width >= MAPWIDTH - 1) {
        winPhaseOne = 1;
    }
}

void drawPlayer() {
    // Four corners of the player
    int leftX   = player.worldX;
    int rightX  = player.worldX + player.width - 1;
    int topY    = player.worldY;
    int bottomY = player.worldY + player.height - 1;
    
    // Check collision with a "bad tile" (0x02)
    if (colorAt(leftX, topY) == 0x02 ||
        colorAt(rightX, topY) == 0x02 ||
        colorAt(leftX, bottomY) == 0x02 ||
        colorAt(rightX, bottomY) == 0x02) {
        
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
        
        // Optionally, you can also reset the camera offsets
        hOff = 0;
        vOff = 0;
        
        // Skip drawing this frame to simulate a hit
        return;
    }
    
    int screenX = player.worldX - hOff;
    int screenY = player.worldY - vOff;
    
    // Draw the player if still active
    shadowOAM[player.oamIndex].attr0 = ATTR0_Y(screenY) | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_TALL;
    if (player.direction == 0) {
        shadowOAM[player.oamIndex].attr1 = ATTR1_X(screenX) | ATTR1_MEDIUM;
    } else if (player.direction == 1) {
        shadowOAM[player.oamIndex].attr1 = ATTR1_X(screenX) | ATTR1_MEDIUM | ATTR1_HFLIP;
    }
        
    // Choose appropriate tile based on whether the player is ducking or animating
    if (isDucking) {
            shadowOAM[player.oamIndex].attr2 = ATTR2_TILEID(4, 4);
    } else {
        shadowOAM[player.oamIndex].attr2 = ATTR2_TILEID(hikerFrames[hikerFrame], 1);
    }  
}

inline unsigned char colorAt(int x, int y) {
    return ((unsigned char*) bgOneFrontCMBitmap)[OFFSET(x, y, MAPWIDTH)];
}

void resetPlayerState() {
    hikerFrameDelay = 4;
    hikerFrameCounter = 0;
    hikerFrame = 0;
    isDucking = 0;
    gameOver = 0;
    sbb = 20;
}
