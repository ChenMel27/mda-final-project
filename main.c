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
#include "gameInstructions2.h"
#include "gameInstructions3.h"
#include "action.h"
#include "speakingMan.h"
#include "speakingMan2.h"
#include "largemantiles.h"
#include "splashSound.h"
#include "splashp1.h"
#include "splashp3.h"
#include "helper.h"
#include "animateStart.h"
#include "pOAudio.h"

#define MENU_START 0
#define MENU_INSTR 1
#define RED RGB(31, 0, 0)
#define BLACK RGB(0, 0, 0)
#define BG_PRIORITY(n) ((n) & 3)
#define TILEMAP_WIDTH 64

// save player coordinates
static int savedStartX;
static int savedStartY;
int shiftingRight = 1;
int shiftOffset = 0;
int shiftTimer = 0;
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
void resetGameState(void);


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
u16 originalTiles[4][16];
int primaryIndices[3] = {13, 14, 15};
int altIndices[3] = {16, 17, 18};

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

// ============================== [ INITIALIZING GAME ] ==============================

void initialize() {
    mgba_open();
    setupSounds();
    goToSplashScreen();
}

// ============================== [ SPLASH SCREEN SETUP ] =============================

void goToSplashScreen() {
    REG_DISPCTL = MODE(4) | BG_ENABLE(2);
    videoBuffer = FRONTBUFFER;
    stopSounds();

    // Display the first splash screen
    DMANow(3, (volatile void*)splashp1Pal, BG_PALETTE, 256);
    drawFullscreenImage4(splashp1Bitmap);

    // Play intro sound
    playSoundA(splashSound_data, splashSound_length, 1);

    const int fadeDuration = 120;
    u16 originalColors[17];

    // Store original palette colors
    for (int i = 0; i <= 16; i++) {
        originalColors[i] = splashp1Pal[i];
    }

    // Gradually blend palette to black
    for (int t = 0; t <= fadeDuration; t++) {
        waitForVBlank();
        for (int i = 0; i <= 16; i++) {
            BG_PALETTE[i] = blendColor(originalColors[i], RGB(0, 0, 0), t, fadeDuration);
        }
    }

    // Hold black screen briefly
    for (int i = 0; i < 5; i++) {
        waitForVBlank();
    }

    // === Show animateStart screen and do palette animations ===
    DMANow(3, (volatile void*)animateStartPal, BG_PALETTE, 256);
    drawFullscreenImage4(animateStartBitmap);

    // Reveal index timings (white)
    const int totalFrames = 180;
    const int revealDelays[3] = {30, 60, 90};

    // Flicker colors for indices 3 and 4
    u16 flickerColorsA = RGB(31, 31, 0);   // Bright yellow (pure light)
    u16 flickerColorsB = RGB(24, 24, 8);  // Softer yellow

    for (int i = 0; i < totalFrames; i++) {
        waitForVBlank();

        // Flicker palette 3 and 4 every 10 frames
        if ((i / 10) % 2 == 0) {
            BG_PALETTE[3] = flickerColorsA;
            BG_PALETTE[4] = flickerColorsB;
        } else {
            BG_PALETTE[3] = flickerColorsB;
            BG_PALETTE[4] = flickerColorsA;
        }

        // Gradually reveal indices 16–18 as white
        if (i == revealDelays[0]) {
            BG_PALETTE[16] = RGB(31, 31, 31);
        } else if (i == revealDelays[1]) {
            BG_PALETTE[17] = RGB(31, 31, 31);
        } else if (i == revealDelays[2]) {
            BG_PALETTE[18] = RGB(31, 31, 31);
        }
    }

    // Display second splash screen with menu options
    DMANow(3, (volatile void*)splashp3Pal, BG_PALETTE, 256);
    drawFullscreenImage4(splashp3Bitmap);

    resetGameState();
    state = SPLASH;
}

// ============================== [ SPLASH SCREEN LOGIC ] =============================

void splashScreen() {
    static int t = 0;
    static int direction = 1;
    const int max = 30;

    static int* animatedIndices;
    static int usingAltIndices = 0;

    // Switch selection on DOWN/UP and restore original palette
    if (BUTTON_PRESSED(BUTTON_DOWN) && !usingAltIndices) {
        for (int i = 0; i < 3; i++)
            BG_PALETTE[primaryIndices[i]] = splashp3Pal[primaryIndices[i]];
        animatedIndices  = altIndices;
        usingAltIndices  = 1;
        t = 0; direction = 1;
    }
    else if (BUTTON_PRESSED(BUTTON_UP) && usingAltIndices) {
        for (int i = 0; i < 3; i++)
            BG_PALETTE[altIndices[i]] = splashp3Pal[altIndices[i]];
        animatedIndices  = primaryIndices;
        usingAltIndices  = 0;
        t = 0; direction = 1;
    }

    // Default to primary menu if none set
    if (!animatedIndices)
        animatedIndices = primaryIndices;

    // Pulse the selected palette entries toward palette[2]
    waitForVBlank();
    u16 target = BG_PALETTE[2];
    for (int i = 0; i < 3; i++) {
        int idx = animatedIndices[i];
        BG_PALETTE[idx] = blendColor(splashp3Pal[idx], target, t, max);
    }
    t += direction;
    if (t >= max || t <= 0)
        direction = -direction;

    // Confirm selection on START
    if (BUTTON_PRESSED(BUTTON_START)) {
        if (usingAltIndices)
            goToGameInstructions();
        else
            goToStart();
    }
}

// ============================= [ START PHASE STATE ] ===========================

void goToStart() {
    cheatOn = 0;
    resumingFromPause = 0;
    REG_DISPCTL = MODE(0) | BG_ENABLE(1) | SPRITE_ENABLE;
    hideSprites();
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(18) | BG_SIZE_LARGE | BG_4BPP;
    
    DMANow(3, (volatile void*)sTSPal,   BG_PALETTE,      sTSPalLen   / 2);
    DMANow(3, (volatile void*)sTSTiles, &CHARBLOCK[0],  sTSTilesLen / 2);
    DMANow(3, (volatile void*)sTMMap,   &SCREENBLOCK[18], sTMLen / 2);
    for (int y = 0; y < TILEMAP_SHIFT_ROWS; y++) {
        for (int x = 0; x < TILEMAP_SHIFT_COLS; x++) {
            int row = SHIFT_TILEMAP_START_ROW + y;
            int col = SHIFT_TILEMAP_START_COL + x;
            originalBlock[y][x] = SCREENBLOCK[SHIFT_SCREENBLOCK_INDEX].tilemap[row * 32 + col];
            currentBlock[y][x] = originalBlock[y][x];
        }
    }
    
    // Modifying start tilemap at runtime
    // 10x10 block at (27, 57) that will be uncovered when player meets guide and can cross bridge
    for (int y = 0; y < 10; y++) {
        for (int x = 0; x < 10; x++) {
            int r = y + 27; // row offset
            int c = 57 + x; // col offset

            // Find which screenblock this tile is in
            int blk = 18 + (r / 32) * 2 + (c / 32);

            // Get pointer to the tilemap for this block
            volatile u16* m = SCREENBLOCK[blk].tilemap;

            // Write tile ID 364 at (r, c) using palette 0
            m[(r % 32) * 32 + (c % 32)] = TILEMAP_ENTRY_TILEID(364) | TILEMAP_ENTRY_PALROW(0);
        }
    }

    int tileIds[4] = {84, 85, 116, 117};
    for (int t = 0; t < 4; t++) {
        for (int i = 0; i < 16; i++) {
            originalTiles[t][i] = CHARBLOCK[0].tileimg[tileIds[t] * 16 + i];
        }
    }


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

    startPlayer.worldY = 170;
    startPlayer.worldX = 430;
    next = 0;

    talkedToGuide = 1;
    hOff = 0;
    vOff = MAX_VOFF;

    playSoundB(action_data, action_length, 0);

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
    animateTilemapShift();
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
    // Flash tile ID 84 every ~15 frames
    tileFlashTimer++;
    if (tileFlashTimer > 15) {
        tileFlashTimer = 0;
        tileFlashState = !tileFlashState;

        flashColorInTile(84, 3, 4, tileFlashState, originalTiles[0]);
        flashColorInTile(85, 3, 4, tileFlashState, originalTiles[1]);
        flashColorInTile(116, 3, 4, tileFlashState, originalTiles[2]);
        flashColorInTile(117, 3, 4, tileFlashState, originalTiles[3]);
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
    REG_DISPCTL = MODE(0) | BG_ENABLE(0) | BG_ENABLE(1);

    // Load dialogue font palette to palette 0 (index 0–15)
    DMANow(3, (volatile void*)largemantilesPal, BG_PALETTE, largemantilesPalLen / 2);
    DMANow(3, (volatile void*)dialogueFontTiles, &CHARBLOCK[1], dialogueFontTilesLen / 2);

    // Load largeman palette to palette 1 (index 16–31)
    
    DMANow(3, (volatile void*)largemantilesTiles, &CHARBLOCK[3], largemantilesTilesLen / 2);

    // Setup background control registers
    REG_BG0CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(20) | BG_SIZE_SMALL | BG_PRIORITY(1) | BG_4BPP;
    REG_BG1CNT = BG_CHARBLOCK(3) | BG_SCREENBLOCK(25) | BG_SIZE_SMALL | BG_PRIORITY(0) | BG_4BPP;

    // Load maps (make sure tile IDs in speakingManMap use palette 1)
    DMANow(3, (volatile void*)diaOneMap, &SCREENBLOCK[20], diaOneLen / 2);
    DMANow(3, (volatile void*)speakingManMap, &SCREENBLOCK[25], speakingManLen / 2);

    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;
    REG_BG1HOFF = 0;
    REG_BG1VOFF = 0;

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
#define TILE358_INDEX 358
#define TILE358_OFFSET (TILE358_INDEX * 64) // 8x8 tile, 1 byte per pixel in 8bpp

u8 originalTile358[64];  // save original pixels
int tileFadeTimer = 0;
int tileFadeStep = 0;
#define FLASH_FRAMES_TOTAL 20

int isFlashing = 0;
int flashFrame = 0;
u16 savedFadePalette[256]; // Backup of current palette state for smooth return

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

// Save original pixels from tile 358 (CHARBLOCK[1] is BG tiles in Mode 0, 8bpp)
u8* tileData = (u8*) &CHARBLOCK[1];
for (int i = 0; i < 64; i++) {
    originalTile358[i] = tileData[TILE358_OFFSET + i];
}

tileFadeTimer = 0;
tileFadeStep = 0;


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
#define RED(c)   ((c) & 0x1F)
#define GREEN(c) (((c) >> 5) & 0x1F)
#define BLUE(c)  (((c) >> 10) & 0x1F)


void phaseOne() {

    static int hasPlayedPOAudio = 0;

if (!hasPlayedPOAudio) {
    hasPlayedPOAudio = 1;
    playSoundB(pOAudio_data, pOAudio_length, 1);  // 0 = no loop
}

    static int flashState = 0;
    static int flashTimer = 0;
    static int flashFrame = 0;
    static int isFlashing = 0;
    
    // Update sprites
    updatePlayer(&hOff, &vOff);
    updateHealth();

    // Front background scrolls regular
    REG_BG0HOFF = hOff;
    REG_BG0VOFF = vOff;

    // Parallax background scrolls half speed
    REG_BG1HOFF = hOff / 2;
    REG_BG1VOFF = vOff / 2;

    static int tileAnimTimer = 0;
    static int tileAnimState = 0;
    tileAnimTimer++;

    if (tileAnimTimer > 15) {
        tileAnimTimer = 0;
        tileAnimState = !tileAnimState;

        for (int row = 0; row < 32; row++) {
            for (int col = 0; col < 32; col++) {
                u16* tile = &SCREENBLOCK[27].tilemap[row * 32 + col];

                u16 tileId = *tile & 0x03FF;
                u16 palRow = *tile & 0xFC00;

                // Swap 231 <--> 250
                if (tileId == 231) {
                    *tile = (255 | palRow);
                } else if (tileId == 255) {
                    *tile = (231 | palRow);
                }
            }
        }
    }
    
    // Smooth fade every ~4 frames (about 15 times a second)
tileFadeTimer++;
if (tileFadeTimer % 4 == 0 && tileFadeStep < 100) {
    tileFadeStep++;  // up to 100 steps for slow smooth darkening

    u8* tileData = (u8*) &CHARBLOCK[1];

    for (int i = 0; i < 64; i++) {
        u8 colorIndex = originalTile358[i];

        if (colorIndex == 0) continue; // skip transparent

        u16 origColor = BG_PALETTE[colorIndex];
        u16 newColor = blendColor(origColor, RGB(0, 0, 0), tileFadeStep, 2000);
        BG_PALETTE[colorIndex] = newColor;
    }
}
static int swapTimer = 0;
static int swapped = 0;
static int swapDelayFrames = 0;
static int hasFlashedOnce = 0;  
swapDelayFrames++; // count frames until 15 seconds (15 * 60 = 900)

if (swapDelayFrames > 200 && !hasFlashedOnce) {
    swapTimer++;

    if (swapTimer > 60) {
        swapTimer = 0;
        swapped = !swapped;
        isFlashing = 1;
        flashState = 0;
        flashFrame = 0;
        flashTimer = 0;
        hasFlashedOnce = 1;
        


        // Save current palette state before flash
        for (int i = 0; i < 256; i++) {
            savedFadePalette[i] = BG_PALETTE[i];
        }

        // Swap tiles
        for (int row = 0; row < 32; row++) {
            for (int col = 0; col < 32; col++) {
                u16* tile = &SCREENBLOCK[28].tilemap[row * 32 + col];
                u16 tileId = *tile & 0x03FF;
                u16 palRow = *tile & 0xFC00;

                if (!swapped) {
                    if (tileId == 323) *tile = (322 | palRow);
                    if (tileId == 348) *tile = (347 | palRow);
                } else {
                    if (tileId == 322) *tile = (323 | palRow);
                    if (tileId == 347) *tile = (348 | palRow);
                }
            }
        }
    }
}

if (isFlashing) {
    flashTimer++;

    // Toggle flash state every 8 frames
    if (flashTimer > 8) {
        flashTimer = 0;
        flashState = !flashState;
        flashFrame++;
    }

    if (flashFrame >= 4) {
        isFlashing = 0;

        // After 2 flashes, set palette to RGB(10,10,10) permanently
        for (int i = 0; i < 64; i++) {
            u8 colorIndex = originalTile358[i];
            if (colorIndex == 0) continue;
            BG_PALETTE[colorIndex] = RGB(10, 10, 10);
        }
    } else {
        for (int i = 0; i < 64; i++) {
            u8 colorIndex = originalTile358[i];
            if (colorIndex == 0) continue;

            if (flashState) {
                u16 c = savedFadePalette[colorIndex];
                int r = RED(c) / 2;
                int g = GREEN(c) / 2;
                int b = BLUE(c) / 2;
                BG_PALETTE[colorIndex] = RGB(r, g, b);
            } else {
                BG_PALETTE[colorIndex] = savedFadePalette[colorIndex];
            }
        }
    }
}

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
    REG_DISPCTL = MODE(0) | BG_ENABLE(0) | BG_ENABLE(1);

    DMANow(3, (volatile void*)largemantilesPal, BG_PALETTE, largemantilesPalLen / 2);
    DMANow(3, (volatile void*)dialogueFontTiles, &CHARBLOCK[1], dialogueFontTilesLen / 2);

    REG_BG0CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(20) | BG_SIZE_SMALL | BG_PRIORITY(0) | BG_4BPP;
    REG_BG1CNT = BG_CHARBLOCK(3) | BG_SCREENBLOCK(25) | BG_SIZE_SMALL | BG_PRIORITY(0) | BG_4BPP;

    DMANow(3, (volatile void*)speakingMan2Map, &SCREENBLOCK[25], speakingMan2Len / 2);
    DMANow(3, (volatile void*)gameInstructions2Map, &SCREENBLOCK[20], gameInstructions2Len / 2);

    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;
    REG_BG1HOFF = 0;
    REG_BG1VOFF = 0;
    state = DIALOGUE2;
}



void phaseTwoInstructions() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToPhaseTwo();
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
    REG_DISPCTL = MODE(0) | BG_ENABLE(0) | BG_ENABLE(1);

    DMANow(3, (volatile void*)largemantilesPal, BG_PALETTE, largemantilesPalLen / 2);
    DMANow(3, (volatile void*)dialogueFontTiles, &CHARBLOCK[1], dialogueFontTilesLen / 2);

    REG_BG0CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(20) | BG_SIZE_SMALL | BG_PRIORITY(0) | BG_4BPP;
    REG_BG1CNT = BG_CHARBLOCK(3) | BG_SCREENBLOCK(25) | BG_SIZE_SMALL | BG_PRIORITY(0) | BG_4BPP;

    DMANow(3, (volatile void*)speakingMan2Map, &SCREENBLOCK[25], speakingMan2Len / 2);
    DMANow(3, (volatile void*)gameInstructions3Map, &SCREENBLOCK[20], gameInstructions2Len / 2);

    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;
    REG_BG1HOFF = 0;
    REG_BG1VOFF = 0;

    state = DIALOGUE3;
}

void phaseThreeInstructions() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToPhaseThree();
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
    DMANow(3, (volatile void*) largemantilesPal, BG_PALETTE, largemantilesPalLen / 2);
    DMANow(3, (volatile void*) dialogueFontTiles, &CHARBLOCK[1], dialogueFontTilesLen / 2);
    REG_BG0CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(20) | BG_SIZE_SMALL | BG_PRIORITY(0) | BG_4BPP;
    DMANow(3,(volatile void*) gameInstructionsMap, &SCREENBLOCK[20], gameInstructionsLen / 2);
    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;

    state = GAMEINSTRUCTIONS;
}

void gameInstructions() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }
}

void resetGameState() {
    hOff = 0;
    vOff = 0;
    talkedToGuide = 0;
    begin = 0;
    startPage = 0;
    resumingFromPause = 0;

    // Reset win/lose state flags
    gameOver = 0;
    winPhaseOne = 0;
    winPhaseTwo = 0;
    winPhaseThree = 0;

    // Reset player progress / guide interaction
    next = 0;

    // Reset splash selection
    splashSelection = MENU_START;
}

