# 1 "animatedSprite.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "animatedSprite.c"
# 1 "hiker.h" 1
# 21 "hiker.h"
extern const unsigned short hikerTiles[16384];


extern const unsigned short hikerPal[256];
# 2 "animatedSprite.c" 2
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
# 3 "animatedSprite.c" 2
# 1 "mode0.h" 1
# 51 "mode0.h"
typedef struct {
 u16 tileimg[8192];
} CB;



typedef struct {
 u16 tilemap[1024];
} SB;
# 4 "animatedSprite.c" 2
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
# 5 "animatedSprite.c" 2
# 1 "player.h" 1
# 21 "player.h"
extern const unsigned short playerTiles[16384];


extern const unsigned short playerPal[256];
# 6 "animatedSprite.c" 2
# 1 "health.h" 1



void initHealth();
void updateHealth();
void drawHealth();
int healthBarFrames[9][2];
# 7 "animatedSprite.c" 2


extern SPRITE player;
extern SPRITE health;


int animatedHikerFrames[] = {24, 26, 28, 20, 22};

void initAnimatedPlayer() {
    player.x = 240 / 2 - 8;
    player.y = (160 / 2 - 16) + 8;
    player.oamIndex = 0;
    player.numFrames = 5;
    player.currentFrame = 0;
    player.direction = 0;


    DMANow(3, (void*)playerPal, ((u16 *)0x5000200), 512 / 2);
    DMANow(3, (void*)playerTiles, &((CB*) 0x6000000)[4], 32768 / 2);
}

void updateAnimatedPlayer() {
    static int animCounter = 0;

    animCounter++;
    if (animCounter > 10) {
        player.currentFrame = (player.currentFrame + 1) % player.numFrames;
        animCounter = 0;
    }
}


void drawAnimatedPlayer() {
    shadowOAM[player.oamIndex].attr0 = ((player.y) & 0xFF) | (0<<8) | (0<<13) | (2<<14);
    shadowOAM[player.oamIndex].attr1 = ((player.x) & 0x1FF) | (2<<14);
    shadowOAM[player.oamIndex].attr2 = (((0) & 0xF) <<12) | ((((1) * (32) + (animatedHikerFrames[player.currentFrame]))) & 0x3FF);

}
