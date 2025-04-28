#include "hiker.h"
#include "gba.h"
#include "mode0.h"
#include "bgThreeFrontCM.h"
#include "sprites.h"
#include "phaseThree.h"
#include "player.h"
#include "health.h"

// Update movement every 4 frames when in slow mode (on top of snow)
#define SLOW_DELAY 4

// Animation variables
extern int hikerFrameDelay;
extern int hikerFrameCounter;
extern int hikerFrame;
extern int hikerFrames[4];
extern int hOff, vOff;
extern int isDucking;
extern int gameOver;
int leftWallTouched = 0;
int winPhaseThree = 0;
extern SPRITE player;
extern SPRITE health;
volatile int secondsElapsed = 0;
static int slowModeActive = 0;
static int timerPaused = 0;



void initPlayerThree() {
    player.worldX = 20;
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
    
    // Load sprite pal + tiles
    DMANow(3, (void*) playerPal, SPRITE_PAL, playerPalLen / 2);
    DMANow(3, (void*) playerTiles, &CHARBLOCK[4], playerTilesLen / 2);
    
    // iterate thro the og palette and make a copy to temp var
    for (int i = 0; i < 256; i++) {
        playerPaletteWork[i] = playerPal[i];
    }
}

void updatePlayerThree(int* hOff, int* vOff) {
    static int slowCounter = 0;
    player.isAnimating = 0;

    // Collision corner
    int leftX = player.worldX;
    int rightX = player.worldX + player.width - 1;
    int topY = player.worldY;
    int bottomY = player.worldY + player.height - 1;

    // Check if colliding with palette index 3 and pause timer
    if (colorAtThree(leftX, topY) == 0x03 || colorAtThree(rightX, topY) == 0x03 ||
    colorAtThree(leftX, bottomY) == 0x03 || colorAtThree(rightX, bottomY) == 0x03) {
        if (!timerPaused) {
            REG_TM2CNT &= ~TIMER_ON; // Turn off timer 2 (which drives timer 3)
            timerPaused = 1;
        }
    }

    if (colorAtThree(leftX, topY) == 0x04 || colorAtThree(rightX, topY) == 0x04 ||
    colorAtThree(leftX, bottomY) == 0x04 || colorAtThree(rightX, bottomY) == 0x04) {
        leftWallTouched = 1;
    }


    // On top of snow checking
    slowModeActive = colorAtThree(leftX, topY) == 0x02 || colorAtThree(rightX, topY) == 0x02 || colorAtThree(leftX, bottomY) == 0x02 || colorAtThree(rightX, bottomY) == 0x02;

    // Go slow update if in slow mode
    int updateMovement = 1;
    if (slowModeActive) {
        slowCounter++;
        if (slowCounter < SLOW_DELAY) {
            updateMovement = 0;
        } else {
            updateMovement = 1;
            slowCounter = 0;
        }
    } else {
        slowCounter = 0;
    }

    // Ducking state
    isDucking = BUTTON_HELD(BUTTON_DOWN);

    // Horizontal
    if (updateMovement) {
        if (BUTTON_HELD(BUTTON_LEFT) && player.worldX > 0) {
            player.isAnimating = 1;
            player.direction = 1;
            for (int step = 0; step <= 3; step++) {
                if ((colorAtThree(leftX - player.xVel, topY - step) != 0x01) &&
                    (colorAtThree(leftX - player.xVel, bottomY - step) != 0x01)) {
                    player.worldX -= player.xVel;
                    player.worldY -= (step > 0) ? (step - 1) : 0;
                    break;
                }
            }
        }

        if (BUTTON_HELD(BUTTON_RIGHT) && player.worldX < MAPWIDTH - player.width) {
            player.isAnimating = 1;
            player.direction = 0;
            for (int step = 0; step <= 3; step++) {
                if ((colorAtThree(rightX + player.xVel, topY - step) != 0x01) &&
                    (colorAtThree(rightX + player.xVel, bottomY - step) != 0x01)) {
                    player.worldX += player.xVel;
                    player.worldY -= step;
                    break;
                }
            }
        }
    }

    // Gravity + vert
    int grounded = 0;

    player.yVel += GRAVITY;
    if (player.yVel > TERMINAL_VELOCITY) player.yVel = TERMINAL_VELOCITY;

    if (updateMovement) {
        if (player.yVel < 0) {
            for (int i = 0; i < -player.yVel; i++) {
                if (player.worldY > 0 &&
                    colorAtThree(leftX, player.worldY - 1) != 0x01 &&
                    colorAtThree(rightX, player.worldY - 1) != 0x01) {
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
                    colorAtThree(leftX, bottomY + 1) != 0x01 &&
                    colorAtThree(rightX, bottomY + 1) != 0x01) {
                    player.worldY++;
                } else {
                    player.yVel = 0;
                    grounded = 1;
                    break;
                }
            }
        } else {
            bottomY = player.worldY + player.height - 1;
            if (colorAtThree(leftX, bottomY + 1) == 0x01 || colorAtThree(rightX, bottomY + 1) == 0x01) {
                grounded = 1;
            }
        }
    }

    // Jumping is ONLY allowed if not slow mode and on ground
    if (!slowModeActive && BUTTON_PRESSED(BUTTON_UP) && grounded) {
        player.yVel = -12;
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

    // CAm
    *hOff = player.worldX - (SCREENWIDTH / 2 - player.width / 2);
    *vOff = player.worldY - (SCREENHEIGHT / 2 - player.height / 2);
    if (*hOff < 0) *hOff = 0;
    if (*vOff < 0) *vOff = 0;
    if (*hOff > MAPWIDTH - SCREENWIDTH) *hOff = MAPWIDTH - SCREENWIDTH;
    if (*vOff > MAPHEIGHT - SCREENHEIGHT) *vOff = MAPHEIGHT - SCREENHEIGHT;

    // WIn
    if (player.worldX + player.width >= MAPWIDTH - 1) {
        winPhaseThree = 1;
    }
}



void drawPlayerThree() {
    int screenX = player.worldX - hOff;
    int screenY = player.worldY - vOff;
    

    shadowOAM[player.oamIndex].attr0 = ATTR0_Y(screenY) | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_TALL;
    if (player.direction == 0) {
        shadowOAM[player.oamIndex].attr1 = ATTR1_X(screenX) | ATTR1_MEDIUM;
    } else if (player.direction == 1) {
        shadowOAM[player.oamIndex].attr1 = ATTR1_X(screenX) | ATTR1_MEDIUM | ATTR1_HFLIP;
    }
    shadowOAM[player.oamIndex].attr2 = ATTR2_TILEID(hikerFrames[hikerFrame], 5);

}

inline unsigned char colorAtThree(int x, int y) {
    return ((unsigned char*) bgThreeFrontCMBitmap)[OFFSET(x, y, MAPWIDTH)];
}


// ============================= [TIMER LOGIC] ===============================
void initCountdownTimer(void)
{
    // Stop timers or clear if running
    REG_TM2CNT = 0;
    REG_TM3CNT = 0;

    // Set up timer 2 and 3
    REG_TM2D = -0x4000;
    REG_TM2CNT = TM_FREQ_1024 | TIMER_ON;

    // Set timer 3 to cascade mode so it increments when timer 2 overflows.
    // Start at 0
    REG_TM3D = 0;
    REG_TM3CNT = TIMER_ON | TM_CASCADE;
}

// Draw the countdown timer from 20 seconds
void drawTimer(void)
{
    // seconds passed from time 3
    int secondsPassed = REG_TM3D;
    int countdown = 20 - secondsPassed;
    if (countdown == 0) {
        gameOver = 1;
    }

    // stop at 0
    if (countdown < 0) {
        countdown = 0;
    } 

    // tens and ones digits
    int tens = countdown / 10;
    int ones = countdown % 10;
    
    // Top right
    int timerX = 180;
    int timerY = 10;
    
    // Tens digit sprite
    shadowOAM[50].attr0 = ATTR0_Y(timerY) | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[50].attr1 = ATTR1_X(timerX) | ATTR1_SMALL;
    shadowOAM[50].attr2 = ATTR2_TILEID(tens * 2, 30);
    
    // Ones digit sprite
    shadowOAM[51].attr0 = ATTR0_Y(timerY) | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[51].attr1 = ATTR1_X(timerX + 16) | ATTR1_SMALL;  // 16 pixels to the right.
    shadowOAM[51].attr2 = ATTR2_TILEID(ones * 2, 30);
}

void updatePlayerPalette(void)
{
    // Seconds passed
    int secondsPassed = REG_TM3D;
    int oxygenCountdown = 20 - secondsPassed;
    if (oxygenCountdown < 0)
        oxygenCountdown = 0;
    
    // factor that is 1.0 when oxygen is full and 0.0 when oxygen is gone.
    // 1.0 full oxygen <-> oxygenCountdown==20
    // 0.0 no oxygen <-> oxygenCountdown==0
    float factor = oxygenCountdown / 20.0f;
    
    // Update pal 3-13

    unsigned short orig = playerPal[1];

    // RGB
    int r = orig & 0x1F;
    int g = (orig >> 5) & 0x1F;
    int b = (orig >> 10) & 0x1F;
        
    // Scale R and G
    int newR = (int)(r * factor);
    int newG = (int)(g * factor);
    // B toward (31) as oxygen depletes.
    int newB = (int)(b * factor + 31 * (1.0f - factor));

    if (newR > 31) newR = 31;
    if (newG > 31) newG = 31;
    if (newB > 31) newB = 31;
        
    // Repack RGB
    unsigned short newColor = (newB << 10) | (newG << 5) | newR;
    playerPaletteWork[1] = newColor;
    
    // Updatesprite palette from  3 to 13
    DMANow(3, &playerPaletteWork[1], &SPRITE_PAL[1], 1);
}

