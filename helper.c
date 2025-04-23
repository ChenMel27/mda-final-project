#include "gba.h"

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

    return RGB(r, g, b);
}