# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
# 26 "main.c"
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
# 37 "gba.h"
void waitForVBlank();


int collision(int x1, int y1, int width1, int height1, int x2, int y2, int width2, int height2);
# 69 "gba.h"
extern unsigned short oldButtons;
extern unsigned short buttons;




typedef volatile struct {
    volatile void* src;
    volatile void* dest;
    unsigned int ctrl;
} DMAChannel;
# 103 "gba.h"
void DMANow(int channel, volatile void* src, volatile void* dest, unsigned int ctrl);
# 27 "main.c" 2
# 1 "mode0.h" 1
# 32 "mode0.h"
typedef struct {
 u16 tileimg[8192];
} CB;



typedef struct {
 u16 tilemap[1024];
} SB;
# 28 "main.c" 2
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
# 29 "main.c" 2
# 1 "bgOneFront.h" 1







extern const unsigned short bgOneFrontMap[2048];
# 30 "main.c" 2
# 1 "bgOneBack.h" 1







extern const unsigned short bgOneBackMap[2048];
# 31 "main.c" 2
# 1 "bgTwoFront.h" 1







extern const unsigned short bgTwoFrontMap[2048];
# 32 "main.c" 2
# 1 "bgTwoBack.h" 1







extern const unsigned short bgTwoBackMap[2048];
# 33 "main.c" 2
# 1 "bgOneCM.h" 1
# 20 "bgOneCM.h"
extern const unsigned short bgOneCMBitmap[65536];
# 34 "main.c" 2
# 1 "tilesetOne.h" 1
# 21 "tilesetOne.h"
extern const unsigned short tilesetOneTiles[4096];


extern const unsigned short tilesetOnePal[256];
# 35 "main.c" 2
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
# 93 "sprites.h"
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
# 20 "phaseOne.h"
int hikerFrameDelay;
int hikerFrameCounter;
int hikerFrame;
int hikerFrames[3];
int isDucking;
int gameOver;
int winPhaseOne;
int sbb;

void initPlayer();
void updatePlayer(int* hOff, int* vOff);
void drawPlayer();
void resetPlayerState();
unsigned char colorAt(int x, int y);
# 36 "main.c" 2
# 1 "phaseTwo.h" 1
# 25 "phaseTwo.h"
SPRITE snows[3];

unsigned char colorAtTwo(int x, int y);
void initPlayerTwo();
void updatePlayerTwo(int* hOff, int* vOff);
void drawPlayerTwo();
void initSnow();
void updateSnow();
void drawSnow();
int winPhaseTwo;
# 37 "main.c" 2
# 1 "phaseThree.h" 1
# 21 "phaseThree.h"
unsigned char colorAtThree(int x, int y);
void initPlayerThree();
void updatePlayerThree(int* hOff, int* vOff);
void drawPlayerThree();
void initCountdownTimer(void);
void drawTimer(void);
void updatePlayerPalette();
unsigned short playerPaletteWork[256];
int winPhaseThree;
# 38 "main.c" 2
# 1 "start.h" 1
# 9 "start.h"
int next;

void initStartPlayer();
void initGuideSprite();
void updateStartPlayer(int* hOff, int* vOff);
void updateGuideSprite();
void drawStartPlayer();
void drawGuideSprite();
int checkPlayerGuideCollision();
# 39 "main.c" 2
# 1 "splashScreen.h" 1
# 21 "splashScreen.h"
extern const unsigned short splashScreenBitmap[19200];


extern const unsigned short splashScreenPal[256];
# 40 "main.c" 2
# 1 "snowtiles.h" 1
# 21 "snowtiles.h"
extern unsigned char snowtilesTiles[7680];


extern unsigned char snowtilesPal[512];
# 41 "main.c" 2
# 1 "townCM.h" 1
# 20 "townCM.h"
extern const unsigned char townCMBitmap[262144];
# 42 "main.c" 2
# 1 "town.h" 1







extern unsigned short townMap[1024];
# 43 "main.c" 2
# 1 "foreground.h" 1
# 21 "foreground.h"
extern const unsigned short foregroundTiles[12800];


extern const unsigned short foregroundPal[256];
# 44 "main.c" 2
# 1 "topdownrpg.h" 1
# 21 "topdownrpg.h"
extern const unsigned short topdownrpgTiles[32768];


extern const unsigned short topdownrpgPal[256];
# 45 "main.c" 2
# 1 "sTM.h" 1







extern const unsigned short sTMMap[4096];
# 46 "main.c" 2
# 1 "sTS.h" 1
# 21 "sTS.h"
extern const unsigned short sTSTiles[8192];


extern const unsigned short sTSPal[256];
# 47 "main.c" 2
# 1 "dayTM.h" 1







extern const unsigned short dayTMMap[2048];
# 48 "main.c" 2
# 1 "health.h" 1



void initHealth();
void updateHealth();
void drawHealth();
int healthBarFrames[9][2];
# 49 "main.c" 2
# 1 "bgThreeFront.h" 1







extern const unsigned short bgThreeFrontMap[2048];
# 50 "main.c" 2
# 1 "dialogueFont.h" 1
# 21 "dialogueFont.h"
extern const unsigned short dialogueFontTiles[16384];


extern const unsigned short dialogueFontPal[256];
# 51 "main.c" 2
# 1 "diaOne.h" 1







extern const unsigned short diaOneMap[1024];
# 52 "main.c" 2
# 1 "diaTwo.h" 1







extern const unsigned short diaTwoMap[1024];
# 53 "main.c" 2
# 1 "diaThree.h" 1







extern const unsigned short diaThreeMap[1024];
# 54 "main.c" 2
# 1 "diaFour.h" 1







extern const unsigned short diaFourMap[1024];
# 55 "main.c" 2
# 1 "diaFive.h" 1







extern const unsigned short diaFiveMap[1024];
# 56 "main.c" 2
# 1 "diaSix.h" 1







extern const unsigned short diaSixMap[1024];
# 57 "main.c" 2
# 1 "diaSeven.h" 1







extern const unsigned short diaSevenMap[1024];
# 58 "main.c" 2
# 1 "diaEight.h" 1







extern const unsigned short diaEightMap[1024];
# 59 "main.c" 2




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
                lose();
                break;
        }

        waitForVBlank();
    }
}



void initialize() {
    mgba_open();
    goToSplashScreen();
}

void goToSplashScreen() {
    (*(volatile unsigned short *)0x4000000) = ((4) & 7) | (1 << (8 + (2 % 4)));
    videoBuffer = ((unsigned short*) 0x06000000);

    DMANow(3, (volatile void*)splashScreenPal, ((unsigned short *)0x5000000), 256 | (1 << 31));
    drawFullscreenImage4(splashScreenBitmap);
    drawString4(100, 70, "SPLASH", 15);


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
    if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
        goToStart();
        state = START;
    }
}



void goToStart() {
    (*(volatile unsigned short *)0x4000000) = 0;
    hideSprites();
    (*(volatile unsigned short *)0x4000000) = ((0) & 7) | (1 << (8 + (1 % 4))) | (1 << 12);
    (*(volatile unsigned short*) 0x400000A) = ((0) << 2) | ((18) << 8) | (3 << 14) | (0 << 7);

    DMANow(3, sTSPal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, sTSTiles, &((CB*) 0x6000000)[0], 16384 / 2);
    DMANow(3, sTMMap, &((SB*) 0x6000000)[18], (8192) / 2);

    initStartPlayer();
    initGuideSprite();

    hOff = 0;
    vOff = (256 - 160);
    state = START;
}

void goToStartTwo() {
    (*(volatile unsigned short *)0x4000000) = ((0) & 7) | (1 << (8 + (1 % 4))) | (1 << 12);
    (*(volatile unsigned short*) 0x400000A) = ((0) << 2) | ((18) << 8) | (3 << 14) | (0 << 7);

    DMANow(3, sTSPal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, sTSTiles, &((CB*) 0x6000000)[0], 16384 / 2);
    DMANow(3, sTMMap, &((SB*) 0x6000000)[18], (8192) / 2);

    initStartPlayer();
    initGuideSprite();
    startPlayer.worldX = 134;
    startPlayer.worldX = 436;
    next = 0;
    talkedToGuide = 1;
    hOff = 0;
    vOff = (256 - 160);
    state = START;
}

void start() {
    updateStartPlayer(&hOff, &vOff);
    updateGuideSprite();
    (*(volatile unsigned short*) 0x04000014) = hOff;
    (*(volatile unsigned short*) 0x04000016) = vOff;

    drawStartPlayer();
    drawGuideSprite();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);

    if (checkPlayerGuideCollision()) {
        goToStartInstructions();
    }

    if (next == 1 && talkedToGuide) {
        goToPhaseOne();
    }
}



void goToStartInstructions() {
    (*(volatile unsigned short *)0x4000000) = 0;
    (*(volatile unsigned short *)0x4000000) = ((0) & 7) | (1 << (8 + (0 % 4)));
    DMANow(3, dialogueFontPal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, dialogueFontTiles, &((CB*) 0x6000000)[1], 32768 / 2);

    (*(volatile unsigned short*) 0x4000008) = ((1) << 2) | ((20) << 8) | (0 << 14) | ((0) & 3) | (0 << 7);

    DMANow(3, dialogueFontTiles, &((CB*) 0x6000000)[1], 32768 / 2);
    DMANow(3, diaOneMap, &((SB*) 0x6000000)[20], (2048) / 2);


    (*(volatile unsigned short*) 0x04000010) = 0;
    (*(volatile unsigned short*) 0x04000012) = 0;

    startPage = 0;
    state = DIALOGUE;
}



void startInstructions() {
    if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {

        startPage++;

        switch (startPage) {
            case 1:
                DMANow(3, diaTwoMap, &((SB*) 0x6000000)[20], (2048) / 2);
                break;
            case 2:
                DMANow(3, diaThreeMap, &((SB*) 0x6000000)[20], (2048) / 2);
                break;
            case 3:
                DMANow(3, diaFourMap, &((SB*) 0x6000000)[20], (2048) / 2);
                break;
            case 4:
                DMANow(3, diaFiveMap, &((SB*) 0x6000000)[20], (2048) / 2);
                break;
            case 5:
                DMANow(3, diaSixMap, &((SB*) 0x6000000)[20], (2048) / 2);
                break;
            case 6:
                DMANow(3, diaSevenMap, &((SB*) 0x6000000)[20], (2048) / 2);
                break;
            case 7:
                DMANow(3, diaEightMap, &((SB*) 0x6000000)[20], (2048) / 2);
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


    DMANow(3, foregroundPal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, foregroundTiles, &((CB*) 0x6000000)[1], 25600 / 2);


    DMANow(3, bgOneFrontMap, &((SB*) 0x6000000)[26], (4096) / 2);
    DMANow(3, bgOneBackMap, &((SB*) 0x6000000)[28], (4096) / 2);
    DMANow(3, dayTMMap, &((SB*) 0x6000000)[30], (4096) / 2);


    initPlayer();
    initHealth();

    hOff = 0;
    vOff = (256 - 160);
    state = PHASEONE;
}


void phaseOne() {


    updatePlayer(&hOff, &vOff);
    updateHealth();


    (*(volatile unsigned short*) 0x04000010) = hOff;
    (*(volatile unsigned short*) 0x04000012) = vOff;


    (*(volatile unsigned short*) 0x04000014) = hOff / 2;
    (*(volatile unsigned short*) 0x04000016) = vOff / 2;


    shadowOAM[guide.oamIndex].attr0 = (2<<8);
    drawPlayer();
    drawHealth();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);

    if (gameOver) {
        goToLose();
    }

    if (winPhaseOne) {
        goToPhaseTwoInstructions();
    }
}



void goToPhaseTwoInstructions() {
    (*(volatile unsigned short *)0x4000000) = 0;
    (*(volatile unsigned short *)0x4000000) = ((0) & 7) | (1 << (8 + (0 % 4)));
    DMANow(3, dialogueFontPal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, dialogueFontTiles, &((CB*) 0x6000000)[1], 32768 / 2);

    (*(volatile unsigned short*) 0x4000008) = ((1) << 2) | ((20) << 8) | (0 << 14) | ((0) & 3) | (0 << 7);

    DMANow(3, dialogueFontTiles, &((CB*) 0x6000000)[1], 32768 / 2);
    DMANow(3, diaOneMap, &((SB*) 0x6000000)[20], (2048) / 2);

    (*(volatile unsigned short*) 0x04000010) = 0;
    (*(volatile unsigned short*) 0x04000012) = 0;

    startPage = 0;
    state = DIALOGUE2;
}



void phaseTwoInstructions() {
    if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {

        startPage++;

        switch (startPage) {
            case 1:
                DMANow(3, diaTwoMap, &((SB*) 0x6000000)[20], (2048) / 2);
                break;
            case 2:
                DMANow(3, diaThreeMap, &((SB*) 0x6000000)[20], (2048) / 2);
                break;
            case 3:
                DMANow(3, diaFourMap, &((SB*) 0x6000000)[20], (2048) / 2);
                break;
            case 4:
                DMANow(3, diaFiveMap, &((SB*) 0x6000000)[20], (2048) / 2);
                break;
            case 5:
                DMANow(3, diaSixMap, &((SB*) 0x6000000)[20], (2048) / 2);
                break;
            case 6:
                DMANow(3, diaSevenMap, &((SB*) 0x6000000)[20], (2048) / 2);
                break;
            case 7:
                DMANow(3, diaEightMap, &((SB*) 0x6000000)[20], (2048) / 2);
                break;
            case 8:
                goToPhaseTwo();
                break;
        }
    }
}



void goToPhaseTwo() {

    (*(volatile unsigned short *)0x4000000) = 0;
    (*(volatile unsigned short *)0x4000000) = ((0) & 7) | (1 << (8 + (0 % 4))) | (1 << (8 + (1 % 4))) | (1 << (8 + (2 % 4))) | (1 << 12);


    (*(volatile unsigned short*) 0x4000008) = ((1) << 2) | ((26) << 8) | (1 << 14) | ((0) & 3) | (1 << 7);
    (*(volatile unsigned short*) 0x400000A) = ((1) << 2) | ((28) << 8) | (1 << 14) | ((1) & 3) | (1 << 7);
    (*(volatile unsigned short*) 0x400000C) = ((1) << 2) | ((30) << 8) | (1 << 14) | ((2) & 3) | (1 << 7);


    DMANow(3, foregroundPal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, foregroundTiles, &((CB*) 0x6000000)[1], 25600 / 2);


    DMANow(3, bgTwoFrontMap, &((SB*) 0x6000000)[26], (4096) / 2);
    DMANow(3, bgTwoBackMap, &((SB*) 0x6000000)[28], (4096) / 2);
    DMANow(3, dayTMMap, &((SB*) 0x6000000)[30], (4096) / 2);


    initPlayerTwo();
    initSnow();

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

    if (gameOver) {
        goToLose();
    }
    if (winPhaseTwo) {
        goToPhaseThreeInstructions();
    }
}



void goToPhaseThreeInstructions() {
    (*(volatile unsigned short *)0x4000000) = 0;
    (*(volatile unsigned short *)0x4000000) = ((0) & 7) | (1 << (8 + (0 % 4)));
    DMANow(3, dialogueFontPal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, dialogueFontTiles, &((CB*) 0x6000000)[1], 32768 / 2);

    (*(volatile unsigned short*) 0x4000008) = ((1) << 2) | ((20) << 8) | (0 << 14) | ((0) & 3) | (0 << 7);

    DMANow(3, dialogueFontTiles, &((CB*) 0x6000000)[1], 32768 / 2);
    DMANow(3, diaOneMap, &((SB*) 0x6000000)[20], (2048) / 2);

    (*(volatile unsigned short*) 0x04000010) = 0;
    (*(volatile unsigned short*) 0x04000012) = 0;

    startPage = 0;
    state = DIALOGUE3;
}



void phaseThreeInstructions() {
    if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {

        startPage++;

        switch (startPage) {
            case 1:
                DMANow(3, diaTwoMap, &((SB*) 0x6000000)[20], (2048) / 2);
                break;
            case 2:
                DMANow(3, diaThreeMap, &((SB*) 0x6000000)[20], (2048) / 2);
                break;
            case 3:
                DMANow(3, diaFourMap, &((SB*) 0x6000000)[20], (2048) / 2);
                break;
            case 4:
                DMANow(3, diaFiveMap, &((SB*) 0x6000000)[20], (2048) / 2);
                break;
            case 5:
                DMANow(3, diaSixMap, &((SB*) 0x6000000)[20], (2048) / 2);
                break;
            case 6:
                DMANow(3, diaSevenMap, &((SB*) 0x6000000)[20], (2048) / 2);
                break;
            case 7:
                DMANow(3, diaEightMap, &((SB*) 0x6000000)[20], (2048) / 2);
                break;
            case 8:
                goToPhaseThree();
                break;
        }
    }
}



void goToPhaseThree() {

    (*(volatile unsigned short *)0x4000000) = 0;
    (*(volatile unsigned short *)0x4000000) = ((0) & 7) | (1 << (8 + (0 % 4))) | (1 << (8 + (1 % 4))) | (1 << (8 + (2 % 4))) | (1 << 12);


    (*(volatile unsigned short*) 0x4000008) = ((1) << 2) | ((26) << 8) | (1 << 14) | ((0) & 3) | (1 << 7);
    (*(volatile unsigned short*) 0x400000A) = ((1) << 2) | ((28) << 8) | (1 << 14) | ((1) & 3) | (1 << 7);
    (*(volatile unsigned short*) 0x400000C) = ((1) << 2) | ((30) << 8) | (1 << 14) | ((2) & 3) | (1 << 7);


    DMANow(3, foregroundPal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, foregroundTiles, &((CB*) 0x6000000)[1], 25600 / 2);


    DMANow(3, bgThreeFrontMap, &((SB*) 0x6000000)[26], (4096) / 2);
    DMANow(3, bgTwoBackMap, &((SB*) 0x6000000)[28], (4096) / 2);
    DMANow(3, dayTMMap, &((SB*) 0x6000000)[30], (4096) / 2);


    initPlayerThree();
    initSnow();
    initCountdownTimer();

    hOff = 0;
    vOff = (256 - 160);
    state = PHASETHREE;
}


void phaseThree() {


    updatePlayerThree(&hOff, &vOff);
    updateSnow();
    updateHealth();
    updatePlayerPalette();


    (*(volatile unsigned short*) 0x04000010) = hOff;
    (*(volatile unsigned short*) 0x04000012) = vOff;


    (*(volatile unsigned short*) 0x04000014) = hOff / 2;
    (*(volatile unsigned short*) 0x04000016) = vOff / 2;


    shadowOAM[guide.oamIndex].attr0 = (2<<8);
    drawPlayerThree();
    drawSnow();
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

    (*(volatile unsigned short *)0x4000000) = ((4) & 7) | (1 << (8 + (2 % 4)));
    videoBuffer = ((unsigned short*) 0x06000000);

    DMANow(3, (volatile void*)splashScreenPal, ((unsigned short *)0x5000000), 256 | (1 << 31));
    drawFullscreenImage4(splashScreenBitmap);
    drawString4(100, 70, "PAUSE", 15);
    state = PAUSE;
}

void pause() {
    if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
        goToStart();
        state = START;
    }
}



void goToLose() {

    (*(volatile unsigned short *)0x4000000) = ((4) & 7) | (1 << (8 + (2 % 4)));
    videoBuffer = ((unsigned short*) 0x06000000);

    DMANow(3, (volatile void*)splashScreenPal, ((unsigned short *)0x5000000), 256 | (1 << 31));
    drawFullscreenImage4(splashScreenBitmap);
    drawString4(100, 70, "LOSE", 15);
    state = LOSE;
}

void lose() {
    if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
        goToSplashScreen();
        state = SPLASH;
    }
}



void goToWin() {

    (*(volatile unsigned short *)0x4000000) = ((4) & 7) | (1 << (8 + (2 % 4)));
    videoBuffer = ((unsigned short*) 0x06000000);

    DMANow(3, (volatile void*)splashScreenPal, ((unsigned short *)0x5000000), 256 | (1 << 31));
    drawFullscreenImage4(splashScreenBitmap);
    drawString4(100, 70, "WIN", 15);
    state = WIN;
}

void win() {
    if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
        goToSplashScreen();
        state = SPLASH;
    }
}
