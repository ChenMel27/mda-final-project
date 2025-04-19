/******************************************************************************
File: main.c 
Project: The Summit Ascent 
******************************************************************************/

/*
    Welcome to Summit Ascent!
    Begin your journey at the base of Mount Rainier and climb through three
    phases to reach the summit before your health runs out.

    - Start in a town and talk to an experienced villager to gather tips
    - Progress through three side-scrolling phases with obstacles

    Controls:
        ← → Move
        ↑ ↓ Climb / Jump / Duck
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
#include "pause.h"
#include "splash1.h"
#include "gameInstructions.h"
#include "animaljam.h"
#include "digitalSound.h"
#define MENU_START 0
#define MENU_INSTR 1
#define RED RGB(31, 0, 0)
#define BLACK RGB(0, 0, 0)
#define BG_PRIORITY(n) ((n) & 3)
#define TILEMAP_WIDTH 64
// save player coordinates
static int savedStartX;
static int savedStartY;

static int splashSelection;


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
void startInstructions();
void phaseTwoInstructions();
void phaseThreeInstructions();
void gameInstructions();
void goToGameInstructions();
void goToPhaseTwoInstructions();
void goToPhaseThreeInstructions();
void resetPlayerState();
void mgba_open();


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
    WIN,
    GAMEINSTRUCTIONS,
} GameState;

GameState state;
GameState prevState;

int hOff = 0;
int vOff = 0;
int talkedToGuide = 0;
int begin = 0;
int startPage = 0;
int resumingFromPause = 0;


// ============================= [ ! MAIN GAME STATES ! ] ============================

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
            case GAMEINSTRUCTIONS:
                gameInstructions();
                break;
        }

        waitForVBlank();
    }
}

// ============================= [ INITIALIZING GAME ] ===========================

void initialize() {
    mgba_open();
    setupSounds();
    goToSplashScreen();
}

void goToSplashScreen() {
    REG_DISPCTL = MODE(4) | BG_ENABLE(2);
    videoBuffer = FRONTBUFFER;

    // load initialize splash palette and img with start highlighted red
    DMANow(3, (volatile void*)splash1Pal, BG_PALETTE, 256 | DMA_ON);
    drawFullscreenImage4(splash1Bitmap);

    // initialize selection
    splashSelection = MENU_START;

    // make start red, instructions black
    BG_PALETTE[12] = RED;
    BG_PALETTE[13] = BLACK;

    state = SPLASH;
}

void splashScreen() {
    // handle up/down to move selecting start vs instructions
    if (BUTTON_PRESSED(BUTTON_DOWN) && splashSelection == MENU_START) {
        splashSelection = MENU_INSTR;
    } else if (BUTTON_PRESSED(BUTTON_UP) && splashSelection == MENU_INSTR) {
        splashSelection = MENU_START;
    }

    // swap palette entries
    if (splashSelection == MENU_START) {
        BG_PALETTE[12] = RED;
        BG_PALETTE[13] = BLACK;
    } else {
        BG_PALETTE[12] = BLACK;
        BG_PALETTE[13] = RED;
    }

    // confirm choice
    if (BUTTON_PRESSED(BUTTON_START)) {
        if (splashSelection == MENU_START) {
            goToStart();
        } else {
            goToGameInstructions();
        }
    }
}

// ============================= [ START PHASE STATE ] ===========================

void goToStart() {
    resumingFromPause = 0;
    REG_DISPCTL = MODE(0) | BG_ENABLE(1) | SPRITE_ENABLE;
    hideSprites();
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(18) | BG_SIZE_LARGE | BG_4BPP;

    DMANow(3, (volatile void*)sTSPal,   BG_PALETTE,      sTSPalLen   / 2);
    DMANow(3, (volatile void*)sTSTiles, &CHARBLOCK[0],  sTSTilesLen / 2);
    DMANow(3, (volatile void*)sTMMap,   &SCREENBLOCK[18], sTMLen / 2);
    
    volatile u16* map1 = SCREENBLOCK[19].tilemap;
    for (int i = 0; i < 7; i++) {
        for (int j = 0; j < 5; j++) {
            map1[(((27 + j) * TILEMAP_WIDTH) / 2 + (25 + i))] = TILEMAP_ENTRY_TILEID(364) | TILEMAP_ENTRY_PALROW(0);
        }
    }

    volatile u16* map2 = SCREENBLOCK[21].tilemap;
    for (int i = 0; i < 7; i++) {
        for (int j = 0; j < 2; j++) {
            map2[(((j) * TILEMAP_WIDTH) / 2 + (25 + i))] = TILEMAP_ENTRY_TILEID(364) | TILEMAP_ENTRY_PALROW(0);
        }
    }
    // init sprites & camera
    initStartPlayer();
    initGuideSprite();
    hOff = 0;  vOff = MAX_VOFF;

    playSoundA(animaljam_data, animaljam_length, 1);
    state = START;
}


void goToStartTwo() {
    resumingFromPause = 0;
    REG_DISPCTL = MODE(0) | BG_ENABLE(1) | SPRITE_ENABLE;
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(18) | BG_SIZE_LARGE | BG_4BPP;

    DMANow(3, (volatile void*)sTSPal, BG_PALETTE, sTSPalLen / 2);
    DMANow(3, (volatile void*)sTSTiles, &CHARBLOCK[0], sTSTilesLen / 2);
    DMANow(3, (volatile void*)sTMMap, &SCREENBLOCK[18], sTMLen / 2);

    initStartPlayer();
    initGuideSprite();

    startPlayer.worldX = 134;
    startPlayer.worldX = 436;
    next = 0;

    // flag that guide has been talked to so that they now can start phase 1
    talkedToGuide = 1;

    hOff = 0;
    vOff = MAX_VOFF;
    state = START;
}

void goToStartThree() {
    resumingFromPause = 0;
    REG_DISPCTL = MODE(0) | BG_ENABLE(1) | SPRITE_ENABLE;
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(18) | BG_SIZE_LARGE | BG_4BPP;

    DMANow(3, (volatile void*)sTSPal, BG_PALETTE, sTSPalLen / 2);
    DMANow(3, (volatile void*)sTSTiles, &CHARBLOCK[0], sTSTilesLen / 2);
    DMANow(3, (volatile void*)sTMMap, &SCREENBLOCK[18], sTMLen / 2);

    initStartPlayer();
    initGuideSprite();

    // initalize player to previous coordinates after pause
    startPlayer.worldX = savedStartX;
    startPlayer.worldY = savedStartY;

    hOff = 0;
    vOff = MAX_VOFF;

    playSoundA(animaljam_data, animaljam_length, 1);
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

    // go to initialize instructions when collide with guide
    if (checkPlayerGuideCollision()) {
        goToStartInstructions();
    }

    // next is for hitting the right side and guide has been collided with
    if (next == 1 && talkedToGuide) {
        stopSounds();
        goToPhaseOne();
    }

    if (BUTTON_PRESSED(BUTTON_START)) {
        // save player position before pausing
        savedStartX = startPlayer.worldX;
        savedStartY = startPlayer.worldY;
        prevState = state;

        // stop sound and go to pause
        stopSounds();
        goToPause();
        return;
    }
    
}

// ============================= [ DIALOGUE STATE ] =============================

void goToStartInstructions() {
    REG_DISPCTL = 0;
    REG_DISPCTL = MODE(0) | BG_ENABLE(0);
    DMANow(3, (volatile void*)dialogueFontPal, BG_PALETTE, dialogueFontPalLen / 2);
    DMANow(3, (volatile void*)dialogueFontTiles, &CHARBLOCK[1], dialogueFontTilesLen / 2);

    // BG0 = dialogue overlay
    REG_BG0CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(20) | BG_SIZE_SMALL | BG_PRIORITY(0) | BG_4BPP;

    DMANow(3, (volatile void*)dialogueFontTiles, &CHARBLOCK[1], dialogueFontTilesLen / 2);
    DMANow(3, (volatile void*)diaOneMap, &SCREENBLOCK[20], diaOneLen / 2);

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
                DMANow(3, (volatile void*)diaTwoMap, &SCREENBLOCK[20], diaTwoLen / 2);
                break;
            case 2:
                DMANow(3, (volatile void*)diaThreeMap, &SCREENBLOCK[20], diaThreeLen / 2);
                break;
            case 3:
                DMANow(3, (volatile void*)diaFourMap, &SCREENBLOCK[20], diaFourLen / 2);
                break;
            case 4:
                DMANow(3, (volatile void*)diaFiveMap, &SCREENBLOCK[20], diaFiveLen / 2);
                break;
            case 5:
                DMANow(3, (volatile void*)diaSixMap, &SCREENBLOCK[20], diaSixLen / 2);
                break;
            case 6:
                DMANow(3, (volatile void*)diaSevenMap, &SCREENBLOCK[20], diaSevenLen / 2);
                break;
            case 7:
                DMANow(3, (volatile void*)diaEightMap, &SCREENBLOCK[20], diaEightLen / 2);
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
    REG_DISPCTL = 0;
    REG_DISPCTL = MODE(0) | BG_ENABLE(0) | BG_ENABLE(1) | BG_ENABLE(2) | SPRITE_ENABLE;
    REG_BG0CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(26) | BG_SIZE_WIDE | BG_PRIORITY(0) | BG_8BPP;
    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(28) | BG_SIZE_WIDE | BG_PRIORITY(1) | BG_8BPP;
    REG_BG2CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(30) | BG_SIZE_WIDE | BG_PRIORITY(2) | BG_8BPP;
    DMANow(3, (volatile void*)foregroundPal, BG_PALETTE, foregroundPalLen / 2);
    DMANow(3, (volatile void*)foregroundTiles, &CHARBLOCK[1], foregroundTilesLen / 2);
    DMANow(3, (volatile void*)bgOneFrontMap, &SCREENBLOCK[26], bgOneFrontLen / 2);
    DMANow(3, (volatile void*)bgOneBackMap, &SCREENBLOCK[28], bgOneBackLen / 2);
    DMANow(3, (volatile void*)dayTMMap, &SCREENBLOCK[30], dayTMLen / 2);
    
    // only reset coordinates in beginning
    if (!resumingFromPause) {
        initPlayer();
        initHealth();
    }
    
    // clear the flag so next goToPhaseOne() does full init again
    resumingFromPause = 0;
    
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

    if (BUTTON_PRESSED(BUTTON_START)) {
        prevState = state;
        goToPause();
        return;
    }
    
}

// ============================= [ DIALOGUE 2 STATE ] =============================

void goToPhaseTwoInstructions() {
    REG_DISPCTL = 0;
    REG_DISPCTL = MODE(0) | BG_ENABLE(0);
    DMANow(3, (volatile void*)dialogueFontPal, BG_PALETTE, dialogueFontPalLen / 2);
    DMANow(3, (volatile void*)dialogueFontTiles, &CHARBLOCK[1], dialogueFontTilesLen / 2);

    REG_BG0CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(20) | BG_SIZE_SMALL | BG_PRIORITY(0) | BG_4BPP;

    DMANow(3, (volatile void*)dialogueFontTiles, &CHARBLOCK[1], dialogueFontTilesLen / 2);
    DMANow(3, (volatile void*)diaOneMap, &SCREENBLOCK[20], diaOneLen / 2);

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
                DMANow(3, (volatile void*)diaTwoMap, &SCREENBLOCK[20], diaTwoLen / 2);
                break;
            case 2:
                DMANow(3, (volatile void*)diaThreeMap, &SCREENBLOCK[20], diaThreeLen / 2);
                break;
            case 3:
                DMANow(3, (volatile void*)diaFourMap, &SCREENBLOCK[20], diaFourLen / 2);
                break;
            case 4:
                DMANow(3, (volatile void*)diaFiveMap, &SCREENBLOCK[20], diaFiveLen / 2);
                break;
            case 5:
                DMANow(3, (volatile void*)diaSixMap, &SCREENBLOCK[20], diaSixLen / 2);
                break;
            case 6:
                DMANow(3, (volatile void*)diaSevenMap, &SCREENBLOCK[20], diaSevenLen / 2);
                break;
            case 7:
                DMANow(3, (volatile void*)diaEightMap, &SCREENBLOCK[20], diaEightLen / 2);
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
    DMANow(3, (volatile void*)foregroundPal, BG_PALETTE, foregroundPalLen / 2);
    DMANow(3, (volatile void*)foregroundTiles, &CHARBLOCK[1], foregroundTilesLen / 2);
    
    // DMA BG0/1/2 tile maps into screen blocks
    DMANow(3, (volatile void*)bgTwoFrontMap, &SCREENBLOCK[26], bgOneFrontLen / 2);
    DMANow(3, (volatile void*)bgTwoBackMap, &SCREENBLOCK[28], bgOneBackLen / 2);
    DMANow(3, (volatile void*)duskTMMap, &SCREENBLOCK[30], duskTMLen / 2);


    if (!resumingFromPause) {
        initPlayerTwo();
        initSnow();
    }
    
    resumingFromPause = 0;

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

    if (BUTTON_PRESSED(BUTTON_START)) {
        prevState = state;
        goToPause();
        return;
    }
    
}

// ============================= [ DIALOGUE 2 STATE ] =============================

void goToPhaseThreeInstructions() {
    REG_DISPCTL = 0;
    REG_DISPCTL = MODE(0) | BG_ENABLE(0);
    DMANow(3, (volatile void*)dialogueFontPal, BG_PALETTE, dialogueFontPalLen / 2);
    DMANow(3, (volatile void*)dialogueFontTiles, &CHARBLOCK[1], dialogueFontTilesLen / 2);

    REG_BG0CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(20) | BG_SIZE_SMALL | BG_PRIORITY(0) | BG_4BPP;

    DMANow(3, (volatile void*)dialogueFontTiles, &CHARBLOCK[1], dialogueFontTilesLen / 2);
    DMANow(3, (volatile void*)diaOneMap, &SCREENBLOCK[20], diaOneLen / 2);

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
                DMANow(3, (volatile void*)diaTwoMap, &SCREENBLOCK[20], diaTwoLen / 2);
                break;
            case 2:
                DMANow(3, (volatile void*)diaThreeMap, &SCREENBLOCK[20], diaThreeLen / 2);
                break;
            case 3:
                DMANow(3, (volatile void*)diaFourMap, &SCREENBLOCK[20], diaFourLen / 2);
                break;
            case 4:
                DMANow(3, (volatile void*)diaFiveMap, &SCREENBLOCK[20], diaFiveLen / 2);
                break;
            case 5:
                DMANow(3, (volatile void*)diaSixMap, &SCREENBLOCK[20], diaSixLen / 2);
                break;
            case 6:
                DMANow(3, (volatile void*)diaSevenMap, &SCREENBLOCK[20], diaSevenLen / 2);
                break;
            case 7:
                DMANow(3, (volatile void*)diaEightMap, &SCREENBLOCK[20], diaEightLen / 2);
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
    DMANow(3, (volatile void*)foregroundPal, BG_PALETTE, foregroundPalLen / 2);
    DMANow(3, (volatile void*)foregroundTiles, &CHARBLOCK[1], foregroundTilesLen / 2);
    
    // DMA BG0/1/2 tile maps into screen blocks
    DMANow(3, (volatile void*)bgThreeFrontMap, &SCREENBLOCK[26], bgOneFrontLen / 2);
    DMANow(3, (volatile void*)bgTwoBackMap, &SCREENBLOCK[28], bgOneBackLen / 2);
    DMANow(3, (volatile void*)dayTMMap, &SCREENBLOCK[30], dayTMLen / 2);

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
    REG_DISPCTL = 0;
    REG_DISPCTL = MODE(0) | BG_ENABLE(0);
    DMANow(3, (volatile void*) dialogueFontPal, BG_PALETTE, dialogueFontPalLen / 2);
    DMANow(3, (volatile void*) dialogueFontTiles, &CHARBLOCK[1], dialogueFontTilesLen / 2);
    REG_BG0CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(20) | BG_SIZE_SMALL | BG_PRIORITY(0) | BG_4BPP;

    DMANow(3, (volatile void*) dialogueFontTiles, &CHARBLOCK[1], dialogueFontTilesLen / 2);
    DMANow(3, (volatile void*) pauseMap, &SCREENBLOCK[20], pauseLen / 2);
    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;

    state = PAUSE;
}

void pause() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        // flag to skip init next time
        resumingFromPause = 1;
        switch (prevState) {
            case PHASEONE: goToPhaseOne(); break;
            case PHASETWO: goToPhaseTwo(); break;
            case START: goToStartThree(); break;
            case DIALOGUE: goToStartInstructions(); break;
            case DIALOGUE2: goToPhaseTwoInstructions();break;
            case DIALOGUE3: goToPhaseThreeInstructions(); break;
            default: goToStart(); break;
        }
        state = prevState;
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

void goToGameInstructions() {
    REG_DISPCTL = 0;
    REG_DISPCTL = MODE(0) | BG_ENABLE(0);
    DMANow(3, (volatile void*) dialogueFontPal, BG_PALETTE, dialogueFontPalLen / 2);
    DMANow(3, (volatile void*) dialogueFontTiles, &CHARBLOCK[1], dialogueFontTilesLen / 2);
    REG_BG0CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(20) | BG_SIZE_SMALL | BG_PRIORITY(0) | BG_4BPP;
    DMANow(3,(volatile void*) gameInstructionsMap, &SCREENBLOCK[20], gameInstructionsLen / 2);
    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;

    state = GAMEINSTRUCTIONS;
}

void gameInstructions() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToSplashScreen();
    }
}
