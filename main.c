/******************************************************************************
Author:     Melanie Chen  
Project:    The Summit Ascent – CS 2261 Final  
File:       main.c  
Date:       [Insert Date Here]  
******************************************************************************/

/*
          _____                      _ _     _                 
         / ____|                    (_) |   | |                
        | (___   ___  ___ _   _ _ __ _| |__ | |_ ___ _ __ ___  
         \___ \ / _ \/ __| | | | '__| | '_ \| __/ _ \ '_ ` _ \ 
         ____) |  __/ (__| |_| | |  | | | | | ||  __/ | | | | |
        |_____/ \___|\___|\__,_|_|  |_|_| |_|\__\___|_| |_| |_|   

    Welcome to Summit Ascent!
    Begin your journey at the base of Mount Rainier and climb through three
    treacherous phases to reach the summit before your stamina runs out.

    - Start in town, gather tips and gear
    - Progress through side-scrolling phases with hazards
    - Use stamina wisely and survive the climb

    Controls:
        ← →   Move
        ↑ ↓   Climb / Jump / Duck
        A     Jump / Grip
        B     Drop / Crouch
        START Pause / Advance dialogue

    Game States:
        SPLASH → START → DIALOGUE → PHASE ONE → PHASE TWO → PHASE THREE → WIN/LOSE

    Known Bugs:
        • Minor sprite flicker on transitions
        • Occasional tile clipping during side-scroll
        • ShadowOAM sometimes updates 1 frame late
*/

// ============================= [ SYSTEM INCLUDES ] =============================

#include "gba.h"
#include "mode0.h"
#include "mode4.h"

// ============================= [ GRAPHICS ASSETS ] =============================

#include "bgOneFront.h"
#include "bgOneBack.h"
#include "bgOneCM.h"
#include "tilesetOne.h"
#include "phaseOne.h"
#include "startInstructions.h"
#include "start.h"
#include "splashScreen.h"
#include "snowtiles.h"
#include "townCM.h"
#include "town.h"
#include "foreground.h"
#include "topdownrpg.h"
#include "sTM.h"
#include "sTS.h"
// ============================= [ FUNCTION DECLARATIONS ] =======================

void initialize();
void goToSplashScreen();
void splashScreen();
void goToStart();
void start();
void goToStartInstructions();
void goToPhaseOne();
void phaseOne();
void goToPhaseTwo();
void phaseTwo();
void goToPhaseThree();
void phaseThree();
void goToPause();
void pause();
void goToLose();
void lose();

// ============================= [ GLOBAL VARIABLES ] ============================

extern SPRITE guide;

unsigned short buttons;
unsigned short oldButtons;

typedef enum {
    SPLASH,
    START,
    DIALOGUE,
    PHASEONE,
    PHASETWO,
    PHASETHREE,
    PAUSE,
    LOSE
} GameState;

GameState state;
int hOff = 0;
int vOff = 0;

// ============================= [ GAME ENTRY POINT ] ============================

int main() {
    initialize();

    while (1) {
        oldButtons = buttons;
        buttons = REG_BUTTONS;

        switch (state) {
            case SPLASH:
                splashScreen();
                break;
            case START:
                start();
                break;
            case DIALOGUE:
                startInstructions();
                break;
            case PHASEONE:
                phaseOne();
                break;
            case PHASETWO:
                phaseTwo();
                break;
            case PHASETHREE:
                phaseThree();
                break;
            case PAUSE:
                pause();
                break;
            case LOSE:
                lose();
                break;
        }

        waitForVBlank();
    }
}

// ============================= [ SYSTEM INIT STATE ] ===========================

void initialize() {
    mgba_open();
    goToStart();
}

void goToSplashScreen() {
    REG_DISPCTL = MODE(4) | BG_ENABLE(2);
    DMANow(3, (volatile void*)splashScreenPal, BG_PALETTE, 256 | DMA_ON);
    drawFullscreenImage4(splashScreenBitmap);
    state = SPLASH;
}

void splashScreen() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
        state = START;
    }
}

// ============================= [ START PHASE STATE ] ===========================

void goToStart() {
    REG_DISPCTL = MODE(0) | BG_ENABLE(1) | SPRITE_ENABLE;
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(18) | BG_SIZE_LARGE | BG_4BPP;

    DMANow(3, sTSPal, BG_PALETTE, sTSPalLen / 2);
    DMANow(3, sTSTiles, &CHARBLOCK[0], sTSTilesLen / 2);
    DMANow(3, sTMMap, &SCREENBLOCK[18], sTMLen / 2);

    initStartPlayer();
    initGuideSprite();

    hOff = 0;
    vOff = MAX_VOFF;
    state = START;
}

void start() {
    updateStartPlayer(&hOff, &vOff);
    REG_BG1HOFF = hOff;
    REG_BG1VOFF = vOff;

    drawStartPlayer();
    drawGuideSprite();
    DMANow(3, shadowOAM, OAM, 512);

    if (checkPlayerGuideCollision()) {
        goToStartInstructions();
    }
}

// ============================= [ DIALOGUE STATE ] =============================

void goToStartInstructions() {
    REG_DISPCTL = MODE(4) | BG_ENABLE(2) | DISP_BACKBUFFER;
    startPage = 0;
    state = DIALOGUE;
}

void startInstructions() {
    drawStartInstructionsDialouge();
    if (begin) {
        goToPhaseOne();
    }
}

// ============================= [ PHASE ONE STATE ] ============================

#define BG_PRIORITY(n) ((n) & 3)

void goToPhaseOne() {
    REG_DISPCTL = 0;  // Clear all display settings before changing mode

    // Enable both BG0 and BG1
    REG_DISPCTL = MODE(0) | BG_ENABLE(0) | BG_ENABLE(1) | SPRITE_ENABLE;

    // Configure BG0 (main layer)
    REG_BG0CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(28) | BG_SIZE_WIDE | BG_PRIORITY(0) | BG_8BPP;
    // Configure BG1 (parallax background) – note: same tileset, different screen block
    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(30) | BG_SIZE_WIDE | BG_PRIORITY(1) | BG_8BPP;

    DMANow(3, foregroundPal, BG_PALETTE, foregroundPalLen / 2);
    DMANow(3, foregroundTiles, &CHARBLOCK[1], foregroundTilesLen / 2);
    
    // Load BG0’s map and BG1’s map (bgOneFront)
    DMANow(3, bgOneFrontMap, &SCREENBLOCK[28], bgOneFrontLen / 2);
    DMANow(3, bgOneBackMap, &SCREENBLOCK[30], bgOneBackLen / 2);
    
    initPlayer();
    hOff = 0;
    vOff = MAX_VOFF;
    state = PHASEONE;
}


void phaseOne() {
    updatePlayer(&hOff, &vOff);
    // Main background scrolls normally:
    REG_BG0HOFF = hOff;
    REG_BG0VOFF = vOff;
    // Parallax background scrolls slower (adjust the divisor as desired):
    REG_BG1HOFF = hOff / 2;
    REG_BG1VOFF = vOff / 2;
    
    shadowOAM[guide.oamIndex].attr0 = ATTR0_HIDE;
    drawPlayer();
    DMANow(3, shadowOAM, OAM, 512);
    
    if (gameOver) {
        goToLose();
    }
    if (winPhaseOne) {
        goToPhaseTwo();
    }
}


// ============================= [ PHASE TWO STATE ] ============================

void goToPhaseTwo() {
    REG_DISPCTL = MODE(0) | BG_ENABLE(0) | SPRITE_ENABLE;
    REG_BG0CNT = BG_CHARBLOCK(2) | BG_SCREENBLOCK(24) | BG_SIZE_WIDE;

    DMANow(3, tilesetOnePal, BG_PALETTE, tilesetOnePalLen / 2);
    DMANow(3, tilesetOneTiles, &CHARBLOCK[2], tilesetOneTilesLen / 2);
    DMANow(3, bgOneFrontMap, &SCREENBLOCK[24], 2048);

    initPlayer();
    hOff = 0;
    vOff = MAX_VOFF;
    state = PHASETWO;
}

void phaseTwo() {
    updatePlayer(&hOff, &vOff);
    REG_BG0HOFF = hOff;
    REG_BG0VOFF = vOff;
    shadowOAM[guide.oamIndex].attr0 = ATTR0_HIDE;
    drawPlayer();
    DMANow(3, shadowOAM, OAM, 512);
}

// ============================= [ PHASE THREE STATE ] ==========================

void goToPhaseThree() {
    REG_DISPCTL = MODE(0) | BG_ENABLE(0) | SPRITE_ENABLE;
    REG_BG0CNT = BG_CHARBLOCK(3) | BG_SCREENBLOCK(26) | BG_SIZE_WIDE;

    DMANow(3, tilesetOnePal, BG_PALETTE, tilesetOnePalLen / 2);
    DMANow(3, tilesetOneTiles, &CHARBLOCK[3], tilesetOneTilesLen / 2);
    DMANow(3, bgOneFrontMap, &SCREENBLOCK[26], 2048);

    initPlayer();
    hOff = 0;
    vOff = MAX_VOFF;
    state = PHASETHREE;
}

void phaseThree() {
    updatePlayer(&hOff, &vOff);
    REG_BG0HOFF = hOff;
    REG_BG0VOFF = vOff;
    shadowOAM[guide.oamIndex].attr0 = ATTR0_HIDE;
    drawPlayer();
    DMANow(3, shadowOAM, OAM, 512);
}

// ============================= [ PAUSE STATE ] ================================

void goToPause() {
    state = PAUSE;
}

void pause() {
    REG_DISPCTL = MODE(4) | BG_ENABLE(2);
    fillScreen4(0);

    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
        state = START;
    }
}

// ============================= [ LOSE STATE ] =================================

void goToLose() {
    state = LOSE;
}

void lose() {
    REG_DISPCTL = 0;
    REG_DISPCTL = MODE(4) | BG_ENABLE(2);
    fillScreen4(0);

    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
        state = START;
    }
}
