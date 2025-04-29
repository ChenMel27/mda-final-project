# 1 "health.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "health.c"





# 1 "health.h" 1



void initHealth();
void updateHealth();
void drawHealth();
int healthBarFrames[9][2];
# 7 "health.c" 2
# 1 "sprites.h" 1



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
# 5 "sprites.h" 2





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
# 8 "health.c" 2


SPRITE health;


int healthBarFrames[9][2] = {
    {6, 5},
    {6, 6},
    {6, 7},
    {10, 5},
    {10, 6},
    {10, 7},
    {14, 5},
    {14, 6},
    {14, 7}
};


void initHealth() {
    health.worldX = 10;
    health.worldY = 10;
    health.width = 32;
    health.height = 8;
    health.oamIndex = 100;
    health.numFrames = 9;
    health.currentFrame = 0;
    health.isAnimating = 0;
    health.direction = 0;

    health.active = 9;
}


void updateHealth() {
    health.isAnimating = 0;
}


void drawHealth() {
    int frameIndex = 9 - health.active;
    if (frameIndex < 0) frameIndex = 0;
    if (frameIndex > 8) frameIndex = 8;

    int row = healthBarFrames[frameIndex][0];
    int col = healthBarFrames[frameIndex][1];

    shadowOAM[health.oamIndex].attr0 = ((health.worldY) & 0xFF) | (0<<8) | (0<<13) | (1<<14);
    shadowOAM[health.oamIndex].attr1 = ((health.worldX) & 0x1FF) | (1<<14);
    shadowOAM[health.oamIndex].attr2 = ((((col) * (32) + (row))) & 0x3FF);
}
