# 1 "phaseTwo.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "phaseTwo.c"
# 1 "hiker.h" 1
# 21 "hiker.h"
extern const unsigned short hikerTiles[16384];


extern const unsigned short hikerPal[256];
# 2 "phaseTwo.c" 2
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
# 3 "phaseTwo.c" 2
# 1 "mode0.h" 1
# 32 "mode0.h"
typedef struct {
 u16 tileimg[8192];
} CB;



typedef struct {
 u16 tilemap[1024];
} SB;
# 4 "phaseTwo.c" 2
# 1 "bgTwoFrontCM.h" 1
# 20 "bgTwoFrontCM.h"
extern const unsigned char bgTwoFrontCMBitmap[131072];
# 5 "phaseTwo.c" 2
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
# 6 "phaseTwo.c" 2
# 1 "phaseTwo.h" 1
# 23 "phaseTwo.h"
SPRITE snows[3];


unsigned char colorAtTwo(int x, int y);
void initPlayerTwo();
void updatePlayerTwo(int* hOff, int* vOff);
void drawPlayerTwo();
void initSnow();
void updateSnow();
void drawSnow();
int winPhaseTwo;
# 7 "phaseTwo.c" 2
# 1 "player.h" 1
# 21 "player.h"
extern const unsigned short playerTiles[16384];


extern const unsigned short playerPal[256];
# 8 "phaseTwo.c" 2
# 1 "CM2.h" 1
# 20 "CM2.h"
extern const unsigned short CM2Bitmap[65536];
# 9 "phaseTwo.c" 2
# 1 "health.h" 1


extern SPRITE health;
void initHealth();
void updateHealth();
void drawHealth();
int healthBarFrames[9][2];
# 10 "phaseTwo.c" 2





extern int hikerFrameDelay;
extern int hikerFrameCounter;
extern int hikerFrame;
extern int hikerFrames[4];
extern int hOff, vOff;
extern int isDucking;
extern int gameOver;
int winPhaseTwo = 0;
extern SPRITE player;
extern int sbb;

void initPlayerTwo() {
    resetPlayerState();
    player.worldX = 0;
    player.worldY = 101;
    player.x = 240 / 2 - 8;
    player.y = 160 / 2 - 16;
    player.width = 17;
    player.height = 23;
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
}

void updatePlayerTwo(int* hOff, int* vOff) {
    player.isAnimating = 0;


    if ((~(buttons) & ((1<<7)))) {
        isDucking = 1;
    } else {
        isDucking = 0;
    }


    int leftX = player.worldX;
    int rightX = player.worldX + player.width - 1;
    int topY = player.worldY;
    int bottomY = player.worldY + player.height - 1;

    if ((~(buttons) & ((1<<5)))) {
        player.isAnimating = 1;
        player.direction = 1;
        if (player.worldX > 0 &&
            colorAtTwo(leftX - player.xVel, topY) != 0x02 &&
            colorAtTwo(leftX - player.xVel, bottomY) != 0x02) {
            player.worldX -= player.xVel;
        }
    }
    if ((~(buttons) & ((1<<4)))) {
        player.isAnimating = 1;
        player.direction = 0;
        if (player.worldX < 512 - player.width &&
            colorAtTwo(rightX + player.xVel, topY) != 0x02 &&
            colorAtTwo(rightX + player.xVel, bottomY) != 0x02) {
            player.worldX += player.xVel;
        }
    }


    if ((!(~(oldButtons) & ((1<<6))) && (~(buttons) & ((1<<6)))) && player.yVel == 0) {
        player.yVel = -12;
    }


    player.yVel += 1;
    if (player.yVel > 4) {
        player.yVel = 4;
    }


    if (player.yVel < 0) {
        for (int i = 0; i < -player.yVel; i++) {
            topY = player.worldY;
            if (topY - 1 >= 0 &&
                colorAtTwo(leftX, topY - 1) != 0x02 &&
                colorAtTwo(rightX, topY - 1) != 0x02) {
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
                colorAtTwo(leftX, bottomY + 1) != 0x02 &&
                colorAtTwo(rightX, bottomY + 1) != 0x02) {
                player.worldY++;
            } else {
                player.yVel = 0;
                break;
            }
        }
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


    sbb = 20 + (*hOff / 256);


    if (player.worldX + player.width >= 512 - 1) {
        winPhaseTwo = 1;
    }
}

void drawPlayerTwo() {

    int leftX = player.worldX;
    int rightX = player.worldX + player.width - 1;
    int topY = player.worldY;
    int bottomY = player.worldY + player.height - 1;


    if (colorAtTwo(leftX, topY) == 0x01 ||
        colorAtTwo(rightX, topY) == 0x01 ||
        colorAtTwo(leftX, bottomY) == 0x01 ||
        colorAtTwo(rightX, bottomY) == 0x01) {


        if (health.active > 0) {
            health.active--;
            if (health.active == 0) {
                gameOver = 1;
            }
        }


        player.worldX = 0;
        player.worldY = 101;
        player.yVel = 0;


        hOff = 0;
        vOff = 0;
        return;
    }

    int screenX = player.worldX - hOff;
    int screenY = player.worldY - vOff;

    if (player.active) {
        shadowOAM[player.oamIndex].attr0 = ((screenY) & 0xFF) | (0<<8) | (0<<13) | (2<<14);
        if (player.direction == 0) {
            shadowOAM[player.oamIndex].attr1 = ((screenX) & 0x1FF) | (2<<14);
        } else if (player.direction == 1) {
            shadowOAM[player.oamIndex].attr1 = ((screenX) & 0x1FF) | (2<<14) | (1<<12);
        }


        if (isDucking) {
            shadowOAM[player.oamIndex].attr2 = ((((4) * (32) + (4))) & 0x3FF);
        } else {
            shadowOAM[player.oamIndex].attr2 = ((((1) * (32) + (hikerFrames[hikerFrame]))) & 0x3FF);
        }
    } else {
        gameOver = 1;
    }
}

void initSnow() {
    for (int i = 0; i < 3; i++) {
        snows[i].worldX = rand() % (512 - 16);
        snows[i].worldY = rand() % 60 - 80;
        snows[i].width = 16;
        snows[i].height = 16;
        snows[i].oamIndex = 120 + i;
        snows[i].active = 1;
        snows[i].yVel = 1;
    }
}

void updateSnow() {
    for (int i = 0; i < 3; i++) {
        if (snows[i].active) {
            snows[i].worldY += snows[i].yVel;


            if (collision(snows[i].worldX, snows[i].worldY, 16, 16,
                player.worldX, player.worldY, player.width, player.height)) {

                snows[i].worldY = -16;
                snows[i].worldX = rand() % (512 - 16);


                if (health.active > 0) {
                    health.active--;
                    if (health.active == 0) {
                        gameOver = 1;
                    }
                }

                player.worldX = 0;
                player.worldY = 101;
                player.yVel = 0;


                hOff = 0;
                vOff = 0;
            }



            if (snows[i].worldY > 256) {
                snows[i].worldY = rand() % 60 - 80;
                snows[i].worldX = rand() % (512 - 16);
            }
        }
    }
}

void drawSnow() {
    for (int i = 0; i < 3; i++) {
        if (snows[i].active) {
            int screenX = snows[i].worldX - hOff;
            int screenY = snows[i].worldY - vOff;

            shadowOAM[snows[i].oamIndex].attr0 = ((screenY) & 0xFF) | (0<<8) | (0<<13) | (0<<14);
            shadowOAM[snows[i].oamIndex].attr1 = ((screenX) & 0x1FF) | (1<<14);
            shadowOAM[snows[i].oamIndex].attr2 = ((((12) * (32) + (0))) & 0x3FF);
        }
    }
}


inline unsigned char colorAtTwo(int x, int y) {
    return ((unsigned char*) bgTwoFrontCMBitmap)[((y) * (512) + (x))];
}
