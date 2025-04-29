# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
# 17 "main.c"
# 1 "gba.h" 1




typedef signed char s8;
typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;
typedef signed int s32;
typedef unsigned int u32;
typedef signed long long s64;
typedef unsigned long long u64;






extern volatile unsigned short *videoBuffer;
# 48 "gba.h"
void waitForVBlank();


int collision(int x1, int y1, int width1, int height1, int x2, int y2, int width2, int height2);
# 80 "gba.h"
extern unsigned short oldButtons;
extern unsigned short buttons;




typedef volatile struct {
    volatile void* src;
    volatile void* dest;
    unsigned int ctrl;
} DMAChannel;
# 114 "gba.h"
void DMANow(int channel, volatile void* src, volatile void* dest, unsigned int ctrl);
# 18 "main.c" 2
# 1 "mode0.h" 1
# 51 "mode0.h"
typedef struct {
 u16 tileimg[8192];
} CB;



typedef struct {
 u16 tilemap[1024];
} SB;
# 19 "main.c" 2
# 1 "mode4.h" 1
# 9 "mode4.h"
void flipPages();
void setPixel4(int x, int y, u8 colorIndex);
void drawRect4(int x, int y, int width, int height, volatile u8 colorIndex);
void fillScreen4(volatile u8 colorIndex);
void drawImage4(int x, int y, int width, int height, const u8 *img, u8 transparentI);
void drawFullscreenImage4(const u16* image);

void drawChar4(int x, int y, char ch, u8 colorIndex);
void drawString4(int x, int y, char* str, u8 colorIndex);
# 20 "main.c" 2
# 1 "bgOneFront.h" 1







extern const unsigned short bgOneFrontMap[2048];
# 21 "main.c" 2
# 1 "bgOneBack.h" 1







extern const unsigned short bgOneBackMap[2048];
# 22 "main.c" 2
# 1 "bgTwoFront.h" 1







extern const unsigned short bgTwoFrontMap[2048];
# 23 "main.c" 2
# 1 "bgTwoBack.h" 1







extern const unsigned short bgTwoBackMap[2048];
# 24 "main.c" 2
# 1 "bgOneCM.h" 1
# 20 "bgOneCM.h"
extern const unsigned short bgOneCMBitmap[65536];
# 25 "main.c" 2
# 1 "tilesetOne.h" 1
# 21 "tilesetOne.h"
extern const unsigned short tilesetOneTiles[4096];


extern const unsigned short tilesetOnePal[256];
# 26 "main.c" 2
# 1 "phaseOne.h" 1

# 1 "sprites.h" 1
# 10 "sprites.h"
typedef struct {
  u16 attr0;
  u16 attr1;
  u16 attr2;
  u16 fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[128];

struct attr0 {
  u16 regular;
  u16 affine;
  u16 hide;
  u16 double_affine;
  u16 enable_alpha;
  u16 enable_window;
  u16 enable_mosaic;
  u16 fourBpp;
  u16 eightBpp;
  u16 square;
  u16 wide;
  u16 tall;
};

struct attr1 {
  u16 hflip;
  u16 vflip;
  u16 tiny;
  u16 small;
  u16 medium;
  u16 large;
};

struct oam_attrs {
  struct attr0 attr0;
  struct attr1 attr1;
};
# 94 "sprites.h"
void hideSprites();


typedef struct {
    int x;
    int y;
    int xVel;
    int yVel;
    int worldX, worldY;
    int width;
    int height;
    int timeUntilNextFrame;
    int direction;
    int isAnimating;
    int currentFrame;
    int numFrames;
    int active;
    u8 oamIndex;
} SPRITE;
# 3 "phaseOne.h" 2
# 18 "phaseOne.h"
int hikerFrameDelay;
int hikerFrameCounter;
int hikerFrame;
int hikerFrames[5];
int isDucking;
int gameOver;
int winPhaseOne;
int movedHorizontally;
int playHealth;

void initPlayer();
void updatePlayer(int* hOff, int* vOff);
void drawPlayer();
void resetPlayerState();
void cyclePaletteColors(void);

typedef enum {
    PLAYER_NORMAL,
    PLAYER_FALLING
} PlayerState;
# 27 "main.c" 2
# 1 "phaseTwo.h" 1
# 25 "phaseTwo.h"
SPRITE snows[3];

unsigned char colorAtTwo(int x, int y);
void initPlayerTwo();
void updatePlayerTwo(int* hOff, int* vOff);
void drawPlayerTwo();
void resetSnow(int i);
void resetPlayerState(void);
void initSnow();
void updateSnow();
void drawSnow();
int winPhaseTwo;
int playSound;
# 28 "main.c" 2
# 1 "phaseThree.h" 1
# 19 "phaseThree.h"
unsigned char colorAtThree(int x, int y);
unsigned char colorAtThreeCheat(int x, int y);
void initPlayerThree();
void updatePlayerThree(int* hOff, int* vOff);
void drawPlayerThree();
void initCountdownTimer(void);
void drawTimer(void);
void updatePlayerPalette();
unsigned short playerPaletteWork[256];
int winPhaseThree;
int leftWallTouched;

void initSnowThree();
void updateSnowThree();
void drawSnowThree();
void resetSnowThree(int i);
# 45 "phaseThree.h"
SPRITE snows[3];
# 29 "main.c" 2
# 1 "start.h" 1
# 9 "start.h"
int next;
int cheatOn;
int tileFlashTimer;
int tileFlashState;
void initStartPlayer();
void initGuideSprite();
void updateStartPlayer(int* hOff, int* vOff);
void updateGuideSprite();
void drawStartPlayer();
void drawGuideSprite();
int checkPlayerGuideCollision();
void fillTileWithColor(int tileId, u8 colorIndex);
void flashColorInTile(int tileId, u8 targetIndex, u8 flashIndex, int flashOn, u16* originalTileData);
# 30 "main.c" 2
# 1 "splashScreen.h" 1
# 21 "splashScreen.h"
extern const unsigned short splashScreenBitmap[19200];


extern const unsigned short splashScreenPal[256];
# 31 "main.c" 2
# 1 "snowtiles.h" 1
# 21 "snowtiles.h"
extern unsigned char snowtilesTiles[7680];


extern unsigned char snowtilesPal[512];
# 32 "main.c" 2
# 1 "townCM.h" 1
# 20 "townCM.h"
extern const unsigned char townCMBitmap[262144];
# 33 "main.c" 2
# 1 "town.h" 1







extern unsigned short townMap[1024];
# 34 "main.c" 2
# 1 "foreground.h" 1
# 21 "foreground.h"
extern const unsigned short foregroundTiles[12800];


extern const unsigned short foregroundPal[256];
# 35 "main.c" 2
# 1 "topdownrpg.h" 1
# 21 "topdownrpg.h"
extern const unsigned short topdownrpgTiles[32768];


extern const unsigned short topdownrpgPal[256];
# 36 "main.c" 2
# 1 "sTM.h" 1







extern const unsigned short sTMMap[4096];
# 37 "main.c" 2
# 1 "sTS.h" 1
# 21 "sTS.h"
extern const unsigned short sTSTiles[8192];


extern const unsigned short sTSPal[256];
# 38 "main.c" 2
# 1 "dayTM.h" 1







extern const unsigned short dayTMMap[2048];
# 39 "main.c" 2
# 1 "health.h" 1



void initHealth();
void updateHealth();
void drawHealth();
int healthBarFrames[9][2];
# 40 "main.c" 2
# 1 "bgThreeFront.h" 1







extern const unsigned short bgThreeFrontMap[2048];
# 41 "main.c" 2
# 1 "dialogueFont.h" 1
# 21 "dialogueFont.h"
extern const unsigned short dialogueFontTiles[16384];


extern const unsigned short dialogueFontPal[256];
# 42 "main.c" 2
# 1 "diaOne.h" 1







extern const unsigned short diaOneMap[1024];
# 43 "main.c" 2
# 1 "diaTwo.h" 1







extern const unsigned short diaTwoMap[1024];
# 44 "main.c" 2
# 1 "diaThree.h" 1







extern const unsigned short diaThreeMap[1024];
# 45 "main.c" 2
# 1 "diaFour.h" 1







extern const unsigned short diaFourMap[1024];
# 46 "main.c" 2
# 1 "diaFive.h" 1







extern const unsigned short diaFiveMap[1024];
# 47 "main.c" 2
# 1 "diaSix.h" 1







extern const unsigned short diaSixMap[1024];
# 48 "main.c" 2
# 1 "diaSeven.h" 1







extern const unsigned short diaSevenMap[1024];
# 49 "main.c" 2
# 1 "diaEight.h" 1







extern const unsigned short diaEightMap[1024];
# 50 "main.c" 2
# 1 "duskTM.h" 1







extern const unsigned short duskTMMap[2048];
# 51 "main.c" 2
# 1 "pause.h" 1







extern const unsigned short pauseMap[1024];
# 52 "main.c" 2
# 1 "splash1.h" 1
# 21 "splash1.h"
extern const unsigned short splash1Bitmap[19200];


extern const unsigned short splash1Pal[256];
# 53 "main.c" 2
# 1 "gameInstructions.h" 1







extern const unsigned short gameInstructionsMap[1024];
# 54 "main.c" 2
# 1 "animaljam.h" 1


extern const unsigned int animaljam_sampleRate;
extern const unsigned int animaljam_length;
extern const signed char animaljam_data[];
# 55 "main.c" 2
# 1 "digitalSound.h" 1



void setupSounds();
void playSoundA(const signed char* sound, int length, int loops);
void playSoundB(const signed char* sound, int length, int loops);

void pauseSounds();
void unpauseSounds();
void stopSounds();
# 49 "digitalSound.h"
typedef struct{
    const signed char* data;
    int dataLength;
    int isPlaying;
    int looping;
    int durationInVBlanks;
    int vBlankCount;
} SOUND;

SOUND soundA;
SOUND soundB;

void interruptHandler();
# 56 "main.c" 2
# 1 "gameInstructions2.h" 1







extern const unsigned short gameInstructions2Map[1024];
# 57 "main.c" 2
# 1 "gameInstructions3.h" 1







extern const unsigned short gameInstructions3Map[1024];
# 58 "main.c" 2
# 1 "action.h" 1


extern const unsigned int action_sampleRate;
extern const unsigned int action_length;
extern const signed char action_data[];
# 59 "main.c" 2
# 1 "speakingMan.h" 1







extern const unsigned short speakingManMap[1024];
# 60 "main.c" 2
# 1 "speakingMan2.h" 1







extern const unsigned short speakingMan2Map[1024];
# 61 "main.c" 2
# 1 "largemantiles.h" 1
# 21 "largemantiles.h"
extern const unsigned short largemantilesTiles[1024];


extern const unsigned short largemantilesPal[256];
# 62 "main.c" 2
# 1 "splashSound.h" 1


extern const unsigned int splashSound_sampleRate;
extern const unsigned int splashSound_length;
extern const signed char splashSound_data[];
# 63 "main.c" 2
# 1 "splashp1.h" 1
# 21 "splashp1.h"
extern const unsigned short splashp1Bitmap[19200];


extern const unsigned short splashp1Pal[256];
# 64 "main.c" 2
# 1 "splashp3.h" 1
# 21 "splashp3.h"
extern const unsigned short splashp3Bitmap[19200];


extern const unsigned short splashp3Pal[256];
# 65 "main.c" 2
# 1 "helper.h" 1







u16 currentBlock[4][4];
u16 originalBlock[4][4];
void animateTilemapShift();
unsigned short blendColor(unsigned short c1, unsigned short c2, int t, int max);
# 66 "main.c" 2
# 1 "animateStart.h" 1
# 21 "animateStart.h"
extern const unsigned short animateStartBitmap[19200];


extern const unsigned short animateStartPal[256];
# 67 "main.c" 2
# 1 "pOAudio.h" 1


extern const unsigned int pOAudio_sampleRate;
extern const unsigned int pOAudio_length;
extern const signed char pOAudio_data[];
# 68 "main.c" 2
# 1 "loselose.h" 1







extern const unsigned short loseloseMap[2048];
# 69 "main.c" 2
# 1 "startPause.h" 1
# 21 "startPause.h"
extern const unsigned short startPauseBitmap[19200];


extern const unsigned short startPausePal[256];
# 70 "main.c" 2
# 1 "winwin.h" 1







extern const unsigned short winwinMap[2048];
# 71 "main.c" 2
# 1 "bgAnimatedBack.h" 1







extern const unsigned short bgAnimatedBackMap[2048];
# 72 "main.c" 2
# 1 "click.h" 1


extern const unsigned int click_sampleRate;
extern const unsigned int click_length;
extern const signed char click_data[];
# 73 "main.c" 2
# 1 "phaseoneaudio.h" 1


extern const unsigned int phaseoneaudio_sampleRate;
extern const unsigned int phaseoneaudio_length;
extern const signed char phaseoneaudio_data[];
# 74 "main.c" 2
# 1 "phasetwoaudio.h" 1


extern const unsigned int phasetwoaudio_sampleRate;
extern const unsigned int phasetwoaudio_length;
extern const signed char phasetwoaudio_data[];
# 75 "main.c" 2
# 1 "phasethreeaudio.h" 1


extern const unsigned int phasethreeaudio_sampleRate;
extern const unsigned int phasethreeaudio_length;
extern const signed char phasethreeaudio_data[];
# 76 "main.c" 2
# 1 "winaudio.h" 1


extern const unsigned int winaudio_sampleRate;
extern const unsigned int winaudio_length;
extern const signed char winaudio_data[];
# 77 "main.c" 2
# 1 "loseaudio.h" 1


extern const unsigned int loseaudio_sampleRate;
extern const unsigned int loseaudio_length;
extern const signed char loseaudio_data[];
# 78 "main.c" 2
# 1 "falling.h" 1


extern const unsigned int falling_sampleRate;
extern const unsigned int falling_length;
extern const signed char falling_data[];
# 79 "main.c" 2
# 1 "healthaudio.h" 1


extern const unsigned int healthaudio_sampleRate;
extern const unsigned int healthaudio_length;
extern const signed char healthaudio_data[];
# 80 "main.c" 2
# 1 "fortnite.h" 1


extern const unsigned int fortnite_sampleRate;
extern const unsigned int fortnite_length;
extern const signed char fortnite_data[];
# 81 "main.c" 2
# 103 "main.c"
static int savedStartX;
static int savedStartY;


int shiftingRight = 1;
int shiftOffset = 0;
int shiftTimer = 0;
static int splashSelection;


u8 originalTile358[64];
int tileFadeTimer = 0;
int tileFadeStep = 0;
int isFlashing = 0;
int flashFrame = 0;
u16 savedFadePalette[256];


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
extern PlayerState playerState;


int hOff = 0;
int vOff = 0;


int talkedToGuide = 0;
int begin = 0;
int startPage = 0;
int resumingFromPause = 0;
int bridgeUncovered = 0;


u16 originalTiles[4][16];
int primaryIndices[3] = {13, 14, 15};
int altIndices[3] = {16, 17, 18};


extern SPRITE guide;
extern SPRITE startPlayer;
extern SPRITE player;



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



int main() {
    initialize();

    while (1) {
        oldButtons = buttons;
        buttons = (*(volatile unsigned short *)0x04000130);

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


    (*(volatile unsigned short*)0x4000004) |= (1 << 3);
    (*(volatile unsigned short*)0x4000200) |= (1 << 0);
    *((void (**)())0x3007FFC) = interruptHandler;
    (*(volatile unsigned short*)0x4000208) = 1;

    goToSplashScreen();
}



void goToSplashScreen() {

    (*(volatile unsigned short *)0x4000000) = ((4) & 7) | (1 << (8 + (2 % 4)));
    videoBuffer = ((unsigned short*) 0x06000000);
    stopSounds();


    DMANow(3, (volatile void*)splashp1Pal, ((unsigned short *)0x5000000), 256);
    drawFullscreenImage4(splashp1Bitmap);


    playSoundA(splashSound_data, splashSound_length, 1);

    const int fadeDuration = 120;
    u16 originalColors[17];


    for (int i = 0; i <= 16; i++) {
        originalColors[i] = splashp1Pal[i];
    }


    for (int t = 0; t <= fadeDuration; t++) {
        waitForVBlank();
        for (int i = 0; i <= 16; i++) {
            ((unsigned short *)0x5000000)[i] = blendColor(originalColors[i], (((0) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10), t, fadeDuration);
        }
    }


    for (int i = 0; i < 5; i++) {
        waitForVBlank();
    }


    DMANow(3, (volatile void*)animateStartPal, ((unsigned short *)0x5000000), 256);
    drawFullscreenImage4(animateStartBitmap);


    const int totalFrames = 180;
    const int revealDelays[3] = {30, 60, 90};


    u16 flickerColorsA = (((31) & 31) | ((31) & 31) << 5 | ((0) & 31) << 10);
    u16 flickerColorsB = (((24) & 31) | ((24) & 31) << 5 | ((8) & 31) << 10);


    for (int i = 0; i < totalFrames; i++) {
        waitForVBlank();


        if ((i / 10) % 2 == 0) {
            ((unsigned short *)0x5000000)[3] = flickerColorsA;
            ((unsigned short *)0x5000000)[4] = flickerColorsB;
        } else {
            ((unsigned short *)0x5000000)[3] = flickerColorsB;
            ((unsigned short *)0x5000000)[4] = flickerColorsA;
        }


        if (i == revealDelays[0]) ((unsigned short *)0x5000000)[16] = (((31) & 31) | ((31) & 31) << 5 | ((31) & 31) << 10);
        if (i == revealDelays[1]) ((unsigned short *)0x5000000)[17] = (((31) & 31) | ((31) & 31) << 5 | ((31) & 31) << 10);
        if (i == revealDelays[2]) ((unsigned short *)0x5000000)[18] = (((31) & 31) | ((31) & 31) << 5 | ((31) & 31) << 10);
    }


    DMANow(3, (volatile void*)splashp3Pal, ((unsigned short *)0x5000000), 256);
    drawFullscreenImage4(splashp3Bitmap);


    resetGameState();
    state = SPLASH;
}


void splashScreen() {
    static int t = 0;
    static int direction = 1;
    const int max = 30;

    static int* animatedIndices = 0;
    static int usingAltIndices = 0;


    if ((!(~(oldButtons) & ((1<<7))) && (~(buttons) & ((1<<7)))) && !usingAltIndices) {
        playSoundB(click_data, click_length, 0);
        for (int i = 0; i < 3; i++) {
            ((unsigned short *)0x5000000)[primaryIndices[i]] = splashp3Pal[primaryIndices[i]];
        }
        animatedIndices = altIndices;
        usingAltIndices = 1;
        t = 0;
        direction = 1;
    }

    else if ((!(~(oldButtons) & ((1<<6))) && (~(buttons) & ((1<<6)))) && usingAltIndices) {
        playSoundB(click_data, click_length, 0);
        for (int i = 0; i < 3; i++) {
            ((unsigned short *)0x5000000)[altIndices[i]] = splashp3Pal[altIndices[i]];
        }
        animatedIndices = primaryIndices;
        usingAltIndices = 0;
        t = 0;
        direction = 1;
    }


    if (!animatedIndices) {
        animatedIndices = primaryIndices;
    }


    waitForVBlank();
    u16 target = ((unsigned short *)0x5000000)[2];
    for (int i = 0; i < 3; i++) {
        int idx = animatedIndices[i];
        ((unsigned short *)0x5000000)[idx] = blendColor(splashp3Pal[idx], target, t, max);
    }

    t += direction;
    if (t >= max || t <= 0) {
        direction = -direction;
    }


    if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
        if (usingAltIndices) {
            goToGameInstructions();
        } else {
            goToStart();
        }
    }
}




void goToStart() {
    cheatOn = 0;
    resumingFromPause = 0;
    stopSounds();


    (*(volatile unsigned short *)0x4000000) = ((0) & 7) | (1 << (8 + (1 % 4))) | (1 << 12);
    hideSprites();


    (*(volatile unsigned short*) 0x400000A) = ((0) << 2) | ((18) << 8) | (3 << 14) | (0 << 7);


    DMANow(3, (volatile void*)sTSPal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, (volatile void*)sTSTiles, &((CB*) 0x6000000)[0], 16384 / 2);
    DMANow(3, (volatile void*)sTMMap, &((SB*) 0x6000000)[18], (8192) / 2);


    for (int y = 0; y < 4; y++) {
        for (int x = 0; x < 4; x++) {
            int row = 3 + y;
            int col = 20 + x;
            originalBlock[y][x] = ((SB*) 0x6000000)[21].tilemap[row * 32 + col];
            currentBlock[y][x] = originalBlock[y][x];
        }
    }


    for (int y = 0; y < 4; y++) {
        for (int x = 0; x < 4; x++) {
            currentBlock[y][x] = originalBlock[y][x];
        }
    }
    for (int y = 0; y < 4; y++) {
        for (int x = 0; x < 4; x++) {
            int row = 3 + y;
            int col = 20 + x;
            int blk = 21 + (row / 32) * 2 + (col / 32);
            int localRow = row % 32;
            int localCol = col % 32;
            ((SB*) 0x6000000)[blk].tilemap[localRow * 32 + localCol] = currentBlock[y][x];
        }
    }


    int tileIds[4] = {84, 85, 116, 117};
    for (int t = 0; t < 4; t++) {
        for (int i = 0; i < 16; i++) {
            originalTiles[t][i] = ((CB*) 0x6000000)[0].tileimg[tileIds[t] * 16 + i];
        }
    }


    initStartPlayer();
    initGuideSprite();


    hOff = 0;
    vOff = (256 - 160);


    playSoundA(animaljam_data, animaljam_length, 1);

    state = START;
}


void goToStartTwo() {
    unpauseSounds();
    resumingFromPause = 0;

    (*(volatile unsigned short *)0x4000000) = ((0) & 7) | (1 << (8 + (1 % 4))) | (1 << 12);
    (*(volatile unsigned short*) 0x400000A) = ((0) << 2) | ((18) << 8) | (3 << 14) | (0 << 7);

    DMANow(3, (volatile void*)sTSPal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, (volatile void*)sTSTiles, &((CB*) 0x6000000)[0], 16384 / 2);
    DMANow(3, (volatile void*)sTMMap, &((SB*) 0x6000000)[18], (8192) / 2);

    initStartPlayer();
    initGuideSprite();


    startPlayer.worldY = 170;
    startPlayer.worldX = 430;
    next = 0;
    talkedToGuide = 1;

    hOff = 0;
    vOff = (256 - 160);


    playSoundA(animaljam_data, animaljam_length, 1);
    playSoundB(action_data, action_length, 0);

    state = START;
}


void goToStartThree() {
    unpauseSounds();
    resumingFromPause = 0;

    (*(volatile unsigned short *)0x4000000) = ((0) & 7) | (1 << (8 + (1 % 4))) | (1 << 12);
    (*(volatile unsigned short*) 0x400000A) = ((0) << 2) | ((18) << 8) | (3 << 14) | (0 << 7);

    DMANow(3, (volatile void*)sTSPal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, (volatile void*)sTSTiles, &((CB*) 0x6000000)[0], 16384 / 2);
    DMANow(3, (volatile void*)sTMMap, &((SB*) 0x6000000)[18], (8192) / 2);


    if (!talkedToGuide) {
        for (int y = 0; y < 10; y++) {
            for (int x = 0; x < 10; x++) {
                int r = y + 27;
                int c = 57 + x;
                int blk = 18 + (r / 32) * 2 + (c / 32);
                volatile u16* m = ((SB*) 0x6000000)[blk].tilemap;
                m[(r % 32) * 32 + (c % 32)] = ((364) & 1023) | (((0) & 15) << 12);
            }
        }
        bridgeUncovered = 0;
    }

    initStartPlayer();
    initGuideSprite();


    startPlayer.worldX = savedStartX;
    startPlayer.worldY = savedStartY;

    hOff = 0;
    vOff = (256 - 160);
    state = START;
}


void start() {

    animateTilemapShift();


    updateStartPlayer(&hOff, &vOff);
    updateGuideSprite();


    (*(volatile unsigned short*) 0x04000014) = hOff;
    (*(volatile unsigned short*) 0x04000016) = vOff;


    drawStartPlayer();
    drawGuideSprite();


    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);


    if (!talkedToGuide && !bridgeUncovered) {
        for (int y = 0; y < 10; y++) {
            for (int x = 0; x < 10; x++) {
                int r = y + 27;
                int c = 57 + x;
                int blk = 18 + (r / 32) * 2 + (c / 32);
                volatile u16* m = ((SB*) 0x6000000)[blk].tilemap;
                m[(r % 32) * 32 + (c % 32)] = ((364) & 1023) | (((0) & 15) << 12);
            }
        }
        bridgeUncovered = 1;
    }


    if (checkPlayerGuideCollision()) {
        pauseSounds();
        goToStartInstructions();
    }


    if (next == 1 && talkedToGuide) {
        stopSounds();
        goToPhaseOne();
    }


    tileFlashTimer++;
    if (tileFlashTimer > 15) {
        tileFlashTimer = 0;
        tileFlashState = !tileFlashState;
        flashColorInTile(84, 3, 4, tileFlashState, originalTiles[0]);
        flashColorInTile(85, 3, 4, tileFlashState, originalTiles[1]);
        flashColorInTile(116, 3, 4, tileFlashState, originalTiles[2]);
        flashColorInTile(117, 3, 4, tileFlashState, originalTiles[3]);
    }


    if ((!(~(oldButtons) & ((1<<2))) && (~(buttons) & ((1<<2))))) {
        savedStartX = startPlayer.worldX;
        savedStartY = startPlayer.worldY;
        prevState = state;
        pauseSounds();
        goToPause();
        return;
    }
}





void goToStartInstructions() {

    (*(volatile unsigned short *)0x4000000) = 0;
    (*(volatile unsigned short *)0x4000000) = ((0) & 7) | (1 << (8 + (0 % 4))) | (1 << (8 + (1 % 4)));


    DMANow(3, (volatile void*)largemantilesPal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, (volatile void*)dialogueFontTiles, &((CB*) 0x6000000)[1], 32768 / 2);


    DMANow(3, (volatile void*)largemantilesTiles, &((CB*) 0x6000000)[3], 2048 / 2);


    (*(volatile unsigned short*) 0x4000008) = ((1) << 2) | ((20) << 8) | (0 << 14) | ((1) & 3) | (0 << 7);
    (*(volatile unsigned short*) 0x400000A) = ((3) << 2) | ((25) << 8) | (0 << 14) | ((0) & 3) | (0 << 7);


    DMANow(3, (volatile void*)diaOneMap, &((SB*) 0x6000000)[20], (2048) / 2);
    DMANow(3, (volatile void*)speakingManMap, &((SB*) 0x6000000)[25], (2048) / 2);


    (*(volatile unsigned short*) 0x04000010) = 0;
    (*(volatile unsigned short*) 0x04000012) = 0;
    (*(volatile unsigned short*) 0x04000014) = 0;
    (*(volatile unsigned short*) 0x04000016) = 0;


    startPage = 0;
    state = DIALOGUE;
}


void startInstructions() {
    if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
        startPage++;


        switch (startPage) {
            case 1:
                DMANow(3, (volatile void*)diaTwoMap, &((SB*) 0x6000000)[20], (2048) / 2);
                break;
            case 2:
                DMANow(3, (volatile void*)diaThreeMap, &((SB*) 0x6000000)[20], (2048) / 2);
                break;
            case 3:
                DMANow(3, (volatile void*)diaFourMap, &((SB*) 0x6000000)[20], (2048) / 2);
                break;
            case 4:
                DMANow(3, (volatile void*)diaFiveMap, &((SB*) 0x6000000)[20], (2048) / 2);
                break;
            case 5:
                DMANow(3, (volatile void*)diaSixMap, &((SB*) 0x6000000)[20], (2048) / 2);
                break;
            case 6:
                DMANow(3, (volatile void*)diaSevenMap, &((SB*) 0x6000000)[20], (2048) / 2);
                break;
            case 7:
                DMANow(3, (volatile void*)diaEightMap, &((SB*) 0x6000000)[20], (2048) / 2);
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




void goToPhaseOne() {

    (*(volatile unsigned short *)0x4000000) = 0;
    (*(volatile unsigned short *)0x4000000) = ((0) & 7) | (1 << (8 + (0 % 4))) | (1 << (8 + (1 % 4))) | (1 << (8 + (2 % 4))) | (1 << 12);


    (*(volatile unsigned short*) 0x4000008) = ((1) << 2) | ((26) << 8) | (1 << 14) | ((0) & 3) | (1 << 7);
    (*(volatile unsigned short*) 0x400000A) = ((1) << 2) | ((28) << 8) | (1 << 14) | ((1) & 3) | (1 << 7);
    (*(volatile unsigned short*) 0x400000C) = ((1) << 2) | ((30) << 8) | (1 << 14) | ((2) & 3) | (1 << 7);


    DMANow(3, (volatile void*)foregroundPal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, (volatile void*)foregroundTiles, &((CB*) 0x6000000)[1], 25600 / 2);
    DMANow(3, (volatile void*)bgOneFrontMap, &((SB*) 0x6000000)[26], (4096) / 2);
    DMANow(3, (volatile void*)bgOneBackMap, &((SB*) 0x6000000)[28], (4096) / 2);
    DMANow(3, (volatile void*)dayTMMap, &((SB*) 0x6000000)[30], (4096) / 2);


    u8* tileData = (u8*)&((CB*) 0x6000000)[1];
    for (int i = 0; i < 64; i++) {
        originalTile358[i] = tileData[(358 * 64) + i];
    }

    tileFadeTimer = 0;
    tileFadeStep = 0;


    if (!resumingFromPause) {
        initPlayer();
        initHealth();
    }
    resumingFromPause = 0;

    playSoundA(phasetwoaudio_data, phasetwoaudio_length, 0);


    hOff = 0;
    vOff = (256 - 160);

    state = PHASEONE;
}


void phaseOne() {
    static int flashState = 0;
    static int flashTimer = 0;
    static int flashFrame = 0;
    static int isFlashing = 0;


    updatePlayer(&hOff, &vOff);
    updateHealth();


    (*(volatile unsigned short*) 0x04000010) = hOff;
    (*(volatile unsigned short*) 0x04000012) = vOff;
    (*(volatile unsigned short*) 0x04000014) = hOff / 2;
    (*(volatile unsigned short*) 0x04000016) = vOff / 2;


    static int tileAnimTimer = 0;
    static int tileAnimState = 0;
    tileAnimTimer++;

    if (tileAnimTimer > 15) {
        tileAnimTimer = 0;
        tileAnimState = !tileAnimState;

        for (int row = 0; row < 32; row++) {
            for (int col = 0; col < 32; col++) {
                u16* tile = &((SB*) 0x6000000)[27].tilemap[row * 32 + col];
                u16 tileId = *tile & 0x03FF;
                u16 palRow = *tile & 0xFC00;


                if (tileId == 231) {
                    *tile = (255 | palRow);
                } else if (tileId == 255) {
                    *tile = (231 | palRow);
                }
            }
        }
    }


    tileFadeTimer++;
    if (tileFadeTimer % 4 == 0 && tileFadeStep < 100) {
        tileFadeStep++;

        for (int i = 0; i < 64; i++) {
            u8 colorIndex = originalTile358[i];
            if (colorIndex == 0) continue;

            u16 origColor = ((unsigned short *)0x5000000)[colorIndex];
            u16 newColor = blendColor(origColor, (((0) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10), tileFadeStep, 2000);
            ((unsigned short *)0x5000000)[colorIndex] = newColor;
        }
    }


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


            for (int i = 0; i < 256; i++) {
                savedFadePalette[i] = ((unsigned short *)0x5000000)[i];
            }


            for (int row = 0; row < 32; row++) {
                for (int col = 0; col < 32; col++) {
                    u16* tile = &((SB*) 0x6000000)[28].tilemap[row * 32 + col];
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

        if (flashTimer > 8) {
            flashTimer = 0;
            flashState = !flashState;
            flashFrame++;
        }

        if (flashFrame >= 4) {
            isFlashing = 0;


            for (int i = 0; i < 64; i++) {
                u8 colorIndex = originalTile358[i];
                if (colorIndex == 0) continue;
                ((unsigned short *)0x5000000)[colorIndex] = (((10) & 31) | ((10) & 31) << 5 | ((10) & 31) << 10);
            }
        } else {
            for (int i = 0; i < 64; i++) {
                u8 colorIndex = originalTile358[i];
                if (colorIndex == 0) continue;

                if (flashState) {
                    u16 c = savedFadePalette[colorIndex];
                    int r = ((c) & 0x1F) / 2;
                    int g = (((c) >> 5) & 0x1F) / 2;
                    int b = (((c) >> 10) & 0x1F) / 2;
                    ((unsigned short *)0x5000000)[colorIndex] = (((r) & 31) | ((g) & 31) << 5 | ((b) & 31) << 10);
                } else {
                    ((unsigned short *)0x5000000)[colorIndex] = savedFadePalette[colorIndex];
                }
            }
        }
    }


    shadowOAM[guide.oamIndex].attr0 = (2<<8);
    drawPlayer();
    drawHealth();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);


    if (playHealth) {
        playSoundB(healthaudio_data, healthaudio_length, 0);
        playHealth = 0;
    }


    if (gameOver) {
        goToLose();
    }


    if (winPhaseOne) {
        goToPhaseTwoInstructions();
    }


    if ((!(~(oldButtons) & ((1<<2))) && (~(buttons) & ((1<<2))))) {
        prevState = state;
        goToPause();
        return;
    }
}



void goToPhaseTwoInstructions() {
    (*(volatile unsigned short *)0x4000000) = 0;
    (*(volatile unsigned short *)0x4000000) = ((0) & 7) | (1 << (8 + (0 % 4))) | (1 << (8 + (1 % 4)));

    stopSounds();
    playSoundA(fortnite_data, fortnite_length, 0);

    DMANow(3, (volatile void*)largemantilesPal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, (volatile void*)dialogueFontTiles, &((CB*) 0x6000000)[1], 32768 / 2);

    (*(volatile unsigned short*) 0x4000008) = ((1) << 2) | ((20) << 8) | (0 << 14) | ((0) & 3) | (0 << 7);
    (*(volatile unsigned short*) 0x400000A) = ((3) << 2) | ((25) << 8) | (0 << 14) | ((0) & 3) | (0 << 7);

    DMANow(3, (volatile void*)speakingMan2Map, &((SB*) 0x6000000)[25], (2048) / 2);
    DMANow(3, (volatile void*)gameInstructions2Map, &((SB*) 0x6000000)[20], (2048) / 2);

    (*(volatile unsigned short*) 0x04000010) = 0;
    (*(volatile unsigned short*) 0x04000012) = 0;
    (*(volatile unsigned short*) 0x04000014) = 0;
    (*(volatile unsigned short*) 0x04000016) = 0;
    state = DIALOGUE2;
}

void phaseTwoInstructions() {
    if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
        goToPhaseTwo();
    }
}



void goToPhaseTwo() {
    stopSounds();
    playSoundA(phaseoneaudio_data, phaseoneaudio_length, 1);
    (*(volatile unsigned short *)0x4000000) = 0;
    (*(volatile unsigned short *)0x4000000) = ((0) & 7) | (1 << (8 + (0 % 4))) | (1 << (8 + (1 % 4))) | (1 << (8 + (2 % 4))) | (1 << 12);


    (*(volatile unsigned short*) 0x4000008) = ((1) << 2) | ((26) << 8) | (1 << 14) | ((0) & 3) | (1 << 7);
    (*(volatile unsigned short*) 0x400000A) = ((1) << 2) | ((28) << 8) | (1 << 14) | ((1) & 3) | (1 << 7);
    (*(volatile unsigned short*) 0x400000C) = ((1) << 2) | ((30) << 8) | (1 << 14) | ((2) & 3) | (1 << 7);


    DMANow(3, (volatile void*)foregroundPal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, (volatile void*)foregroundTiles, &((CB*) 0x6000000)[1], 25600 / 2);


    DMANow(3, (volatile void*)bgTwoFrontMap, &((SB*) 0x6000000)[26], (4096) / 2);
    DMANow(3, (volatile void*)bgTwoBackMap, &((SB*) 0x6000000)[28], (4096) / 2);
    DMANow(3, (volatile void*)duskTMMap, &((SB*) 0x6000000)[30], (4096) / 2);


    if (!resumingFromPause) {
        initPlayerTwo();
        initSnow();
    }

    resumingFromPause = 0;

    hOff = 0;
    vOff = (256 - 160);
    state = PHASETWO;
}


void phaseTwo() {


    updatePlayerTwo(&hOff, &vOff);
    updateSnow();
    updateHealth();


    (*(volatile unsigned short*) 0x04000010) = hOff;
    (*(volatile unsigned short*) 0x04000012) = vOff;


    (*(volatile unsigned short*) 0x04000014) = hOff / 2;
    (*(volatile unsigned short*) 0x04000016) = vOff / 2;


    shadowOAM[guide.oamIndex].attr0 = (2<<8);
    drawPlayerTwo();
    drawSnow();
    drawHealth();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);

    if (playSound) {
        soundB.isPlaying = 0;
        *(volatile unsigned short*)0x4000106 = (0<<7);
        ((DMAChannel*)0x040000B0)[2].ctrl = 0;
        playSoundB(healthaudio_data, healthaudio_length, 0);
        playSound = 0;
    }

    if (gameOver) {
        goToLose();
    }

    if (winPhaseTwo) {
        goToPhaseThreeInstructions();
    }

    if ((!(~(oldButtons) & ((1<<2))) && (~(buttons) & ((1<<2))))) {
        prevState = state;
        goToPause();
        return;
    }

}



void goToPhaseThreeInstructions() {
    (*(volatile unsigned short *)0x4000000) = 0;
    (*(volatile unsigned short *)0x4000000) = ((0) & 7) | (1 << (8 + (0 % 4))) | (1 << (8 + (1 % 4)));

    stopSounds();
    playSoundA(fortnite_data, fortnite_length, 0);

    DMANow(3, (volatile void*)largemantilesPal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, (volatile void*)dialogueFontTiles, &((CB*) 0x6000000)[1], 32768 / 2);

    (*(volatile unsigned short*) 0x4000008) = ((1) << 2) | ((20) << 8) | (0 << 14) | ((0) & 3) | (0 << 7);
    (*(volatile unsigned short*) 0x400000A) = ((3) << 2) | ((25) << 8) | (0 << 14) | ((0) & 3) | (0 << 7);

    DMANow(3, (volatile void*)speakingMan2Map, &((SB*) 0x6000000)[25], (2048) / 2);
    DMANow(3, (volatile void*)gameInstructions3Map, &((SB*) 0x6000000)[20], (2048) / 2);

    (*(volatile unsigned short*) 0x04000010) = 0;
    (*(volatile unsigned short*) 0x04000012) = 0;
    (*(volatile unsigned short*) 0x04000014) = 0;
    (*(volatile unsigned short*) 0x04000016) = 0;

    state = DIALOGUE3;
}

void phaseThreeInstructions() {
    if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
        goToPhaseThree();
    }
}



void goToPhaseThree() {
    stopSounds();
    playSoundA(phasethreeaudio_data, phasethreeaudio_length, 1);
    (*(volatile unsigned short *)0x4000000) = 0;
    (*(volatile unsigned short *)0x4000000) = ((0) & 7) | (1 << (8 + (0 % 4))) | (1 << (8 + (1 % 4))) | (1 << (8 + (2 % 4))) | (1 << 12);



    (*(volatile unsigned short*) 0x4000008) = ((1) << 2) | ((26) << 8) | (1 << 14) | ((0) & 3) | (1 << 7);

    (*(volatile unsigned short*) 0x400000A) = ((1) << 2) | ((28) << 8) | (1 << 14) | ((1) & 3) | (1 << 7);

    (*(volatile unsigned short*) 0x400000C) = ((1) << 2) | ((30) << 8) | (1 << 14) | ((2) & 3) | (1 << 7);



    DMANow(3, (volatile void*)foregroundPal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, (volatile void*)foregroundTiles, &((CB*) 0x6000000)[1], 25600 / 2);

    DMANow(3, (volatile void*)bgThreeFrontMap, &((SB*) 0x6000000)[26], (4096) / 2);

    DMANow(3, (volatile void*)bgTwoBackMap, &((SB*) 0x6000000)[28], (4096) / 2);

    DMANow(3, (volatile void*)dayTMMap, &((SB*) 0x6000000)[30], (4096) / 2);


    initPlayerThree();
    initSnowThree();
    initCountdownTimer();


    hOff = 0;
    vOff = (256 - 160);


    state = PHASETHREE;
}

void phaseThree() {

    updatePlayerThree(&hOff, &vOff);
    updateSnowThree();
    updateHealth();
    updatePlayerPalette();


    int secondsPassed = *(volatile unsigned short*)0x400010C;
    int countdown = 20 - secondsPassed;

    if (countdown <= 3 && countdown > 0) {
        int blurStrength = 6 - countdown;
        if (blurStrength > 5) blurStrength = 5;


        (*(volatile unsigned short*) 0x400004C) = ((blurStrength) | ((blurStrength) << 4) | ((blurStrength) << 8) | ((blurStrength) << 12));
        (*(volatile unsigned short*) 0x4000008) |= (1<<6);
        (*(volatile unsigned short*) 0x400000A) |= (1<<6);
        (*(volatile unsigned short*) 0x400000C) |= (1<<6);


        (*(volatile unsigned short*)0x4000050) = ((1<<0) | (1<<1) | (1<<2)) | (3 << 6);
        (*(volatile unsigned short*)0x4000052) = (6 - countdown) * 3;
    } else if (countdown > 3) {

        (*(volatile unsigned short*) 0x400004C) = 0;
        (*(volatile unsigned short*) 0x4000008) &= ~(1<<6);
        (*(volatile unsigned short*) 0x400000A) &= ~(1<<6);
        (*(volatile unsigned short*) 0x400000C) &= ~(1<<6);


        (*(volatile unsigned short*)0x4000050) = 0;
        (*(volatile unsigned short*)0x4000052) = 0;
    }


    if (leftWallTouched) {
        volatile u16* tilemap = ((SB*) 0x6000000)[26].tilemap;

        for (int row = 0; row < 32; row++) {
            for (int col = 0; col < 32; col++) {
                u16 tileEntry = tilemap[row * 32 + col];
                u16 tileID = tileEntry & 0x03FF;
                u16 palRow = tileEntry & 0xFC00;


                if (tileID == 399) {
                    tilemap[row * 32 + col] = ((105) & 1023) | palRow;
                }
            }
        }
    }



    (*(volatile unsigned short*) 0x04000010) = hOff;
    (*(volatile unsigned short*) 0x04000012) = vOff;

    (*(volatile unsigned short*) 0x04000014) = hOff / 2;
    (*(volatile unsigned short*) 0x04000016) = vOff / 2;


    shadowOAM[guide.oamIndex].attr0 = (2<<8);
    drawPlayerThree();
    drawSnowThree();
    drawHealth();
    drawTimer();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);


    if (gameOver) {
        goToLose();
    }


    if (winPhaseThree) {
        goToWin();
    }
}




void goToPause() {

    (*(volatile unsigned short *)0x4000000) = 0;
    (*(volatile unsigned short *)0x4000000) = ((0) & 7) | (1 << (8 + (0 % 4))) | (1 << (8 + (1 % 4))) | (1 << (8 + (2 % 4))) | (1 << 12);


    initAnimatedPlayer();


    (*(volatile unsigned short*) 0x4000008) = ((1) << 2) | ((26) << 8) | (1 << 14) | ((0) & 3) | (1 << 7);
    (*(volatile unsigned short*) 0x400000A) = ((1) << 2) | ((28) << 8) | (1 << 14) | ((1) & 3) | (1 << 7);
    (*(volatile unsigned short*) 0x400000C) = ((1) << 2) | ((30) << 8) | (1 << 14) | ((2) & 3) | (1 << 7);


    DMANow(3, (volatile void*)foregroundPal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, (volatile void*)foregroundTiles, &((CB*) 0x6000000)[1], 25600 / 2);
    DMANow(3, (volatile void*)loseloseMap, &((SB*) 0x6000000)[26], (4096) / 2);
    DMANow(3, (volatile void*)bgTwoBackMap, &((SB*) 0x6000000)[28], (4096) / 2);
    DMANow(3, (volatile void*)dayTMMap, &((SB*) 0x6000000)[30], (4096) / 2);

    hOff = 0;
    vOff = (256 - 160);

    state = PAUSE;
}


void pause() {

    (*(volatile unsigned short *)0x4000000) = ((4) & 7) | (1 << (8 + (2 % 4)));
    videoBuffer = ((unsigned short*) 0x06000000);

    DMANow(3, (volatile void*)startPausePal, ((unsigned short *)0x5000000), 256 | (1 << 31));
    drawFullscreenImage4(startPauseBitmap);

    state = PAUSE;


    if ((!(~(oldButtons) & ((1<<2))) && (~(buttons) & ((1<<2))))) {

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




void goToLose() {
    stopSounds();
    playSoundA(loseaudio_data, loseaudio_length, 1);


    (*(volatile unsigned short*)0x4000050) = 0;
    (*(volatile unsigned short*)0x4000052) = 0;
    (*(volatile unsigned short*)0x4000052) = 0;
    (*(volatile unsigned short*) 0x400004C) = 0;


    (*(volatile unsigned short *)0x4000000) = 0;
    (*(volatile unsigned short *)0x4000000) = ((0) & 7) | (1 << (8 + (0 % 4))) | (1 << (8 + (1 % 4))) | (1 << (8 + (2 % 4))) | (1 << 12);


    initAnimatedPlayer();


    (*(volatile unsigned short*) 0x4000008) = ((1) << 2) | ((26) << 8) | (1 << 14) | ((0) & 3) | (1 << 7);
    (*(volatile unsigned short*) 0x400000A) = ((1) << 2) | ((28) << 8) | (1 << 14) | ((1) & 3) | (1 << 7);
    (*(volatile unsigned short*) 0x400000C) = ((1) << 2) | ((30) << 8) | (1 << 14) | ((2) & 3) | (1 << 7);


    DMANow(3, (volatile void*)foregroundPal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, (volatile void*)foregroundTiles, &((CB*) 0x6000000)[1], 25600 / 2);


    DMANow(3, (volatile void*)loseloseMap, &((SB*) 0x6000000)[26], (4096) / 2);
    DMANow(3, (volatile void*)bgAnimatedBackMap, &((SB*) 0x6000000)[28], (4096) / 2);
    DMANow(3, (volatile void*)duskTMMap, &((SB*) 0x6000000)[30], (4096) / 2);

    hOff = 0;
    vOff = (256 - 160);

    state = LOSE;
}


void lose() {
    hideSprites();


    hOff++;

    (*(volatile unsigned short*) 0x04000010) = hOff;
    (*(volatile unsigned short*) 0x04000012) = vOff;
    (*(volatile unsigned short*) 0x04000014) = hOff / 2;
    (*(volatile unsigned short*) 0x04000016) = vOff / 2;
    (*(volatile unsigned short*) 0x04000018) = hOff / 4;
    (*(volatile unsigned short*) 0x0400001A) = vOff / 4;


    updateAnimatedPlayer();
    drawAnimatedPlayer();


    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);


    if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
        goToSplashScreen();
        state = SPLASH;
    }
}




void goToWin() {
    stopSounds();
    playSoundA(winaudio_data, winaudio_length, 1);


    (*(volatile unsigned short *)0x4000000) = 0;
    (*(volatile unsigned short *)0x4000000) = ((0) & 7) | (1 << (8 + (0 % 4))) | (1 << (8 + (1 % 4))) | (1 << (8 + (2 % 4))) | (1 << 12);


    initAnimatedPlayer();
    (*(volatile unsigned short*) 0x04000010) = 0;
    (*(volatile unsigned short*) 0x04000012) = 0;


    (*(volatile unsigned short*) 0x4000008) = ((1) << 2) | ((26) << 8) | (1 << 14) | ((0) & 3) | (1 << 7);
    (*(volatile unsigned short*) 0x400000A) = ((1) << 2) | ((28) << 8) | (1 << 14) | ((1) & 3) | (1 << 7);
    (*(volatile unsigned short*) 0x400000C) = ((1) << 2) | ((30) << 8) | (1 << 14) | ((2) & 3) | (1 << 7);


    DMANow(3, (volatile void*)foregroundPal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, (volatile void*)foregroundTiles, &((CB*) 0x6000000)[1], 25600 / 2);


    DMANow(3, (volatile void*)winwinMap, &((SB*) 0x6000000)[26], (4096) / 2);
    DMANow(3, (volatile void*)bgAnimatedBackMap, &((SB*) 0x6000000)[28], (4096) / 2);
    DMANow(3, (volatile void*)dayTMMap, &((SB*) 0x6000000)[30], (4096) / 2);

    hOff = 0;
    vOff = (256 - 160);

    state = WIN;
}


void win() {
    hideSprites();


    hOff++;

    (*(volatile unsigned short*) 0x04000010) = hOff;
    (*(volatile unsigned short*) 0x04000012) = vOff;
    (*(volatile unsigned short*) 0x04000014) = hOff / 2;
    (*(volatile unsigned short*) 0x04000016) = vOff / 2;
    (*(volatile unsigned short*) 0x04000018) = hOff / 4;
    (*(volatile unsigned short*) 0x0400001A) = vOff / 4;


    updateAnimatedPlayer();
    drawAnimatedPlayer();


    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);


    if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
        goToSplashScreen();
        state = SPLASH;
    }
}




void goToGameInstructions() {
    (*(volatile unsigned short *)0x4000000) = 0;
    (*(volatile unsigned short *)0x4000000) = ((0) & 7) | (1 << (8 + (0 % 4)));


    DMANow(3, (volatile void*)largemantilesPal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, (volatile void*)dialogueFontTiles, &((CB*) 0x6000000)[1], 32768 / 2);


    (*(volatile unsigned short*) 0x4000008) = ((1) << 2) | ((20) << 8) | (0 << 14) | ((0) & 3) | (0 << 7);
    DMANow(3, (volatile void*)gameInstructionsMap, &((SB*) 0x6000000)[20], (2048) / 2);

    (*(volatile unsigned short*) 0x04000010) = 0;
    (*(volatile unsigned short*) 0x04000012) = 0;

    state = GAMEINSTRUCTIONS;
}


void gameInstructions() {
    if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
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


    gameOver = 0;
    winPhaseOne = 0;
    winPhaseTwo = 0;
    winPhaseThree = 0;


    next = 0;
    bridgeUncovered = 0;


    leftWallTouched = 0;


    tileFadeTimer = 0;
    tileFadeStep = 0;
    isFlashing = 0;
    flashFrame = 0;

    int rowStart = 3;
    int colStart = 20;

    for (int y = 0; y < 4; y++) {
        for (int x = 0; x < 4; x++) {

            currentBlock[y][x] = originalBlock[y][x];
        }
    }


    for (int y = 0; y < 4; y++) {
        for (int x = 0; x < 4; x++) {
            int row = rowStart + y;
            int col = colStart + x;
            int blk = 21 + (row / 32) * 2 + (col / 32);
            int localRow = row % 32;
            int localCol = col % 32;
            ((SB*) 0x6000000)[blk].tilemap[localRow * 32 + localCol] = currentBlock[y][x];
        }
    }


    splashSelection = 0;
}
