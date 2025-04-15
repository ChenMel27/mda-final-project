// -----------------------------------------------------------------------------
// File: phaseOne.c
// Summary: Manages the first phase of the game.
// -----------------------------------------------------------------------------

#include "hiker.h"
#include "gba.h"
#include "mode0.h"
#include "bgOneFrontCM.h"
#include "sprites.h"
#include "phaseOne.h"
#include "player.h"

/* --- Definitions --- */
#define FALL_END_Y 400   // Y coordinate where the falling animation ends

/* --- Global Variables --- */
int hikerFrameDelay = 4;
int hikerFrameCounter = 0;
int hikerFrame = 0;
int hikerFrames[] = {24, 26, 28, 20, 22};
extern int hOff, vOff;
int isDucking = 0;
int gameOver = 0;
int winPhaseOne = 0;

/* --- Sprite Definitions --- */
SPRITE player;
extern SPRITE health;

/* --- Player State Definitions --- */
typedef enum {
    PLAYER_NORMAL,
    PLAYER_FALLING
} PlayerState;

PlayerState playerState = PLAYER_NORMAL;

/* --- Falling Animation Globals --- */
int fallingX, fallingY;
const int fallSpeed = 3;   // Pixels to move per frame during falling

/* --- Function Prototypes --- */
void startFallingAnimation(int startX, int startY);
void updateFallingAnimation(void);
void drawFallingSprite(void);
void resetPlayerAfterFall(void);

inline unsigned char colorAt(int x, int y);

/* --- Initialization --- */
void initPlayer() {
    player.worldX = PLAYER_START_X;
    player.worldY = PLAYER_START_Y;
    player.x = SCREENWIDTH / 2 - 8;
    player.y = SCREENHEIGHT / 2 - 16;
    player.width = 12;
    player.height = 24;
    player.oamIndex = 0;
    player.numFrames = 5;
    player.currentFrame = 0;
    player.isAnimating = 1;
    player.direction = 0;
    player.active = 1;
    player.xVel = 1;
    player.yVel = 0;
    
    DMANow(3, (void*) playerPal, SPRITE_PAL, playerPalLen / 2);
    DMANow(3, (void*) playerTiles, &CHARBLOCK[4], playerTilesLen / 2);
}

/* --- Update Routine --- */
void updatePlayer(int* hOff, int* vOff) {
    // If falling, only update falling animation
    if (playerState == PLAYER_FALLING) {
        updateFallingAnimation();
        return;
    }

    // Reset animation each frame
    player.isAnimating = 0;

    // Check ducking
    isDucking = BUTTON_HELD(BUTTON_DOWN);

    // --- Horizontal Movement ---
    int movedHorizontally = 0;
    int leftX = player.worldX;
    int rightX = player.worldX + player.width - 1;
    int topY = player.worldY;
    int bottomY = player.worldY + player.height - 1;

    if (BUTTON_HELD(BUTTON_LEFT) && player.worldX > 0) {
        player.direction = 1;
        player.isAnimating = 1;
        for (int step = 0; step <= 3; step++) {
            if ((colorAt(leftX - player.xVel, topY - step) != 0x04) &&
                (colorAt(leftX - player.xVel, bottomY - step) != 0x04)) {
                player.worldX -= player.xVel;
                player.worldY -= (step > 0 ? step - 1 : 0);
                movedHorizontally = 1;
                break;
            }
        }
    }

    if (BUTTON_HELD(BUTTON_RIGHT) && player.worldX < MAPWIDTH - player.width) {
        player.direction = 0;
        player.isAnimating = 1;
        for (int step = 0; step <= 3; step++) {
            if ((colorAt(rightX + player.xVel, topY - step) != 0x04) &&
                (colorAt(rightX + player.xVel, bottomY - step) != 0x04)) {
                player.worldX += player.xVel;
                player.worldY -= step;
                movedHorizontally = 1;
                break;
            }
        }
    }

    // --- Gravity and Vertical Movement ---
    int grounded = 0;
    player.yVel += GRAVITY;
    if (player.yVel > TERMINAL_VELOCITY) player.yVel = TERMINAL_VELOCITY;

    if (player.yVel < 0) {
        for (int i = 0; i < -player.yVel; i++) {
            topY = player.worldY;
            if (topY > 0 &&
                colorAt(player.worldX, topY - 1) != 0x04 &&
                colorAt(player.worldX + player.width - 1, topY - 1) != 0x04) {
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
                colorAt(player.worldX, bottomY + 1) != 0x04 &&
                colorAt(player.worldX + player.width - 1, bottomY + 1) != 0x04) {
                player.worldY++;
            } else {
                player.yVel = 0;
                grounded = 1;
                break;
            }
        }
    } else {
        // Check grounded if not falling
        bottomY = player.worldY + player.height - 1;
        if (colorAt(player.worldX, bottomY + 1) == 0x04 ||
            colorAt(player.worldX + player.width - 1, bottomY + 1) == 0x04) {
            grounded = 1;
        }
    }

    // --- Jumping ---
    if (BUTTON_PRESSED(BUTTON_UP) && grounded) {
        player.yVel = -12;
        grounded = 0;
    }

    // --- Animation ---
    hikerFrameCounter++;
    if (player.isAnimating && hikerFrameCounter > hikerFrameDelay) {
        hikerFrame = (hikerFrame + 1) % player.numFrames;
        hikerFrameCounter = 0;
    } else if (!player.isAnimating) {
        hikerFrame = 0;
        hikerFrameCounter = 0;
    }

    // --- Camera ---
    *hOff = player.worldX - (SCREENWIDTH / 2 - player.width / 2);
    *vOff = player.worldY - (SCREENHEIGHT / 2 - player.height / 2);
    if (*hOff < 0) *hOff = 0;
    if (*vOff < 0) *vOff = 0;
    if (*hOff > MAPWIDTH - SCREENWIDTH) *hOff = MAPWIDTH - SCREENWIDTH;
    if (*vOff > MAPHEIGHT - SCREENHEIGHT) *vOff = MAPHEIGHT - SCREENHEIGHT;

    // --- Win Condition ---
    if (player.worldX + player.width >= MAPWIDTH - 1) {
        winPhaseOne = 1;
    }
}


/* --- Drawing Routine --- */
void drawPlayer() {
    // If falling, draw the falling sprite and skip collision checks
    if (playerState == PLAYER_FALLING) {
        drawFallingSprite();
        return;
    }
    
    // Four corners for collision detection
    int leftX   = player.worldX;
    int rightX  = player.worldX + player.width - 1;
    int topY    = player.worldY;
    int bottomY = player.worldY + player.height - 1;
    
    // Check collision with rock
    if (colorAt(leftX, topY) == 0x05 ||
        colorAt(rightX, topY) == 0x05 ||
        colorAt(leftX, bottomY) == 0x05 ||
        colorAt(rightX, bottomY) == 0x05) {
        
        if (health.active > 0) {
            health.active--;
            if (health.active == 0) {
                gameOver = 1;
            }
        }
        player.worldX = PLAYER_START_X;
        player.worldY = PLAYER_START_Y;
        player.yVel = 0;
        hOff = 0;
        vOff = 0;
        return;
    }
    
    // Check collision with left crevasse
    if (colorAt(leftX, topY) == 0x06 ||
        colorAt(rightX, topY) == 0x06 ||
        colorAt(leftX, bottomY) == 0x06 ||
        colorAt(rightX, bottomY) == 0x06) {
        
        if (health.active > 0) {
            health.active--;
            if (health.active == 0) {
                gameOver = 1;
            }
            startFallingAnimation(110, 332);  // Start at left crevasse coordinate.
        }
        return;
    }
    
    // Check collision with middle crevasse
    if (colorAt(leftX, topY) == 0x07 ||
        colorAt(rightX, topY) == 0x07 ||
        colorAt(leftX, bottomY) == 0x07 ||
        colorAt(rightX, bottomY) == 0x07) {
        
        if (health.active > 0) {
            health.active--;
            if (health.active == 0) {
                gameOver = 1;
            }
            startFallingAnimation(125, 332);  // Start at middle crevasse coordinate.
        }
        return;
    }
    
    // Check collision with right crevasse
    if (colorAt(leftX, topY) == 0x08 ||
        colorAt(rightX, topY) == 0x08 ||
        colorAt(leftX, bottomY) == 0x08 ||
        colorAt(rightX, bottomY) == 0x08) {
        
        if (health.active > 0) {
            health.active--;
            if (health.active == 0) {
                gameOver = 1;
            }
            startFallingAnimation(183, 332);  // Start at right crevasse coordinate.
        }
        return;
    }
    
    // Normal drawing of player
    int screenX = player.worldX - hOff;
    int screenY = player.worldY - vOff;
    
    shadowOAM[player.oamIndex].attr0 = ATTR0_Y(screenY) | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_TALL;
    if (player.direction == 0) {
        shadowOAM[player.oamIndex].attr1 = ATTR1_X(screenX) | ATTR1_MEDIUM;
    } else {
        shadowOAM[player.oamIndex].attr1 = ATTR1_X(screenX) | ATTR1_MEDIUM | ATTR1_HFLIP;
    }
    
    if (isDucking) {
        shadowOAM[player.oamIndex].attr2 = ATTR2_TILEID(4, 5);
    } else {
        shadowOAM[player.oamIndex].attr2 = ATTR2_TILEID(hikerFrames[hikerFrame], 1);
    }
}

/* --- Utility: Reset Player State --- */
void resetPlayerState() {
    hikerFrameDelay = 4;
    hikerFrameCounter = 0;
    hikerFrame = 0;
    isDucking = 0;
    gameOver = 0;
    sbb = 20;
}

/* --- Falling Animation Functions --- */

// Called to switch the player into FALLING state using the given starting coordinates.
void startFallingAnimation(int startX, int startY) {
    playerState = PLAYER_FALLING;
    fallingX = startX;
    fallingY = startY;
}

// Called each frame while in the FALLING state.
void updateFallingAnimation(void) {
    fallingY += fallSpeed;
    if (fallingY >= FALL_END_Y) {
        resetPlayerAfterFall();
    }
}

// Draw the falling sprite at its current falling coordinates.
void drawFallingSprite(void) {
    shadowOAM[player.oamIndex].attr0 = ATTR0_Y(fallingY) | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_TALL;
    shadowOAM[player.oamIndex].attr1 = ATTR1_X(fallingX) | ATTR1_MEDIUM;
    shadowOAM[player.oamIndex].attr2 = ATTR2_TILEID(hikerFrames[0], 1);
}

// Reset the player's state after the falling animation completes.
void resetPlayerAfterFall(void) {
    player.worldX = PLAYER_START_X;
    player.worldY = PLAYER_START_Y;
    player.yVel = 0;
    hOff = 0;
    vOff = 0;
    playerState = PLAYER_NORMAL;
}

/* --- Utility Function: Get Color at x,y --- */
inline unsigned char colorAt(int x, int y) {
    return ((unsigned char*) bgOneFrontCMBitmap)[OFFSET(x, y, MAPWIDTH)];
}
