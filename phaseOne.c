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

// y val where the falling animation ends
#define FALL_END_Y 400
int fallingX;
int fallingY;
const int fallSpeed = 3;
extern int cheatOn;
int playerSubPixelX = 0;

// global var
int hikerFrameDelay = 4;
int hikerFrameCounter = 0;
int hikerFrame = 0;
int hikerFrames[] = {24, 26, 28, 20, 22};
int hikerFramesCheat[] = {13, 14, 15};
extern int hOff, vOff;
int isDucking = 0;
int gameOver = 0;
int winPhaseOne = 0;
int movedHorizontally = 0;

// sprites
SPRITE player;
extern SPRITE health;


typedef enum {
    PLAYER_NORMAL,
    PLAYER_FALLING
} PlayerState;
PlayerState playerState = PLAYER_NORMAL;

// Function Prototypes
void startFallingAnimation(int startX, int startY);
void updateFallingAnimation(void);
void drawFallingSprite(void);
void resetPlayerAfterFall(void);

inline unsigned char colorAt(int x, int y);

// Initialization 
void initPlayer() {
    player.worldX = PLAYER1_START_X;
    player.worldY = PLAYER1_START_Y;
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
    player.xVel = cheatOn ? (12) : (8);
    playerSubPixelX = PLAYER1_START_X << 3;
    player.yVel = 0;
    DMANow(3, (void*) playerPal, SPRITE_PAL, playerPalLen / 2);
    DMANow(3, (void*) playerTiles, &CHARBLOCK[4], playerTilesLen / 2);
}

// Update
void updatePlayer(int* hOff, int* vOff) {
    // If falling, only update falling animation
    if (playerState == PLAYER_FALLING) {
        updateFallingAnimation();
        return;
    }

    static int colorCycleTimer = 0;
    if (cheatOn && (++colorCycleTimer % 4 == 0)) {
        cyclePaletteColors();
    }

    

    // reset animation
    player.isAnimating = 0;

    // ducking check
    isDucking = BUTTON_HELD(BUTTON_DOWN);

    if (cheatOn) {
        player.height = 16;
        player.width = 6;
        player.numFrames = 3;
    }
    
    // Horizontal
    int leftX = player.worldX;
    int rightX = player.worldX + player.width - 1;
    int topY = player.worldY;
    int bottomY = player.worldY + player.height - 1;

    // Use fixed-point velocity: 1.5x speed if cheatOn (12) else normal (8)
    int xVel = cheatOn ? 12 : 8;

    if (BUTTON_HELD(BUTTON_LEFT) && player.worldX > 0) {
        player.direction = 1;
        player.isAnimating = 1;

        playerSubPixelX -= xVel;
        player.worldX = playerSubPixelX >> 3;

        for (int step = 0; step <= 3; step++) {
            if ((colorAt(player.worldX, topY - step) != 0x04) &&
                (colorAt(player.worldX, bottomY - step) != 0x04)) {
                player.worldY -= (step > 0 ? step - 1 : 0);
                movedHorizontally = 1;
                break;
            }
        }
    }

    if (BUTTON_HELD(BUTTON_RIGHT) && player.worldX < MAPWIDTH1 - player.width) {
        player.direction = 0;
        player.isAnimating = 1;

        playerSubPixelX += xVel;
        player.worldX = playerSubPixelX >> 3;

        for (int step = 0; step <= 3; step++) {
            if ((colorAt(player.worldX + player.width - 1, topY - step) != 0x04) &&
                (colorAt(player.worldX + player.width - 1, bottomY - step) != 0x04)) {
                player.worldY -= step;
                movedHorizontally = 1;
                break;
            }
        }
    }

    

    // Gravity + vertical movement for jumping
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
            if (bottomY + 1 < MAPHEIGHT1 &&
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

    // Jumping (12 px)
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

    // Setting up the camera
    *hOff = player.worldX - (SCREENWIDTH / 2 - player.width / 2);
    *vOff = player.worldY - (SCREENHEIGHT / 2 - player.height / 2);
    if (*hOff < 0) *hOff = 0;
    if (*vOff < 0) *vOff = 0;
    if (*hOff > MAPWIDTH1 - SCREENWIDTH) *hOff = MAPWIDTH1 - SCREENWIDTH;
    if (*vOff > MAPHEIGHT1 - SCREENHEIGHT) *vOff = MAPHEIGHT1 - SCREENHEIGHT;

    // Winning conidition 
    if (player.worldX + player.width >= MAPWIDTH1 - 1) {
        winPhaseOne = 1;
    }
}

// Draw
void drawPlayer() {
    // If falling, draw the falling sprite (ie skip collision checking)
    if (playerState == PLAYER_FALLING) {
        drawFallingSprite();
        return;
    }
    
    // Four corners
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

    player.worldX = PLAYER1_START_X;
    player.worldY = PLAYER1_START_Y;
    playerSubPixelX = PLAYER1_START_X << 3; // ✅ FIX
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
            // Start at left crevasse coordinate
            if (cheatOn) {
                startFallingAnimation(114, 332);
            } else {
                startFallingAnimation(110, 332);
            }
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
            // Start at middle crevasse coordinate
            if (cheatOn) {
                startFallingAnimation(129, 332);
            } else {
                startFallingAnimation(125, 332);
            }
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
            // Start at right crevasse coordinate
            if (cheatOn) {
                startFallingAnimation(187, 332);
            } else {
                startFallingAnimation(183, 332);
            }
        }
        return;
    }
    
    // Regular draw player
    int screenX = player.worldX - hOff;
    int screenY = player.worldY - vOff;
    
    if (cheatOn) {
        shadowOAM[player.oamIndex].attr0 = ATTR0_Y(screenY) | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_TALL;
        if (player.direction == 0) {
            shadowOAM[player.oamIndex].attr1 = ATTR1_X(screenX) | ATTR1_SMALL;
        } else {
            shadowOAM[player.oamIndex].attr1 = ATTR1_X(screenX) | ATTR1_SMALL | ATTR1_HFLIP;
        }
        // If ducking, then change tile
        if (isDucking) {
            shadowOAM[player.oamIndex].attr2 = ATTR2_TILEID(19, 15);
        } else {
            shadowOAM[player.oamIndex].attr2 = ATTR2_TILEID(hikerFramesCheat[hikerFrame], 14);
        }
    } else {
        shadowOAM[player.oamIndex].attr0 = ATTR0_Y(screenY) | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_TALL;
        if (player.direction == 0) {
            shadowOAM[player.oamIndex].attr1 = ATTR1_X(screenX) | ATTR1_MEDIUM;
        } else {
            shadowOAM[player.oamIndex].attr1 = ATTR1_X(screenX) | ATTR1_MEDIUM | ATTR1_HFLIP;
        }
        // If ducking, then change tile
        if (isDucking) {
            shadowOAM[player.oamIndex].attr2 = ATTR2_TILEID(4, 5);
        } else {
            shadowOAM[player.oamIndex].attr2 = ATTR2_TILEID(hikerFrames[hikerFrame], 1);
        }
    }
}

// Reset player state
void resetPlayerState() {
    hikerFrameDelay = 4;
    hikerFrameCounter = 0;
    hikerFrame = 0;
    isDucking = 0;
    gameOver = 0;
    playerSubPixelX = PLAYER1_START_X << 3;
}

/* ===================== Falling Animation ===================== */

// Go to falling state with given starting coordinates of crevasse (left, middle, right)
void startFallingAnimation(int startX, int startY) {
    playerState = PLAYER_FALLING;
    fallingX = startX;
    fallingY = startY;
}

// Each frame while falling
void updateFallingAnimation(void) {
    fallingY += fallSpeed;
    if (fallingY >= FALL_END_Y) {
        resetPlayerAfterFall();
    }
}

// Draw the falling sprite at curr fall coordinates
void drawFallingSprite(void) {
    if (cheatOn) {
        shadowOAM[player.oamIndex].attr0 = ATTR0_Y(fallingY) | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_TALL;
        shadowOAM[player.oamIndex].attr1 = ATTR1_X(fallingX) | ATTR1_SMALL;
        shadowOAM[player.oamIndex].attr2 = ATTR2_TILEID(hikerFramesCheat[0], 14);
    } else {
        shadowOAM[player.oamIndex].attr0 = ATTR0_Y(fallingY) | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_TALL;
        shadowOAM[player.oamIndex].attr1 = ATTR1_X(fallingX) | ATTR1_MEDIUM;
        shadowOAM[player.oamIndex].attr2 = ATTR2_TILEID(hikerFrames[0], 1);
    }
}

// Reset the player's state after fall animation
void resetPlayerAfterFall(void) {
    player.worldX = PLAYER1_START_X;
    player.worldY = PLAYER1_START_Y;
    player.yVel = 0;
    hOff = 0;
    vOff = 0;
    playerSubPixelX = PLAYER1_START_X << 3;
    playerState = PLAYER_NORMAL;
}

// Get color at function for phase one
inline unsigned char colorAt(int x, int y) {
    return ((unsigned char*) bgOneFrontCMBitmap)[OFFSET(x, y, MAPWIDTH1)];
}

void cyclePaletteColors() {
    int r = (rand() & 31);         // 0–31
    int g = (rand() >> 2) & 31;    // 0–31
    int b = (rand() >> 4) & 31;    // 0–31
    SPRITE_PAL[3] = (b << 10) | (g << 5) | r;
}
