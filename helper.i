# 1 "helper.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "helper.c"
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
# 2 "helper.c" 2
# 1 "helper.h" 1







u16 currentBlock[4][4];
u16 originalBlock[4][4];
void animateTilemapShift();
unsigned short blendColor(unsigned short c1, unsigned short c2, int t, int max);
# 3 "helper.c" 2
# 1 "mode0.h" 1
# 51 "mode0.h"
typedef struct {
 u16 tileimg[8192];
} CB;



typedef struct {
 u16 tilemap[1024];
} SB;
# 4 "helper.c" 2

extern int shiftingRight;
extern int shiftTimer;

u16 blendColor(u16 c1, u16 c2, int t, int max) {
    int r1 = c1 & 0x1F;
    int g1 = (c1 >> 5) & 0x1F;
    int b1 = (c1 >> 10) & 0x1F;

    int r2 = c2 & 0x1F;
    int g2 = (c2 >> 5) & 0x1F;
    int b2 = (c2 >> 10) & 0x1F;

    int r = r1 + ((r2 - r1) * t) / max;
    int g = g1 + ((g2 - g1) * t) / max;
    int b = b1 + ((b2 - b1) * t) / max;

    return (((r) & 31) | ((g) & 31) << 5 | ((b) & 31) << 10);
}

void animateTilemapShift() {
    shiftTimer++;
    if (shiftTimer < 10) return;
    shiftTimer = 0;

    int rowStart = 3;
    int colStart = 20;

    if (shiftingRight) {

        for (int y = 0; y < 4; y++) {
            for (int x = 4 - 1; x > 0; x--) {
                currentBlock[y][x] = currentBlock[y][x - 1];
            }

            currentBlock[y][0] = ((0) & 1023) | (((0) & 15) << 12);
        }
    } else {

        for (int y = 0; y < 4; y++) {
            for (int x = 0; x < 4 - 1; x++) {
                currentBlock[y][x] = currentBlock[y][x + 1];
            }

            currentBlock[y][4 - 1] = ((0) & 1023) | (((0) & 15) << 12);
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

    shiftingRight = !shiftingRight;
}
