#include "sprites.h"

OBJ_ATTR shadowOAM[128];
void hideSprites(){
    int i;
    for (i = 0; i < 128; i++) {
        shadowOAM[i].attr0 = ATTR0_HIDE;
    }
    // Immediately update OAM (using DMA is recommended for speed)
    DMANow(3, shadowOAM, OAM, 128 * 4); // 4 halfwords per sprite (check your system)
}
