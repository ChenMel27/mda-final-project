#include "hiker.h"
#include "gba.h"
#include "mode0.h"
#include "bgThreeFrontCM.h"
#include "sprites.h"
#include "phaseThree.h"
#include "player.h"
#include "health.h"

// Animation variables
extern int hikerFrameDelay;
extern int hikerFrameCounter;
extern int hikerFrame;
extern int hikerFrames[4];
extern int hOff, vOff;
extern int isDucking;
extern int gameOver;
int winPhaseThree = 0;
extern SPRITE player;
extern SPRITE health;
volatile int secondsElapsed = 0;
static int slowModeActive = 0;


void initPlayerThree() {
    resetPlayerState();
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
    
    // Load the sprite palette and tiles.
    DMANow(3, (void*) playerPal, SPRITE_PAL, playerPalLen / 2);
    DMANow(3, (void*) playerTiles, &CHARBLOCK[4], playerTilesLen / 2);
    
    // Copy the original palette into the working copy.
    for (int i = 0; i < 256; i++) {
        playerPaletteWork[i] = playerPal[i];
    }
}

#define SLOW_DELAY 4  // Only update movement every 4 frames when in slow mode

void updatePlayerThree(int* hOff, int* vOff) {
    static int slowCounter = 0;
    player.isAnimating = 0;

    // Collision bounds
    int leftX = player.worldX;
    int rightX = player.worldX + player.width - 1;
    int topY = player.worldY;
    int bottomY = player.worldY + player.height - 1;

    // --- Slow mode check ---
    slowModeActive = colorAtThree(leftX, topY) == 0x02 ||
                     colorAtThree(rightX, topY) == 0x02 ||
                     colorAtThree(leftX, bottomY) == 0x02 ||
                     colorAtThree(rightX, bottomY) == 0x02;

    // Gate movement updates if in slow mode
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

    // --- Horizontal Movement ---
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

    // --- Gravity and Vertical Movement ---
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

    // --- Jumping (only allowed if not slow mode and grounded) ---
    if (!slowModeActive && BUTTON_PRESSED(BUTTON_UP) && grounded) {
        player.yVel = -12;
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
        winPhaseThree = 1;
    }
}



void drawPlayerThree() {
    // Four corners of the player
    int leftX   = player.worldX;
    int rightX  = player.worldX + player.width - 1;
    int topY    = player.worldY;
    int bottomY = player.worldY + player.height - 1;
    int screenX = player.worldX - hOff;
    int screenY = player.worldY - vOff;
    

    shadowOAM[player.oamIndex].attr0 = ATTR0_Y(screenY) | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_TALL;
    if (player.direction == 0) {
        shadowOAM[player.oamIndex].attr1 = ATTR1_X(screenX) | ATTR1_MEDIUM;
    } else if (player.direction == 1) {
        shadowOAM[player.oamIndex].attr1 = ATTR1_X(screenX) | ATTR1_MEDIUM | ATTR1_HFLIP;
    }
        
    // If ducking use the duck tile otherwise animate and use the regular animated frame
    if (isDucking) {
        shadowOAM[player.oamIndex].attr2 = ATTR2_TILEID(4, 5);
    } else {
        shadowOAM[player.oamIndex].attr2 = ATTR2_TILEID(hikerFrames[hikerFrame], 5);
    }
    }



inline unsigned char colorAtThree(int x, int y) {
    return ((unsigned char*) bgThreeFrontCMBitmap)[OFFSET(x, y, MAPWIDTH)];
}

void initCountdownTimer(void)
{
    // Stop timers first (if running)
    REG_TM2CNT = 0;
    REG_TM3CNT = 0;

    // Set Timer2's data register so it will overflow in about 1 second.
    REG_TM2D = -0x4000;              // Preload value: -16384
    REG_TM2CNT = TM_FREQ_1024 | TIMER_ON;  // Use FREQ_1024 and start timer 2.

    // Set Timer3 to cascade mode so it increments when Timer2 overflows.
    REG_TM3D = 0;                   // Start at 0 seconds.
    REG_TM3CNT = TIMER_ON | TM_CASCADE;  // Timer3 counts Timer2's overflows.
}

//--------------------------------------------------------------------------
// drawTimer() - Draws the countdown timer on the screen.
// The timer counts down from 30 seconds. It uses two 16x16 sprite OAM entries,
// for example, indices 50 (tens) and 51 (ones). The digit images come from
// a tilesheet where 0 is at (0,30), 1 is at (2,30), …, 9 is at (18,30).
//--------------------------------------------------------------------------
void drawTimer(void)
{
    // Read the seconds elapsed from Timer3 (1 Hz)
    int secondsPassed = REG_TM3D;
    int countdown = 20 - secondsPassed;
    if (countdown == 0) {
        gameOver = 1;
    }
    if (countdown < 0)
        countdown = 0;  // Clamp at 0
    
    // Split into tens and ones digits.
    int tens = countdown / 10;
    int ones = countdown % 10;
    
    // Set up where on the screen you want to draw the timer.
    // For example, draw at screen coordinates (x = 220, y = 10).
    int timerX = 180;
    int timerY = 10;
    
    // --- Set up the tens digit sprite (using shadowOAM entry 50) ---
    shadowOAM[50].attr0 = ATTR0_Y(timerY) | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[50].attr1 = ATTR1_X(timerX) | ATTR1_SMALL;
    // The tile for a digit is determined using the provided mapping:
    // For digit d: tile comes from (d * 2, 30)
    shadowOAM[50].attr2 = ATTR2_TILEID(tens * 2, 30);
    
    // --- Set up the ones digit sprite (using shadowOAM entry 51) ---
    shadowOAM[51].attr0 = ATTR0_Y(timerY) | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[51].attr1 = ATTR1_X(timerX + 16) | ATTR1_SMALL;  // 16 pixels to the right.
    shadowOAM[51].attr2 = ATTR2_TILEID(ones * 2, 30);
}

void updatePlayerPalette(void)
{
    // Get the seconds passed from Timer3 (assuming a 1 Hz tick)
    int secondsPassed = REG_TM3D;
    // Countdown from 20 seconds (adjust if needed)
    int oxygenCountdown = 20 - secondsPassed;
    if (oxygenCountdown < 0)
        oxygenCountdown = 0;
    
    // Compute a factor that is 1.0 when oxygen is full and 0.0 when oxygen is gone.
    // For a 20-second countdown: factor = 1.0 (full oxygen) when oxygenCountdown==20,
    // and factor = 0.0 (no oxygen) when oxygenCountdown==0.
    float factor = oxygenCountdown / 20.0f;
    
    // Update only palette indices 3 to 13 (inclusive)
    // That is 11 entries.

    unsigned short orig = playerPal[1];
    // Extract the original RGB components (each 0 .. 31)
    int r = orig & 0x1F;
    int g = (orig >> 5) & 0x1F;
    int b = (orig >> 10) & 0x1F;
        
    // Scale red and green by the factor.
    int newR = (int)(r * factor);
    int newG = (int)(g * factor);
    // For blue, blend toward maximum (31) as oxygen depletes.
    int newB = (int)(b * factor + 31 * (1.0f - factor));
        
    // Clamp, if needed (though factor math should keep it in range)
    if (newR > 31) newR = 31;
    if (newG > 31) newG = 31;
    if (newB > 31) newB = 31;
        
    // Repack the components into a 15-bit RGB color (RGB555).
    unsigned short newColor = (newB << 10) | (newG << 5) | newR;
    playerPaletteWork[1] = newColor;
    
    
    // Update only the portion of the sprite palette corresponding to entries 3..13.
    // If each palette entry is a halfword (2 bytes) and you want 11 entries:
    DMANow(3, &playerPaletteWork[1], &SPRITE_PAL[1], 1);
}

