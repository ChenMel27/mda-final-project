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
# 2 "helper.c" 2

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
