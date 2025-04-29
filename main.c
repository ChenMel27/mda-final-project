/******************************************************************************
 * File: main.c
 * Project: The Summit Ascent
 ******************************************************************************/

/*
    Welcome to The Summit Ascent!
    Begin your journey at the base of Mount Rainier and climb through three
    phases to reach the summit before your health runs out.

    - Start in a town and talk to an experienced villager to gather tips.
    - Progress through three side-scrolling phases with obstacles.
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
#include "loselose.h"
#include "startPause.h"
#include "winwin.h"
#include "bgAnimatedBack.h"
#include "click.h"
#include "phaseoneaudio.h"
#include "phasetwoaudio.h"
#include "phasethreeaudio.h"
#include "winaudio.h"
#include "loseaudio.h"
#include "falling.h"
#include "healthaudio.h"
#include "fortnite.h"

// ============================= [ DEFINES ] =============================

#define MENU_START 0
#define MENU_INSTR 1

#define RED_VAL(c)   ((c) & 0x1F)
#define GREEN_VAL(c) (((c) >> 5) & 0x1F)
#define BLUE_VAL(c)  (((c) >> 10) & 0x1F)

#define BG_PRIORITY(n) ((n) & 3)
#define TILEMAP_WIDTH 64
#define MOSAIC_BG(h,b,v,a) ((h) | ((b) << 4) | ((v) << 8) | ((a) << 12))

#define TILE358_INDEX 358
#define TILE358_OFFSET (TILE358_INDEX * 64)

#define FLASH_FRAMES_TOTAL 20

// ============================= [ GLOBAL VARIABLES ] =============================

// Saved player position when pausing
static int savedStartX;
static int savedStartY;

// Splash screen animation variables
int shiftingRight = 1;
int shiftOffset = 0;
int shiftTimer = 0;
static int splashSelection;

// Phase One animation variables
u8 originalTile358[64];
int tileFadeTimer = 0;
int tileFadeStep = 0;
int isFlashing = 0;
int flashFrame = 0;
u16 savedFadePalette[256];

// Button tracking
unsigned short buttons;
unsigned short oldButtons;

// Game state enum
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
extern PlayerState playerState;

// Camera offsets
int hOff = 0;
int vOff = 0;

// Flags
int talkedToGuide = 0;
int begin = 0;
int startPage = 0;
int resumingFromPause = 0;
int bridgeUncovered = 0;

// Tile animation helpers
u16 originalTiles[4][16];
int primaryIndices[3] = {13, 14, 15};
int altIndices[3] = {16, 17, 18};

// External sprite objects
extern SPRITE guide;
extern SPRITE startPlayer;
extern SPRITE player;

// ============================= [ FUNCTION PROTOTYPES ] =============================

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
void initAnimatedPlayer();
void updateAnimatedPlayer();
void drawAnimatedPlayer();

// ============================= [ MAIN GAME LOOP ] =============================

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
                win();
                break;
            case GAMEINSTRUCTIONS:
                gameInstructions();
                break;
        }

        waitForVBlank();
    }
}

void initialize() {
    mgba_open();
    stopSounds();
    setupSounds();

    // Set up VBlank interrupt
    REG_DISPSTAT |= DISPSTAT_VBLANK_IRQ;
    REG_IE |= IRQ_VBLANK;
    *REG_INTERRUPT = interruptHandler;
    REG_IME = 1;

    goToSplashScreen();
}

// ============================== [ SPLASH SCREEN ] ==============================

void goToSplashScreen() {
    // Set Mode 4 and enable Background 2
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

    // Save original palette colors
    for (int i = 0; i <= 16; i++) {
        originalColors[i] = splashp1Pal[i];
    }

    // Gradually blend palette entries to black
    for (int t = 0; t <= fadeDuration; t++) {
        waitForVBlank();
        for (int i = 0; i <= 16; i++) {
            BG_PALETTE[i] = blendColor(originalColors[i], RGB(0, 0, 0), t, fadeDuration);
        }
    }

    // Hold black screen for a few frames
    for (int i = 0; i < 5; i++) {
        waitForVBlank();
    }

    // Load the animated start splash screen
    DMANow(3, (volatile void*)animateStartPal, BG_PALETTE, 256);
    drawFullscreenImage4(animateStartBitmap);

    // Animate reveal timing
    const int totalFrames = 180;
    const int revealDelays[3] = {30, 60, 90};

    // Colors to flicker between
    u16 flickerColorsA = RGB(31, 31, 0);
    u16 flickerColorsB = RGB(24, 24, 8);

    // Animate palette flicker and reveal
    for (int i = 0; i < totalFrames; i++) {
        waitForVBlank();

        // Alternate palette entries 3 and 4 every 10 frames
        if ((i / 10) % 2 == 0) {
            BG_PALETTE[3] = flickerColorsA;
            BG_PALETTE[4] = flickerColorsB;
        } else {
            BG_PALETTE[3] = flickerColorsB;
            BG_PALETTE[4] = flickerColorsA;
        }

        // Gradually reveal menu option tiles (white)
        if (i == revealDelays[0]) BG_PALETTE[16] = RGB(31, 31, 31);
        if (i == revealDelays[1]) BG_PALETTE[17] = RGB(31, 31, 31);
        if (i == revealDelays[2]) BG_PALETTE[18] = RGB(31, 31, 31);
    }

    // Load second splash screen with menu choices
    DMANow(3, (volatile void*)splashp3Pal, BG_PALETTE, 256);
    drawFullscreenImage4(splashp3Bitmap);

    // Reset game state
    resetGameState();
    state = SPLASH;
}

// Splash screen logic
void splashScreen() {
    static int t = 0;
    static int direction = 1;
    const int max = 30;

    static int* animatedIndices = 0;
    static int usingAltIndices = 0;

    // Handle down press to switch to alternative menu selection
    if (BUTTON_PRESSED(BUTTON_DOWN) && !usingAltIndices) {
        playSoundB(click_data, click_length, 0);
        for (int i = 0; i < 3; i++) {
            BG_PALETTE[primaryIndices[i]] = splashp3Pal[primaryIndices[i]];
        }
        animatedIndices = altIndices;
        usingAltIndices = 1;
        t = 0;
        direction = 1;
    }
    // Handle up press to return to primary menu selection
    else if (BUTTON_PRESSED(BUTTON_UP) && usingAltIndices) {
        playSoundB(click_data, click_length, 0);
        for (int i = 0; i < 3; i++) {
            BG_PALETTE[altIndices[i]] = splashp3Pal[altIndices[i]];
        }
        animatedIndices = primaryIndices;
        usingAltIndices = 0;
        t = 0;
        direction = 1;
    }

    // Default to primary menu if no selection exists
    if (!animatedIndices) {
        animatedIndices = primaryIndices;
    }

    // Animate flashing effect on selected menu tiles
    waitForVBlank();
    u16 target = BG_PALETTE[2];
    for (int i = 0; i < 3; i++) {
        int idx = animatedIndices[i];
        BG_PALETTE[idx] = blendColor(splashp3Pal[idx], target, t, max);
    }

    t += direction;
    if (t >= max || t <= 0) {
        direction = -direction;
    }

    // Confirm selection on START button press
    if (BUTTON_PRESSED(BUTTON_START)) {
        if (usingAltIndices) {
            goToGameInstructions();
        } else {
            goToStart();
        }
    }
}


// ============================= [ START PHASE STATE ] =============================
// Initialize the Start Phase from the beginning
void goToStart() {
    cheatOn = 0;
    resumingFromPause = 0;
    stopSounds();

    // Setup Mode 0 with BG1 enabled and sprites
    REG_DISPCTL = MODE(0) | BG_ENABLE(1) | SPRITE_ENABLE;
    hideSprites();

    // Setup BG1 control
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(18) | BG_SIZE_LARGE | BG_4BPP;

    // Load palette, tileset, and tilemap
    DMANow(3, (volatile void*)sTSPal, BG_PALETTE, sTSPalLen / 2);
    DMANow(3, (volatile void*)sTSTiles, &CHARBLOCK[0], sTSTilesLen / 2);
    DMANow(3, (volatile void*)sTMMap, &SCREENBLOCK[18], sTMLen / 2);

    // Save the initial tilemap block
    for (int y = 0; y < TILEMAP_SHIFT_ROWS; y++) {
        for (int x = 0; x < TILEMAP_SHIFT_COLS; x++) {
            int row = SHIFT_TILEMAP_START_ROW + y;
            int col = SHIFT_TILEMAP_START_COL + x;
            originalBlock[y][x] = SCREENBLOCK[SHIFT_SCREENBLOCK_INDEX].tilemap[row * 32 + col];
            currentBlock[y][x] = originalBlock[y][x];
        }
    }

    // Save original tiles for flashing
    int tileIds[4] = {84, 85, 116, 117};
    for (int t = 0; t < 4; t++) {
        for (int i = 0; i < 16; i++) {
            originalTiles[t][i] = CHARBLOCK[0].tileimg[tileIds[t] * 16 + i];
        }
    }

    // Initialize player and guide
    initStartPlayer();
    initGuideSprite();

    // Reset camera offsets
    hOff = 0;
    vOff = MAX_VOFF;

    // Play start area music
    playSoundA(animaljam_data, animaljam_length, 1);

    state = START;
}

// Initialize the Start Phase after first dialogue
void goToStartTwo() {
    unpauseSounds();
    resumingFromPause = 0;

    REG_DISPCTL = MODE(0) | BG_ENABLE(1) | SPRITE_ENABLE;
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(18) | BG_SIZE_LARGE | BG_4BPP;

    DMANow(3, (volatile void*)sTSPal, BG_PALETTE, sTSPalLen / 2);
    DMANow(3, (volatile void*)sTSTiles, &CHARBLOCK[0], sTSTilesLen / 2);
    DMANow(3, (volatile void*)sTMMap, &SCREENBLOCK[18], sTMLen / 2);

    initStartPlayer();
    initGuideSprite();

    // Set player closer to bridge
    startPlayer.worldY = 170;
    startPlayer.worldX = 430;
    next = 0;
    talkedToGuide = 1;

    hOff = 0;
    vOff = MAX_VOFF;

    // Play bridge unlock sound
    playSoundA(animaljam_data, animaljam_length, 1);
    playSoundB(action_data, action_length, 0);

    state = START;
}

// Initialize Start Phase after returning from Pause
void goToStartThree() {
    unpauseSounds();
    resumingFromPause = 0;

    REG_DISPCTL = MODE(0) | BG_ENABLE(1) | SPRITE_ENABLE;
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(18) | BG_SIZE_LARGE | BG_4BPP;

    DMANow(3, (volatile void*)sTSPal, BG_PALETTE, sTSPalLen / 2);
    DMANow(3, (volatile void*)sTSTiles, &CHARBLOCK[0], sTSTilesLen / 2);
    DMANow(3, (volatile void*)sTMMap, &SCREENBLOCK[18], sTMLen / 2);

    // Reapply bridge water if player hasn’t talked to the guide
    if (!talkedToGuide) {
        for (int y = 0; y < 10; y++) {
            for (int x = 0; x < 10; x++) {
                int r = y + 27;
                int c = 57 + x;
                int blk = 18 + (r / 32) * 2 + (c / 32);
                volatile u16* m = SCREENBLOCK[blk].tilemap;
                m[(r % 32) * 32 + (c % 32)] = TILEMAP_ENTRY_TILEID(364) | TILEMAP_ENTRY_PALROW(0);
            }
        }
        bridgeUncovered = 0;
    }

    initStartPlayer();
    initGuideSprite();

    // Restore player to saved position
    startPlayer.worldX = savedStartX;
    startPlayer.worldY = savedStartY;

    hOff = 0;
    vOff = MAX_VOFF;
    state = START;
}

// Start Phase main update loop
void start() {
    // Animate tilemap shift
    animateTilemapShift();

    // Update player and guide movement
    updateStartPlayer(&hOff, &vOff);
    updateGuideSprite();

    // Update background scroll
    REG_BG1HOFF = hOff;
    REG_BG1VOFF = vOff;

    // Draw player and guide
    drawStartPlayer();
    drawGuideSprite();

    // Push updated sprites to OAM
    DMANow(3, shadowOAM, OAM, 512);

    // Unlock bridge after meeting guide
    if (!talkedToGuide && !bridgeUncovered) {
        for (int y = 0; y < 10; y++) {
            for (int x = 0; x < 10; x++) {
                int r = y + 27;
                int c = 57 + x;
                int blk = 18 + (r / 32) * 2 + (c / 32);
                volatile u16* m = SCREENBLOCK[blk].tilemap;
                m[(r % 32) * 32 + (c % 32)] = TILEMAP_ENTRY_TILEID(364) | TILEMAP_ENTRY_PALROW(0);
            }
        }
        bridgeUncovered = 1;
    }

    // Check collision with guide to trigger dialogue
    if (checkPlayerGuideCollision()) {
        pauseSounds();
        goToStartInstructions();
    }

    // Move to Phase One after talking to guide
    if (next == 1 && talkedToGuide) {
        stopSounds();
        goToPhaseOne();
    }

    // Animate flashing bridge tiles
    tileFlashTimer++;
    if (tileFlashTimer > 15) {
        tileFlashTimer = 0;
        tileFlashState = !tileFlashState;
        flashColorInTile(84, 3, 4, tileFlashState, originalTiles[0]);
        flashColorInTile(85, 3, 4, tileFlashState, originalTiles[1]);
        flashColorInTile(116, 3, 4, tileFlashState, originalTiles[2]);
        flashColorInTile(117, 3, 4, tileFlashState, originalTiles[3]);
    }

    // Pause the game
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        savedStartX = startPlayer.worldX;
        savedStartY = startPlayer.worldY;
        prevState = state;
        pauseSounds();
        goToPause();
        return;
    }
}


// ============================= [ DIALOGUE STATE ] =============================

// Transition to the Start Phase dialogue instructions
void goToStartInstructions() {
    // Reset display control
    REG_DISPCTL = 0;
    REG_DISPCTL = MODE(0) | BG_ENABLE(0) | BG_ENABLE(1);

    // Load dialogue font palette into palette 0
    DMANow(3, (volatile void*)largemantilesPal, BG_PALETTE, largemantilesPalLen / 2);
    DMANow(3, (volatile void*)dialogueFontTiles, &CHARBLOCK[1], dialogueFontTilesLen / 2);

    // Load large character (guide) palette and tiles
    DMANow(3, (volatile void*)largemantilesTiles, &CHARBLOCK[3], largemantilesTilesLen / 2);

    // Setup background layers
    REG_BG0CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(20) | BG_SIZE_SMALL | BG_PRIORITY(1) | BG_4BPP;
    REG_BG1CNT = BG_CHARBLOCK(3) | BG_SCREENBLOCK(25) | BG_SIZE_SMALL | BG_PRIORITY(0) | BG_4BPP;

    // Load initial dialogue and background maps
    DMANow(3, (volatile void*)diaOneMap, &SCREENBLOCK[20], diaOneLen / 2);
    DMANow(3, (volatile void*)speakingManMap, &SCREENBLOCK[25], speakingManLen / 2);

    // Reset background offsets
    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;
    REG_BG1HOFF = 0;
    REG_BG1VOFF = 0;

    // Initialize dialogue page tracking
    startPage = 0;
    state = DIALOGUE;
}

// Handle dialogue page transitions
void startInstructions() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        startPage++;

        // Switch through dialogue pages
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

    // After final dialogue page, move to updated Start Phase
    if (begin) {
        begin = 0;
        goToStartTwo();
        state = START;
    }
}

// ============================= [ PHASE ONE STATE ] =============================

// Transition to Phase One (first climbing area)
void goToPhaseOne() {
    // Setup Mode 0 with backgrounds and sprites
    REG_DISPCTL = 0;
    REG_DISPCTL = MODE(0) | BG_ENABLE(0) | BG_ENABLE(1) | BG_ENABLE(2) | SPRITE_ENABLE;

    // Setup background layers
    REG_BG0CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(26) | BG_SIZE_WIDE | BG_PRIORITY(0) | BG_8BPP;
    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(28) | BG_SIZE_WIDE | BG_PRIORITY(1) | BG_8BPP;
    REG_BG2CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(30) | BG_SIZE_WIDE | BG_PRIORITY(2) | BG_8BPP;

    // Load background tiles and tilemaps
    DMANow(3, (volatile void*)foregroundPal, BG_PALETTE, foregroundPalLen / 2);
    DMANow(3, (volatile void*)foregroundTiles, &CHARBLOCK[1], foregroundTilesLen / 2);
    DMANow(3, (volatile void*)bgOneFrontMap, &SCREENBLOCK[26], bgOneFrontLen / 2);
    DMANow(3, (volatile void*)bgOneBackMap, &SCREENBLOCK[28], bgOneBackLen / 2);
    DMANow(3, (volatile void*)dayTMMap, &SCREENBLOCK[30], dayTMLen / 2);

    // Save original tile 358 pixels for fade animation
    u8* tileData = (u8*)&CHARBLOCK[1];
    for (int i = 0; i < 64; i++) {
        originalTile358[i] = tileData[TILE358_OFFSET + i];
    }

    tileFadeTimer = 0;
    tileFadeStep = 0;

    // Only reinitialize player if not coming from pause
    if (!resumingFromPause) {
        initPlayer();
        initHealth();
    }
    resumingFromPause = 0;

    playSoundA(phasetwoaudio_data, phasetwoaudio_length, 0);

    // Reset camera offsets
    hOff = 0;
    vOff = MAX_VOFF;

    state = PHASEONE;
}

// Phase One main gameplay loop
void phaseOne() {
    static int flashState = 0;
    static int flashTimer = 0;
    static int flashFrame = 0;
    static int isFlashing = 0;

    // Update player and health
    updatePlayer(&hOff, &vOff);
    updateHealth();

    // Background scrolling
    REG_BG0HOFF = hOff;
    REG_BG0VOFF = vOff;
    REG_BG1HOFF = hOff / 2;
    REG_BG1VOFF = vOff / 2;

    // Handle tilemap animation
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

                // Swap tiles 231 and 255
                if (tileId == 231) {
                    *tile = (255 | palRow);
                } else if (tileId == 255) {
                    *tile = (231 | palRow);
                }
            }
        }
    }

    // Handle gradual tile fading
    tileFadeTimer++;
    if (tileFadeTimer % 4 == 0 && tileFadeStep < 100) {
        tileFadeStep++;

        for (int i = 0; i < 64; i++) {
            u8 colorIndex = originalTile358[i];
            if (colorIndex == 0) continue;

            u16 origColor = BG_PALETTE[colorIndex];
            u16 newColor = blendColor(origColor, RGB(0, 0, 0), tileFadeStep, 2000);
            BG_PALETTE[colorIndex] = newColor;
        }
    }

    // Handle flashing background tiles after a delay
    static int swapTimer = 0;
    static int swapped = 0;
    static int swapDelayFrames = 0;
    static int hasFlashedOnce = 0;
    swapDelayFrames++;

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

            // Save current palette before flashing
            for (int i = 0; i < 256; i++) {
                savedFadePalette[i] = BG_PALETTE[i];
            }

            // Swap back layer tiles
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

    // Handle flashing palette
    if (isFlashing) {
        flashTimer++;

        if (flashTimer > 8) {
            flashTimer = 0;
            flashState = !flashState;
            flashFrame++;
        }

        if (flashFrame >= 4) {
            isFlashing = 0;

            // After 2 flashes, set palette to dark gray permanently
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
                    int r = RED_VAL(c) / 2;
                    int g = GREEN_VAL(c) / 2;
                    int b = BLUE_VAL(c) / 2;
                    BG_PALETTE[colorIndex] = RGB(r, g, b);
                } else {
                    BG_PALETTE[colorIndex] = savedFadePalette[colorIndex];
                }
            }
        }
    }

    // Draw all sprites
    shadowOAM[guide.oamIndex].attr0 = ATTR0_HIDE;
    drawPlayer();
    drawHealth();
    DMANow(3, shadowOAM, OAM, 512);

    // After updating and drawing player, etc.
    if (playHealth) {
        playSoundB(healthaudio_data, healthaudio_length, 0);
        playHealth = 0; // Reset flag after playing
    }

    // Handle game over condition
    if (gameOver) {
        goToLose();
    }

    // Handle win condition
    if (winPhaseOne) {
        goToPhaseTwoInstructions();
    }

    // Pause the game
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        prevState = state;
        goToPause();
        return;
    }
}

// ============================= [ DIALOGUE 2 STATE ] =============================

void goToPhaseTwoInstructions() {
    REG_DISPCTL = 0;
    REG_DISPCTL = MODE(0) | BG_ENABLE(0) | BG_ENABLE(1);

    stopSounds();
    playSoundA(fortnite_data, fortnite_length, 0);

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
    stopSounds();
    playSoundA(phaseoneaudio_data, phaseoneaudio_length, 1);
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

    if (playSound) {
        soundB.isPlaying = 0;
        REG_TM1CNT = TIMER_OFF;
        DMA[2].ctrl = 0;
        playSoundB(healthaudio_data, healthaudio_length, 0);
        playSound = 0;
    }
    
    if (gameOver) {
        goToLose();
    }
    
    if (winPhaseTwo) {
        goToPhaseThreeInstructions();
    }

    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        prevState = state;
        goToPause();
        return;
    }
    
}

// ============================= [ DIALOGUE 3 STATE ] =============================

void goToPhaseThreeInstructions() {
    REG_DISPCTL = 0;
    REG_DISPCTL = MODE(0) | BG_ENABLE(0) | BG_ENABLE(1);

    stopSounds();
    playSoundA(fortnite_data, fortnite_length, 0);

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
    stopSounds();
    playSoundA(phasethreeaudio_data, phasethreeaudio_length, 1);
    REG_DISPCTL = 0;
    REG_DISPCTL = MODE(0) | BG_ENABLE(0) | BG_ENABLE(1) | BG_ENABLE(2) | SPRITE_ENABLE;

    // Background
    // BG0: Front background
    REG_BG0CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(26) | BG_SIZE_WIDE | BG_PRIORITY(0) | BG_8BPP;
    // BG1: Parallax background
    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(28) | BG_SIZE_WIDE | BG_PRIORITY(1) | BG_8BPP;
    // BG2: Back day background
    REG_BG2CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(30) | BG_SIZE_WIDE | BG_PRIORITY(2) | BG_8BPP;

    // DMA Transfers for Background Resources
    // Common foreground tileset
    DMANow(3, (volatile void*)foregroundPal, BG_PALETTE, foregroundPalLen / 2);
    DMANow(3, (volatile void*)foregroundTiles, &CHARBLOCK[1], foregroundTilesLen / 2);
    // BG0 tile map
    DMANow(3, (volatile void*)bgThreeFrontMap, &SCREENBLOCK[26], bgOneFrontLen / 2);
    // BG1 tile map
    DMANow(3, (volatile void*)bgTwoBackMap, &SCREENBLOCK[28], bgOneBackLen / 2);
    // BG2 tile map
    DMANow(3, (volatile void*)dayTMMap, &SCREENBLOCK[30], dayTMLen / 2);

    // Initialize Game Elements
    initPlayerThree();
    initSnowThree();
    initCountdownTimer();

    // Initial Offsets
    hOff = 0;
    vOff = MAX_VOFF;

    // Set Game State
    state = PHASETHREE;
}

void phaseThree() {
    // Update Game Elements
    updatePlayerThree(&hOff, &vOff);
    updateSnowThree();
    updateHealth();
    updatePlayerPalette();

    // Oxygen Blur Effect (Last 3 Seconds)
    int secondsPassed = REG_TM3D;
    int countdown = 20 - secondsPassed;

    if (countdown <= 3 && countdown > 0) {
        int blurStrength = 6 - countdown;
        if (blurStrength > 5) blurStrength = 5;

        // Apply Mosaic Pixelation
        REG_MOSAIC = MOSAIC_BG(blurStrength, blurStrength, blurStrength, blurStrength);
        REG_BG0CNT |= BG_MOSAIC_ON;
        REG_BG1CNT |= BG_MOSAIC_ON;
        REG_BG2CNT |= BG_MOSAIC_ON;

        // Apply Blending Fade to Black
        REG_BLDCNT = (BLD_BG0 | BLD_BG1 | BLD_BG2) | (BLD_BLACK << 6);
        REG_BLDY = (6 - countdown) * 3; // Increase darkness toward max (15)
    } else if (countdown > 3) {
        // Disable Mosaic
        REG_MOSAIC = 0;
        REG_BG0CNT &= ~BG_MOSAIC_ON;
        REG_BG1CNT &= ~BG_MOSAIC_ON;
        REG_BG2CNT &= ~BG_MOSAIC_ON;

        // Disable Blending
        REG_BLDCNT = 0;
        REG_BLDY = 0;
    }

    // Left Wall Interaction
    if (leftWallTouched) {
        volatile u16* tilemap = SCREENBLOCK[26].tilemap;

        for (int row = 0; row < 32; row++) {
            for (int col = 0; col < 32; col++) {
                u16 tileEntry = tilemap[row * 32 + col];
                u16 tileID = tileEntry & 0x03FF; // Lower 10 bits
                u16 palRow = tileEntry & 0xFC00; // Palette row

                // Change specific tile IDs to a new tile
                if (tileID == 399) {
                    tilemap[row * 32 + col] = TILEMAP_ENTRY_TILEID(105) | palRow;
                }
            }
        }
    }

    // Background Scrolling
    // BG0: Regular speed
    REG_BG0HOFF = hOff;
    REG_BG0VOFF = vOff;
    // BG1: Half speed (parallax)
    REG_BG1HOFF = hOff / 2;
    REG_BG1VOFF = vOff / 2;

    // Sprite Drawing
    shadowOAM[guide.oamIndex].attr0 = ATTR0_HIDE; // Hide the guide sprite
    drawPlayerThree();
    drawSnowThree();
    drawHealth();
    drawTimer();
    DMANow(3, shadowOAM, OAM, 512);

    // Game Over Condition
    if (gameOver) {
        goToLose();
    }

    // Win Condition
    if (winPhaseThree) {
        goToWin();
    }
}

// ============================= [ PAUSE STATE ] =============================

// Transition to the Pause State
void goToPause() {
    // Reset display and set up Mode 0 with backgrounds and sprites
    REG_DISPCTL = 0;
    REG_DISPCTL = MODE(0) | BG_ENABLE(0) | BG_ENABLE(1) | BG_ENABLE(2) | SPRITE_ENABLE;

    // Initialize animated player sprite
    initAnimatedPlayer();

    // Setup background layers for pause screen
    REG_BG0CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(26) | BG_SIZE_WIDE | BG_PRIORITY(0) | BG_8BPP;
    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(28) | BG_SIZE_WIDE | BG_PRIORITY(1) | BG_8BPP;
    REG_BG2CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(30) | BG_SIZE_WIDE | BG_PRIORITY(2) | BG_8BPP;

    // Load palette and tilemaps
    DMANow(3, (volatile void*)foregroundPal, BG_PALETTE, foregroundPalLen / 2);
    DMANow(3, (volatile void*)foregroundTiles, &CHARBLOCK[1], foregroundTilesLen / 2);
    DMANow(3, (volatile void*)loseloseMap, &SCREENBLOCK[26], loseloseLen / 2);
    DMANow(3, (volatile void*)bgTwoBackMap, &SCREENBLOCK[28], bgOneBackLen / 2);
    DMANow(3, (volatile void*)dayTMMap, &SCREENBLOCK[30], dayTMLen / 2);

    hOff = 0;
    vOff = MAX_VOFF;

    state = PAUSE;
}

// Pause State main loop
void pause() {
    // Switch to Mode 4 and draw pause bitmap
    REG_DISPCTL = MODE(4) | BG_ENABLE(2);
    videoBuffer = FRONTBUFFER;

    DMANow(3, (volatile void*)startPausePal, BG_PALETTE, 256 | DMA_ON);
    drawFullscreenImage4(startPauseBitmap);

    state = PAUSE;

    // Resume game if SELECT is pressed
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        // Flag to skip re-initializing stuff
        resumingFromPause = 1;
        switch (prevState) {
            case PHASEONE: goToPhaseOne(); break;
            case PHASETWO: goToPhaseTwo(); break;
            case START: goToStartThree(); break;
            case DIALOGUE: goToStartInstructions(); break;
            case DIALOGUE2: goToPhaseTwoInstructions(); break;
            case DIALOGUE3: goToPhaseThreeInstructions(); break;
            default: goToStart(); break;
        }
        state = prevState;
    }
}

// ============================= [ LOSE STATE ] =============================

// Transition to the Lose State
void goToLose() {
    stopSounds();
    playSoundA(loseaudio_data, loseaudio_length, 1);

    // Reset any blending or mosaic effects
    REG_BLDCNT = 0;
    REG_BLDALPHA = 0;
    REG_BLDY = 0;
    REG_MOSAIC = 0;

    // Setup Mode 0 with backgrounds and sprites
    REG_DISPCTL = 0;
    REG_DISPCTL = MODE(0) | BG_ENABLE(0) | BG_ENABLE(1) | BG_ENABLE(2) | SPRITE_ENABLE;

    // Initialize animated player sprite
    initAnimatedPlayer();

    // Setup background layers
    REG_BG0CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(26) | BG_SIZE_WIDE | BG_PRIORITY(0) | BG_8BPP;
    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(28) | BG_SIZE_WIDE | BG_PRIORITY(1) | BG_8BPP;
    REG_BG2CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(30) | BG_SIZE_WIDE | BG_PRIORITY(2) | BG_8BPP;

    // Load palette and background tiles
    DMANow(3, (volatile void*)foregroundPal, BG_PALETTE, foregroundPalLen / 2);
    DMANow(3, (volatile void*)foregroundTiles, &CHARBLOCK[1], foregroundTilesLen / 2);

    // Load lose screen background maps
    DMANow(3, (volatile void*)loseloseMap, &SCREENBLOCK[26], loseloseLen / 2);
    DMANow(3, (volatile void*)bgAnimatedBackMap, &SCREENBLOCK[28], bgAnimatedBackLen / 2);
    DMANow(3, (volatile void*)duskTMMap, &SCREENBLOCK[30], duskTMLen / 2);

    hOff = 0;
    vOff = MAX_VOFF;

    state = LOSE;
}

// Lose State main loop
void lose() {
    hideSprites();

    // Parallax scrolling even during lose screen
    hOff++;

    REG_BG0HOFF = hOff;
    REG_BG0VOFF = vOff;
    REG_BG1HOFF = hOff / 2;
    REG_BG1VOFF = vOff / 2;
    REG_BG2HOFF = hOff / 4;
    REG_BG2VOFF = vOff / 4;

    // Update and draw animated player
    updateAnimatedPlayer();
    drawAnimatedPlayer();

    // Push updated sprites to OAM
    DMANow(3, shadowOAM, OAM, 128 * 4);

    // Restart game by returning to splash screen
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToSplashScreen();
        state = SPLASH;
    }
}

// ============================= [ WIN STATE ] =============================

// Transition to the Win State
void goToWin() {
    stopSounds();
    playSoundA(winaudio_data, winaudio_length, 1);

    // Setup Mode 0 with backgrounds and sprites
    REG_DISPCTL = 0;
    REG_DISPCTL = MODE(0) | BG_ENABLE(0) | BG_ENABLE(1) | BG_ENABLE(2) | SPRITE_ENABLE;

    // Initialize animated player sprite
    initAnimatedPlayer();
    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;

    // Set BG0, BG1, BG2 to 8BPP mode
    REG_BG0CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(26) | BG_SIZE_WIDE | BG_PRIORITY(0) | BG_8BPP;
    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(28) | BG_SIZE_WIDE | BG_PRIORITY(1) | BG_8BPP;
    REG_BG2CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(30) | BG_SIZE_WIDE | BG_PRIORITY(2) | BG_8BPP;

    // Load palette and background tiles
    DMANow(3, (volatile void*)foregroundPal, BG_PALETTE, foregroundPalLen / 2);
    DMANow(3, (volatile void*)foregroundTiles, &CHARBLOCK[1], foregroundTilesLen / 2);

    // Load win background maps
    DMANow(3, (volatile void*)winwinMap, &SCREENBLOCK[26], winwinLen / 2);
    DMANow(3, (volatile void*)bgAnimatedBackMap, &SCREENBLOCK[28], bgAnimatedBackLen / 2);
    DMANow(3, (volatile void*)dayTMMap, &SCREENBLOCK[30], dayTMLen / 2);

    hOff = 0;
    vOff = MAX_VOFF;

    state = WIN;
}

// Win State main loop
void win() {
    hideSprites();

    // Parallax scrolling on victory screen
    hOff++;

    REG_BG0HOFF = hOff;
    REG_BG0VOFF = vOff;
    REG_BG1HOFF = hOff / 2;
    REG_BG1VOFF = vOff / 2;
    REG_BG2HOFF = hOff / 4;
    REG_BG2VOFF = vOff / 4;

    // Update and draw the animated player
    updateAnimatedPlayer();
    drawAnimatedPlayer();

    // Push updated sprites to OAM
    DMANow(3, shadowOAM, OAM, 128 * 4);

    // Return to splash screen when START is pressed
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToSplashScreen();
        state = SPLASH;
    }
}

// ============================= [ GAME INSTRUCTIONS STATE ] =============================

// Transition to Game Instructions screen
void goToGameInstructions() {
    REG_DISPCTL = 0;
    REG_DISPCTL = MODE(0) | BG_ENABLE(0);

    // Load dialogue font and palette
    DMANow(3, (volatile void*)largemantilesPal, BG_PALETTE, largemantilesPalLen / 2);
    DMANow(3, (volatile void*)dialogueFontTiles, &CHARBLOCK[1], dialogueFontTilesLen / 2);

    // Setup BG0 for displaying instructions
    REG_BG0CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(20) | BG_SIZE_SMALL | BG_PRIORITY(0) | BG_4BPP;
    DMANow(3, (volatile void*)gameInstructionsMap, &SCREENBLOCK[20], gameInstructionsLen / 2);

    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;

    state = GAMEINSTRUCTIONS;
}

// Game Instructions main loop
void gameInstructions() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }
}

// ============================= [ RESET GAME STATE ] =============================

// Reset all game state variables
void resetGameState() {
    hOff = 0;
    vOff = 0;
    talkedToGuide = 0;
    begin = 0;
    startPage = 0;
    resumingFromPause = 0;

    // Reset win and lose flags
    gameOver = 0;
    winPhaseOne = 0;
    winPhaseTwo = 0;
    winPhaseThree = 0;

    // Reset dialogue/guide interaction
    next = 0;
    bridgeUncovered = 0;

    // Reset left wall touched flag (Phase Three)
    leftWallTouched = 0;

    // Reset tile animation variables
    tileFadeTimer = 0;
    tileFadeStep = 0;
    isFlashing = 0;
    flashFrame = 0;
    
    // Re-save the original bush tile 358 pixels
    u8* tileData = (u8*)&CHARBLOCK[1];
    for (int i = 0; i < 64; i++) {
        originalTile358[i] = tileData[TILE358_OFFSET + i];
    }

    // Reset splash menu selection
    splashSelection = MENU_START;
}