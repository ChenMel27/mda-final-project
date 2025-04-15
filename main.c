/******************************************************************************
File:       main.c 
Project:    The Summit Ascent 
******************************************************************************/

/*
    Welcome to Summit Ascent!
    Begin your journey at the base of Mount Rainier and climb through three
    phases to reach the summit before your health runs out.

    - Start in a town and talk to an experienced villager to gather tips
    - Progress through three side-scrolling phases with obstacles

    Controls:
        ← →   Move
        ↑ ↓   Climb / Jump / Duck
        START Pause / Advance dialogue

    Known Bugs:
        • Sprite flicker on state transitions between modes
        • Pause isn't working
*/

// ============================= [ INCLUDES ] =============================

#include "gba.h"
#include "mode0.h"
#include "mode4.h"
#include "bgOneFront.h"
#include "bgOneBack.h"
#include "bgTwoFront.h"
#include "bgTwoBack.h"
#include "bgOneCM.h"
#include "tilesetOne.h"
#include "phaseOne.h"
#include "phaseTwo.h"
#include "phaseThree.h"
#include "start.h"
#include "splashScreen.h"
#include "snowtiles.h"
#include "townCM.h"
#include "town.h"
#include "foreground.h"
#include "topdownrpg.h"
#include "sTM.h"
#include "sTS.h"
#include "dayTM.h"
#include "health.h"
#include "bgThreeFront.h"
#include "dialogueFont.h"
#include "diaOne.h"
#include "diaTwo.h"
#include "diaThree.h"
#include "diaFour.h"
#include "diaFive.h"
#include "diaSix.h"
#include "diaSeven.h"
#include "diaEight.h"
#include "duskTM.h"
#define BG_PRIORITY(n) ((n) & 3)

// ============================= [ FUNCTION PROTOTYPES ] =======================

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
void goToWin();
void win();

// ============================= [ VARIABLES ] ============================

extern SPRITE guide;
extern SPRITE startPlayer;
unsigned short buttons;
unsigned short oldButtons;

typedef enum {
    SPLASH,
    START,
    DIALOGUE,
    PHASEONE,
    DIALOGUE2,
    PHASETWO,
    DIALOGUE3,
    PHASETHREE,
    PAUSE,
    LOSE,
    WIN
} GameState;

GameState state;
int hOff = 0;
int vOff = 0;
int talkedToGuide = 0;
int begin = 0;
int startPage = 0;

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
            case DIALOGUE2:
                phaseTwoInstructions();
                break;
            case PHASETWO:
                phaseTwo();
                break;
            case DIALOGUE3:
                phaseThreeInstructions();
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
            case WIN:
                lose();
                break;
        }

        waitForVBlank();
    }
}

// ============================= [ INITIALIZE GAME ] ===========================

void initialize() {
    mgba_open();
    goToSplashScreen();
}

void goToSplashScreen() {
    REG_DISPCTL = MODE(4) | BG_ENABLE(2);
    videoBuffer = FRONTBUFFER;

    DMANow(3, (volatile void*)splashScreenPal, BG_PALETTE, 256 | DMA_ON);
    drawFullscreenImage4(splashScreenBitmap);
    drawString4(100, 70, "SPLASH", 15);

    // Reset game progress
    gameOver = 0;
    winPhaseOne = 0;
    winPhaseTwo = 0;
    winPhaseThree = 0;
    next = 0;
    begin = 0;
    initHealth();

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
    REG_DISPCTL = 0;
    hideSprites();
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

void goToStartTwo() {
    REG_DISPCTL = MODE(0) | BG_ENABLE(1) | SPRITE_ENABLE;
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(18) | BG_SIZE_LARGE | BG_4BPP;

    DMANow(3, sTSPal, BG_PALETTE, sTSPalLen / 2);
    DMANow(3, sTSTiles, &CHARBLOCK[0], sTSTilesLen / 2);
    DMANow(3, sTMMap, &SCREENBLOCK[18], sTMLen / 2);

    initStartPlayer();
    initGuideSprite();
    startPlayer.worldX = 134;
    startPlayer.worldX = 436;
    next = 0;
    talkedToGuide = 1;
    hOff = 0;
    vOff = MAX_VOFF;
    state = START;
}

void start() {
    updateStartPlayer(&hOff, &vOff);
    updateGuideSprite();
    REG_BG1HOFF = hOff;
    REG_BG1VOFF = vOff;

    drawStartPlayer();
    drawGuideSprite();
    DMANow(3, shadowOAM, OAM, 512);

    if (checkPlayerGuideCollision()) {
        goToStartInstructions();
    }

    if (next == 1 && talkedToGuide) {
        goToPhaseOne();
    }
}

// ============================= [ DIALOGUE STATE ] =============================

void goToStartInstructions() {
    REG_DISPCTL = 0;
    REG_DISPCTL = MODE(0) | BG_ENABLE(0);
    DMANow(3, dialogueFontPal, BG_PALETTE, dialogueFontPalLen / 2);
    DMANow(3, dialogueFontTiles, &CHARBLOCK[1], dialogueFontTilesLen / 2);
    // BG0 = dialogue overlay
    REG_BG0CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(20) | BG_SIZE_SMALL | BG_PRIORITY(0) | BG_4BPP;

    DMANow(3, dialogueFontTiles, &CHARBLOCK[1], dialogueFontTilesLen / 2);
    DMANow(3, diaOneMap, &SCREENBLOCK[20], diaOneLen / 2);

    // 🧠 This is important:
    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;

    startPage = 0;
    state = DIALOGUE;
}



void startInstructions() {
    if (BUTTON_PRESSED(BUTTON_START)) {

        startPage++;

        switch (startPage) {
            case 1:
                DMANow(3, diaTwoMap, &SCREENBLOCK[20], diaTwoLen / 2);
                break;
            case 2:
                DMANow(3, diaThreeMap, &SCREENBLOCK[20], diaThreeLen / 2);
                break;
            case 3:
                DMANow(3, diaFourMap, &SCREENBLOCK[20], diaFourLen / 2);
                break;
            case 4:
                DMANow(3, diaFiveMap, &SCREENBLOCK[20], diaFiveLen / 2);
                break;
            case 5:
                DMANow(3, diaSixMap, &SCREENBLOCK[20], diaSixLen / 2);
                break;
            case 6:
                DMANow(3, diaSevenMap, &SCREENBLOCK[20], diaSevenLen / 2);
                break;
            case 7:
                DMANow(3, diaEightMap, &SCREENBLOCK[20], diaEightLen / 2);
                break;
            case 8:
                begin = 1;
                break;
        }
    }

    if (begin) {
        begin = 0;
        goToStartTwo();
        state = START;
    }
}

// ============================= [ PHASE ONE STATE ] ============================

void goToPhaseOne() {
    // Clear display settings before changing
    REG_DISPCTL = 0;
    REG_DISPCTL = MODE(0) | BG_ENABLE(0) | BG_ENABLE(1) | BG_ENABLE(2) | SPRITE_ENABLE;

    // | Front background -> BG0 | Parallax background -> BG1 | Back day background -> BG2
    REG_BG0CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(26) | BG_SIZE_WIDE | BG_PRIORITY(0) | BG_8BPP;
    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(28) | BG_SIZE_WIDE | BG_PRIORITY(1) | BG_8BPP;
    REG_BG2CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(30) | BG_SIZE_WIDE | BG_PRIORITY(2) | BG_8BPP;
    
    // DMA background common tileset
    DMANow(3, foregroundPal, BG_PALETTE, foregroundPalLen / 2);
    DMANow(3, foregroundTiles, &CHARBLOCK[1], foregroundTilesLen / 2);
    
    // DMA BG0/1/2 tile maps into screen blocks
    DMANow(3, bgOneFrontMap, &SCREENBLOCK[26], bgOneFrontLen / 2);
    DMANow(3, bgOneBackMap, &SCREENBLOCK[28], bgOneBackLen / 2);
    DMANow(3, dayTMMap, &SCREENBLOCK[30], dayTMLen / 2);
    
    // Initialize sprites
    initPlayer();
    initHealth();

    hOff = 0;
    vOff = MAX_VOFF;
    state = PHASEONE;
}


void phaseOne() {
    
    // Update sprites
    updatePlayer(&hOff, &vOff);
    updateHealth();

    // Front background scrolls regular
    REG_BG0HOFF = hOff;
    REG_BG0VOFF = vOff;

    // Parallax background scrolls half speed
    REG_BG1HOFF = hOff / 2;
    REG_BG1VOFF = vOff / 2;
    
    // Draw sprites
    shadowOAM[guide.oamIndex].attr0 = ATTR0_HIDE;
    drawPlayer();
    drawHealth();
    DMANow(3, shadowOAM, OAM, 512);
    
    if (gameOver) {
        goToLose();
    }

    if (winPhaseOne) {
        goToPhaseTwoInstructions();
    }
}

// ============================= [ DIALOGUE 2 STATE ] =============================

void goToPhaseTwoInstructions() {
    REG_DISPCTL = 0;
    REG_DISPCTL = MODE(0) | BG_ENABLE(0);
    DMANow(3, dialogueFontPal, BG_PALETTE, dialogueFontPalLen / 2);
    DMANow(3, dialogueFontTiles, &CHARBLOCK[1], dialogueFontTilesLen / 2);

    REG_BG0CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(20) | BG_SIZE_SMALL | BG_PRIORITY(0) | BG_4BPP;

    DMANow(3, dialogueFontTiles, &CHARBLOCK[1], dialogueFontTilesLen / 2);
    DMANow(3, diaOneMap, &SCREENBLOCK[20], diaOneLen / 2);

    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;

    startPage = 0;
    state = DIALOGUE2;
}



void phaseTwoInstructions() {
    if (BUTTON_PRESSED(BUTTON_START)) {

        startPage++;

        switch (startPage) {
            case 1:
                DMANow(3, diaTwoMap, &SCREENBLOCK[20], diaTwoLen / 2);
                break;
            case 2:
                DMANow(3, diaThreeMap, &SCREENBLOCK[20], diaThreeLen / 2);
                break;
            case 3:
                DMANow(3, diaFourMap, &SCREENBLOCK[20], diaFourLen / 2);
                break;
            case 4:
                DMANow(3, diaFiveMap, &SCREENBLOCK[20], diaFiveLen / 2);
                break;
            case 5:
                DMANow(3, diaSixMap, &SCREENBLOCK[20], diaSixLen / 2);
                break;
            case 6:
                DMANow(3, diaSevenMap, &SCREENBLOCK[20], diaSevenLen / 2);
                break;
            case 7:
                DMANow(3, diaEightMap, &SCREENBLOCK[20], diaEightLen / 2);
                break;
            case 8:
                goToPhaseTwo();
                break;
        }
    }
}

// ============================= [ PHASE TWO STATE ] ============================

void goToPhaseTwo() {

    REG_DISPCTL = 0;
    REG_DISPCTL = MODE(0) | BG_ENABLE(0) | BG_ENABLE(1) | BG_ENABLE(2) | SPRITE_ENABLE;
    
    // | Front background -> BG0 | Parallax background -> BG1 | Back day background -> BG2
    REG_BG0CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(26) | BG_SIZE_WIDE | BG_PRIORITY(0) | BG_8BPP;
    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(28) | BG_SIZE_WIDE | BG_PRIORITY(1) | BG_8BPP;
    REG_BG2CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(30) | BG_SIZE_WIDE | BG_PRIORITY(2) | BG_8BPP;
    
    // DMA background common tileset
    DMANow(3, foregroundPal, BG_PALETTE, foregroundPalLen / 2);
    DMANow(3, foregroundTiles, &CHARBLOCK[1], foregroundTilesLen / 2);
    
    // DMA BG0/1/2 tile maps into screen blocks
    DMANow(3, bgTwoFrontMap, &SCREENBLOCK[26], bgOneFrontLen / 2);
    DMANow(3, bgTwoBackMap, &SCREENBLOCK[28], bgOneBackLen / 2);
    DMANow(3, duskTMMap, &SCREENBLOCK[30], duskTMLen / 2);
    
    // Initialize sprites
    initPlayerTwo();
    initSnow();

    hOff = 0;
    vOff = MAX_VOFF;
    state = PHASETWO;
}


void phaseTwo() {

    // Update sprites
    updatePlayerTwo(&hOff, &vOff);
    updateSnow();
    updateHealth();

    // Front background scrolls regular
    REG_BG0HOFF = hOff;
    REG_BG0VOFF = vOff;

    // Parallax background scrolls half speed:
    REG_BG1HOFF = hOff / 2;
    REG_BG1VOFF = vOff / 2;
    
    // Draw sprites
    shadowOAM[guide.oamIndex].attr0 = ATTR0_HIDE;
    drawPlayerTwo();
    drawSnow();
    drawHealth();
    DMANow(3, shadowOAM, OAM, 512);
    
    if (gameOver) {
        goToLose();
    }
    if (winPhaseTwo) {
        goToPhaseThreeInstructions();
    }
}

// ============================= [ DIALOGUE 2 STATE ] =============================

void goToPhaseThreeInstructions() {
    REG_DISPCTL = 0;
    REG_DISPCTL = MODE(0) | BG_ENABLE(0);
    DMANow(3, dialogueFontPal, BG_PALETTE, dialogueFontPalLen / 2);
    DMANow(3, dialogueFontTiles, &CHARBLOCK[1], dialogueFontTilesLen / 2);

    REG_BG0CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(20) | BG_SIZE_SMALL | BG_PRIORITY(0) | BG_4BPP;

    DMANow(3, dialogueFontTiles, &CHARBLOCK[1], dialogueFontTilesLen / 2);
    DMANow(3, diaOneMap, &SCREENBLOCK[20], diaOneLen / 2);

    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;

    startPage = 0;
    state = DIALOGUE3;
}



void phaseThreeInstructions() {
    if (BUTTON_PRESSED(BUTTON_START)) {

        startPage++;

        switch (startPage) {
            case 1:
                DMANow(3, diaTwoMap, &SCREENBLOCK[20], diaTwoLen / 2);
                break;
            case 2:
                DMANow(3, diaThreeMap, &SCREENBLOCK[20], diaThreeLen / 2);
                break;
            case 3:
                DMANow(3, diaFourMap, &SCREENBLOCK[20], diaFourLen / 2);
                break;
            case 4:
                DMANow(3, diaFiveMap, &SCREENBLOCK[20], diaFiveLen / 2);
                break;
            case 5:
                DMANow(3, diaSixMap, &SCREENBLOCK[20], diaSixLen / 2);
                break;
            case 6:
                DMANow(3, diaSevenMap, &SCREENBLOCK[20], diaSevenLen / 2);
                break;
            case 7:
                DMANow(3, diaEightMap, &SCREENBLOCK[20], diaEightLen / 2);
                break;
            case 8:
                goToPhaseThree();
                break;
        }
    }
}

// ============================= [ PHASE THREE STATE ] ============================

void goToPhaseThree() {

    REG_DISPCTL = 0;
    REG_DISPCTL = MODE(0) | BG_ENABLE(0) | BG_ENABLE(1) | BG_ENABLE(2) | SPRITE_ENABLE;
    
    // | Front background -> BG0 | Parallax background -> BG1 | Back day background -> BG2
    REG_BG0CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(26) | BG_SIZE_WIDE | BG_PRIORITY(0) | BG_8BPP;
    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(28) | BG_SIZE_WIDE | BG_PRIORITY(1) | BG_8BPP;
    REG_BG2CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(30) | BG_SIZE_WIDE | BG_PRIORITY(2) | BG_8BPP;
    
    // DMA background common tileset
    DMANow(3, foregroundPal, BG_PALETTE, foregroundPalLen / 2);
    DMANow(3, foregroundTiles, &CHARBLOCK[1], foregroundTilesLen / 2);
    
    // DMA BG0/1/2 tile maps into screen blocks
    DMANow(3, bgThreeFrontMap, &SCREENBLOCK[26], bgOneFrontLen / 2);
    DMANow(3, bgTwoBackMap, &SCREENBLOCK[28], bgOneBackLen / 2);
    DMANow(3, dayTMMap, &SCREENBLOCK[30], dayTMLen / 2);
    
    // Initialize sprites
    initPlayerThree();
    initSnow();
    initCountdownTimer();

    hOff = 0;
    vOff = MAX_VOFF;
    state = PHASETHREE;
}


void phaseThree() {

    // Update sprites
    updatePlayerThree(&hOff, &vOff);
    updateSnow();
    updateHealth();
    updatePlayerPalette();

    // Front background scrolls regular
    REG_BG0HOFF = hOff;
    REG_BG0VOFF = vOff;

    // Parallax background scrolls half speed:
    REG_BG1HOFF = hOff / 2;
    REG_BG1VOFF = vOff / 2;
    
    // Draw sprites
    shadowOAM[guide.oamIndex].attr0 = ATTR0_HIDE;
    drawPlayerThree();
    drawSnow();
    drawHealth();
    drawTimer();
    DMANow(3, shadowOAM, OAM, 512);
    
    if (gameOver) {
        goToLose();
    }

    if (winPhaseThree) {
        goToWin();
    }
}

// ============================= [ PAUSE STATE ] ================================

void goToPause() {
    // Switch to mode 4 and draw bitmap image
    REG_DISPCTL = MODE(4) | BG_ENABLE(2);
    videoBuffer = FRONTBUFFER;

    DMANow(3, (volatile void*)splashScreenPal, BG_PALETTE, 256 | DMA_ON);
    drawFullscreenImage4(splashScreenBitmap);
    drawString4(100, 70, "PAUSE", 15);
    state = PAUSE;
}

void pause() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
        state = START;
    }
}

// ============================= [ LOSE STATE ] =================================

void goToLose() {
    // Switch to mode 4 and draw bitmap image
    REG_DISPCTL = MODE(4) | BG_ENABLE(2);
    videoBuffer = FRONTBUFFER;

    DMANow(3, (volatile void*)splashScreenPal, BG_PALETTE, 256 | DMA_ON);
    drawFullscreenImage4(splashScreenBitmap);
    drawString4(100, 70, "LOSE", 15);
    state = LOSE;
}

void lose() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToSplashScreen();
        state = SPLASH;
    }
}

// ============================= [ WIN STATE ] =================================

void goToWin() {
    // Switch to mode 4 and draw bitmap image
    REG_DISPCTL = MODE(4) | BG_ENABLE(2);
    videoBuffer = FRONTBUFFER;

    DMANow(3, (volatile void*)splashScreenPal, BG_PALETTE, 256 | DMA_ON);
    drawFullscreenImage4(splashScreenBitmap);
    drawString4(100, 70, "WIN", 15);
    state = WIN;
}

void win() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToSplashScreen();
        state = SPLASH;
    }
}