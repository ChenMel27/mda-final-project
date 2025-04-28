# 1 "phaseThree.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "phaseThree.c"
# 1 "hiker.h" 1
# 21 "hiker.h"
extern const unsigned short hikerTiles[16384];


extern const unsigned short hikerPal[256];
# 2 "phaseThree.c" 2
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
# 3 "phaseThree.c" 2
# 1 "mode0.h" 1
# 32 "mode0.h"
typedef struct {
 u16 tileimg[8192];
} CB;



typedef struct {
 u16 tilemap[1024];
} SB;
# 4 "phaseThree.c" 2
# 1 "bgThreeFrontCM.h" 1
# 20 "bgThreeFrontCM.h"
extern const unsigned char bgThreeFrontCMBitmap[131072];
# 5 "phaseThree.c" 2
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
# 6 "phaseThree.c" 2
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
# 7 "phaseThree.c" 2
# 1 "player.h" 1
# 21 "player.h"
extern const unsigned short playerTiles[16384];


extern const unsigned short playerPal[256];
# 8 "phaseThree.c" 2
# 1 "health.h" 1



void initHealth();
void updateHealth();
void drawHealth();
int healthBarFrames[9][2];
# 9 "phaseThree.c" 2





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
static int timerPaused = 0;



void initPlayerThree() {
    player.worldX = 0;
    player.worldY = 102;
    player.x = 240 / 2 - 8;
    player.y = 160 / 2 - 16;
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


    DMANow(3, (void*) playerPal, ((u16 *)0x5000200), 512 / 2);
    DMANow(3, (void*) playerTiles, &((CB*) 0x6000000)[4], 32768 / 2);


    for (int i = 0; i < 256; i++) {
        playerPaletteWork[i] = playerPal[i];
    }
}

void updatePlayerThree(int* hOff, int* vOff) {
    static int slowCounter = 0;
    player.isAnimating = 0;


    int leftX = player.worldX;
    int rightX = player.worldX + player.width - 1;
    int topY = player.worldY;
    int bottomY = player.worldY + player.height - 1;


    if (colorAtThree(leftX, topY) == 0x03 || colorAtThree(rightX, topY) == 0x03 ||
    colorAtThree(leftX, bottomY) == 0x03 || colorAtThree(rightX, bottomY) == 0x03) {
        if (!timerPaused) {
            *(volatile unsigned short*)0x400010A &= ~(1<<7);
            timerPaused = 1;
        }
    }



    slowModeActive = colorAtThree(leftX, topY) == 0x02 || colorAtThree(rightX, topY) == 0x02 || colorAtThree(leftX, bottomY) == 0x02 || colorAtThree(rightX, bottomY) == 0x02;


    int updateMovement = 1;
    if (slowModeActive) {
        slowCounter++;
        if (slowCounter < 4) {
            updateMovement = 0;
        } else {
            updateMovement = 1;
            slowCounter = 0;
        }
    } else {
        slowCounter = 0;
    }


    isDucking = (~(buttons) & ((1<<7)));


    if (updateMovement) {
        if ((~(buttons) & ((1<<5))) && player.worldX > 0) {
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

        if ((~(buttons) & ((1<<4))) && player.worldX < 512 - player.width) {
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


    int grounded = 0;

    player.yVel += 1;
    if (player.yVel > 4) player.yVel = 4;

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
                if (bottomY + 1 < 256 &&
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


    if (!slowModeActive && (!(~(oldButtons) & ((1<<6))) && (~(buttons) & ((1<<6)))) && grounded) {
        player.yVel = -12;
    }


    hikerFrameCounter++;
    if (player.isAnimating && hikerFrameCounter > hikerFrameDelay) {
        hikerFrame = (hikerFrame + 1) % player.numFrames;
        hikerFrameCounter = 0;
    } else if (!player.isAnimating) {
        hikerFrame = 0;
        hikerFrameCounter = 0;
    }


    *hOff = player.worldX - (240 / 2 - player.width / 2);
    *vOff = player.worldY - (160 / 2 - player.height / 2);
    if (*hOff < 0) *hOff = 0;
    if (*vOff < 0) *vOff = 0;
    if (*hOff > 512 - 240) *hOff = 512 - 240;
    if (*vOff > 256 - 160) *vOff = 256 - 160;


    if (player.worldX + player.width >= 512 - 1) {
        winPhaseThree = 1;
    }
}



void drawPlayerThree() {
    int screenX = player.worldX - hOff;
    int screenY = player.worldY - vOff;


    shadowOAM[player.oamIndex].attr0 = ((screenY) & 0xFF) | (0<<8) | (0<<13) | (2<<14);
    if (player.direction == 0) {
        shadowOAM[player.oamIndex].attr1 = ((screenX) & 0x1FF) | (2<<14);
    } else if (player.direction == 1) {
        shadowOAM[player.oamIndex].attr1 = ((screenX) & 0x1FF) | (2<<14) | (1<<12);
    }
    shadowOAM[player.oamIndex].attr2 = ((((5) * (32) + (hikerFrames[hikerFrame]))) & 0x3FF);

}

inline unsigned char colorAtThree(int x, int y) {
    return ((unsigned char*) bgThreeFrontCMBitmap)[((y) * (512) + (x))];
}



void initCountdownTimer(void)
{

    *(volatile unsigned short*)0x400010A = 0;
    *(volatile unsigned short*)0x400010E = 0;


    *(volatile unsigned short*)0x4000108 = -0x4000;
    *(volatile unsigned short*)0x400010A = 3 | (1<<7);



    *(volatile unsigned short*)0x400010C = 0;
    *(volatile unsigned short*)0x400010E = (1<<7) | (1<<2);
}


void drawTimer(void)
{

    int secondsPassed = *(volatile unsigned short*)0x400010C;
    int countdown = 20 - secondsPassed;
    if (countdown == 0) {
        gameOver = 1;
    }


    if (countdown < 0) {
        countdown = 0;
    }


    int tens = countdown / 10;
    int ones = countdown % 10;


    int timerX = 180;
    int timerY = 10;


    shadowOAM[50].attr0 = ((timerY) & 0xFF) | (0<<8) | (0<<13) | (0<<14);
    shadowOAM[50].attr1 = ((timerX) & 0x1FF) | (1<<14);
    shadowOAM[50].attr2 = ((((30) * (32) + (tens * 2))) & 0x3FF);


    shadowOAM[51].attr0 = ((timerY) & 0xFF) | (0<<8) | (0<<13) | (0<<14);
    shadowOAM[51].attr1 = ((timerX + 16) & 0x1FF) | (1<<14);
    shadowOAM[51].attr2 = ((((30) * (32) + (ones * 2))) & 0x3FF);
}

void updatePlayerPalette(void)
{

    int secondsPassed = *(volatile unsigned short*)0x400010C;
    int oxygenCountdown = 20 - secondsPassed;
    if (oxygenCountdown < 0)
        oxygenCountdown = 0;




    float factor = oxygenCountdown / 20.0f;



    unsigned short orig = playerPal[1];


    int r = orig & 0x1F;
    int g = (orig >> 5) & 0x1F;
    int b = (orig >> 10) & 0x1F;


    int newR = (int)(r * factor);
    int newG = (int)(g * factor);

    int newB = (int)(b * factor + 31 * (1.0f - factor));

    if (newR > 31) newR = 31;
    if (newG > 31) newG = 31;
    if (newB > 31) newB = 31;


    unsigned short newColor = (newB << 10) | (newG << 5) | newR;
    playerPaletteWork[1] = newColor;


    DMANow(3, &playerPaletteWork[1], &((u16 *)0x5000200)[1], 1);
}
