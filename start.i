# 1 "start.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "start.c"
# 1 "start.h" 1



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
# 5 "start.h" 2




int next;

void initStartPlayer();
void initGuideSprite();
void updateStartPlayer(int* hOff, int* vOff);
void updateGuideSprite();
void drawStartPlayer();
void drawGuideSprite();
int checkPlayerGuideCollision();
# 2 "start.c" 2

# 1 "mode0.h" 1
# 32 "mode0.h"
typedef struct {
 u16 tileimg[8192];
} CB;



typedef struct {
 u16 tilemap[1024];
} SB;
# 4 "start.c" 2
# 1 "townCM.h" 1
# 20 "townCM.h"
extern const unsigned char townCMBitmap[262144];
# 5 "start.c" 2
# 1 "player.h" 1
# 21 "player.h"
extern const unsigned short playerTiles[16384];


extern const unsigned short playerPal[256];
# 6 "start.c" 2
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
# 7 "start.c" 2




int guideFrameCounter = 0;
int guideFrameDelay = 6;
int guideAnimIndex = 0;



int guideSpeed = 1;
int guideMoveDirection = -1;



int guidePatrolLeftBound = 0;
int guidePatrolRightBound = 0;





int guideLeftFrames[5] = {18, 16, 14, 12, 10};
int guideRightFrames[4] = {12, 14, 16, 18};



int startHikerFrameDelay = 4;
int startHikerFrameCounter = 0;
int startHikerFrame = 0;
int startHikerFramesHorizontal[] = {24, 26, 28, 20, 22};
int startHikerFramesUp[] = {0, 2, 4, 6, 8};
int startHikerFramesDown[] = {10, 12, 14, 16, 18};
int next = 0;

typedef enum {
    RIGHT,
    LEFT,
    UP,
    DOWN
} Direction;

extern int hOff, vOff;



SPRITE startPlayer;
SPRITE guide;


extern int sbb;



inline unsigned char startColorAt(int x, int y) {
    return townCMBitmap[((y) * (512) + (x))];
}



void initStartPlayer() {
    startPlayer.worldX = 0;
    startPlayer.worldY = 165;
    startPlayer.x = 240 / 2 - 8;
    startPlayer.y = 160 / 2 - 8;
    startPlayer.width = 16;
    startPlayer.height = 16;
    startPlayer.oamIndex = 0;
    startPlayer.numFrames = 5;
    startPlayer.currentFrame = 0;
    startPlayer.isAnimating = 1;
    startPlayer.direction = RIGHT;
    startPlayer.yVel = 0;

    DMANow(3, (void*)playerPal, ((u16 *)0x5000200), 512 / 2);
    DMANow(3, (void*)playerTiles, &((CB*) 0x6000000)[4], 32768 / 2);
}

void initGuideSprite() {

    guide.worldX = 436;
    guide.worldY = 127;
    guide.width = 16;
    guide.height = 32;
    guide.oamIndex = 1;
    guide.numFrames = 1;
    guide.currentFrame = 0;
    guide.isAnimating = 1;
    guide.direction = 0;
    guide.yVel = 0;



    guidePatrolLeftBound = guide.worldX - 20;
    guidePatrolRightBound = guide.worldX + 20;
}



void updateStartPlayer(int* hOff, int* vOff) {
    startPlayer.isAnimating = 0;
    int speed = 1;


    int leftX = startPlayer.worldX;
    int rightX = startPlayer.worldX + startPlayer.width - 1;
    int topY = startPlayer.worldY;
    int bottomY = startPlayer.worldY + startPlayer.height - 1;


    if ((~(buttons) & ((1<<4)))) {
        startPlayer.isAnimating = 1;
        startPlayer.direction = RIGHT;
        int newX = startPlayer.worldX + speed;
        if (startPlayer.worldX + startPlayer.width < 512 &&
            startColorAt(newX + startPlayer.width - 1, topY) != 0 &&
            startColorAt(newX + startPlayer.width - 1, bottomY) != 0) {
            startPlayer.worldX = newX;
        }
        if (startColorAt(newX + startPlayer.width - 1, topY) == 2 ||
            startColorAt(newX + startPlayer.width - 1, bottomY) == 2) {
            next = 1;
        }
    }
    if ((~(buttons) & ((1<<5)))) {
        startPlayer.isAnimating = 1;
        startPlayer.direction = LEFT;
        int newX = startPlayer.worldX - speed;
        if (newX >= 0 &&
            startColorAt(newX, topY) != 0 &&
            startColorAt(newX, bottomY) != 0) {
            startPlayer.worldX = newX;
        }
    }
    if ((~(buttons) & ((1<<6)))) {
        startPlayer.isAnimating = 1;
        startPlayer.direction = UP;
        int newY = startPlayer.worldY - speed;
        if (newY >= 0 &&
            startColorAt(leftX, newY) != 0 &&
            startColorAt(rightX, newY) != 0) {
            startPlayer.worldY = newY;
        }
    }
    if ((~(buttons) & ((1<<7)))) {
        startPlayer.isAnimating = 1;
        startPlayer.direction = DOWN;
        int newY = startPlayer.worldY + speed;
        if (startPlayer.worldY < 512 - startPlayer.height &&
            startColorAt(leftX, newY + startPlayer.height - 1) != 0 &&
            startColorAt(rightX, newY + startPlayer.height - 1) != 0) {
            startPlayer.worldY = newY;
        }
    }


    startHikerFrameCounter++;
    if (startPlayer.isAnimating && startHikerFrameCounter > startHikerFrameDelay) {
        startHikerFrame = (startHikerFrame + 1) % startPlayer.numFrames;
        startHikerFrameCounter = 0;
    } else if (!startPlayer.isAnimating) {
        startHikerFrame = 0;
        startHikerFrameCounter = 0;
    }


    *hOff = startPlayer.worldX - (240 / 2 - startPlayer.width / 2);
    *vOff = startPlayer.worldY - (160 / 2 - startPlayer.height / 2);


    if (*hOff < 0) *hOff = 0;
    if (*vOff < 0) *vOff = 0;
    if (*hOff > 512 - 240) *hOff = 512 - 240;
    if (*vOff > 512 - 160) *vOff = 512 - 160;


    sbb = 20 + (*hOff / 512);
}


int guideMoveCounter = 0;
int guideMoveDelay = 2;

void updateGuideSprite() {

    guideFrameCounter++;
    if (guideFrameCounter > guideFrameDelay) {
        if (guideMoveDirection == -1) {

            guideAnimIndex = (guideAnimIndex + 1) % 5;
        } else {

            guideAnimIndex = (guideAnimIndex + 1) % 4;
        }
        guideFrameCounter = 0;
    }


    guideMoveCounter++;
    if (guideMoveCounter > guideMoveDelay) {

        guide.worldX += guideSpeed * guideMoveDirection;
        guideMoveCounter = 0;
    }


    if (guide.worldX < guidePatrolLeftBound) {
        guide.worldX = guidePatrolLeftBound;
        guideMoveDirection = 1;
        guideAnimIndex = 0;
    } else if (guide.worldX > guidePatrolRightBound) {
        guide.worldX = guidePatrolRightBound;
        guideMoveDirection = -1;
        guideAnimIndex = 0;
    }
}




void drawStartPlayer() {
    int screenX = startPlayer.worldX - hOff;
    int screenY = startPlayer.worldY - vOff;
    shadowOAM[startPlayer.oamIndex].attr0 =
        ((screenY) & 0xFF) | (0<<8) | (0<<13) | (2<<14);

    if (startPlayer.direction == RIGHT) {
        shadowOAM[startPlayer.oamIndex].attr1 =
            ((screenX) & 0x1FF) | (2<<14);
        shadowOAM[startPlayer.oamIndex].attr2 =
            ((((1) * (32) + (startHikerFramesHorizontal[startHikerFrame]))) & 0x3FF);
    } else if (startPlayer.direction == LEFT) {
        shadowOAM[startPlayer.oamIndex].attr1 =
            ((screenX) & 0x1FF) | (2<<14) | (1<<12);
        shadowOAM[startPlayer.oamIndex].attr2 =
            ((((1) * (32) + (startHikerFramesHorizontal[startHikerFrame]))) & 0x3FF);
    } else if (startPlayer.direction == UP) {
        shadowOAM[startPlayer.oamIndex].attr1 =
            ((screenX) & 0x1FF) | (2<<14);
        shadowOAM[startPlayer.oamIndex].attr2 =
            ((((1) * (32) + (startHikerFramesUp[startHikerFrame]))) & 0x3FF);
    } else if (startPlayer.direction == DOWN) {
        shadowOAM[startPlayer.oamIndex].attr1 =
            ((screenX) & 0x1FF) | (2<<14);
        shadowOAM[startPlayer.oamIndex].attr2 =
            ((((1) * (32) + (startHikerFramesDown[startHikerFrame]))) & 0x3FF);
    }
}

void drawGuideSprite() {
    int screenX = guide.worldX - hOff;
    int screenY = guide.worldY - vOff;
    shadowOAM[guide.oamIndex].attr0 =
        ((screenY) & 0xFF) | (0<<8) | (0<<13) | (2<<14);

    int tileX;
    int hflip = 0;





    if (guideMoveDirection == -1) {
        tileX = guideLeftFrames[guideAnimIndex];
        hflip = 0;
    } else {
        tileX = guideRightFrames[guideAnimIndex];
        hflip = (1<<12);
    }

    shadowOAM[guide.oamIndex].attr1 =
        ((screenX) & 0x1FF) | (2<<14) | hflip;
    shadowOAM[guide.oamIndex].attr2 = ((((9) * (32) + (tileX))) & 0x3FF);
}



int checkPlayerGuideCollision() {
    return collision(
        startPlayer.worldX, startPlayer.worldY, startPlayer.width, startPlayer.height,
        guide.worldX, guide.worldY, guide.width, guide.height
    );
}
