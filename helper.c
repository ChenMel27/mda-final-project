#include "gba.h"
#include "helper.h"
#include "mode0.h"

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

    return RGB(r, g, b);
}

void animateTilemapShift() {
    shiftTimer++;
    if (shiftTimer < 10) return;
    shiftTimer = 0;

    int rowStart = SHIFT_TILEMAP_START_ROW;
    int colStart = SHIFT_TILEMAP_START_COL;

    if (shiftingRight) {
        // Shift right: move tile IDs right
        for (int y = 0; y < TILEMAP_SHIFT_ROWS; y++) {
            for (int x = TILEMAP_SHIFT_COLS - 1; x > 0; x--) {
                currentBlock[y][x] = currentBlock[y][x - 1];
            }
            // Replace leftmost column with transparent tile
            currentBlock[y][0] = TILEMAP_ENTRY_TILEID(0) | TILEMAP_ENTRY_PALROW(0);
        }
    } else {
        // Shift left: move tile IDs left
        for (int y = 0; y < TILEMAP_SHIFT_ROWS; y++) {
            for (int x = 0; x < TILEMAP_SHIFT_COLS - 1; x++) {
                currentBlock[y][x] = currentBlock[y][x + 1];
            }
            // Replace rightmost column with transparent tile
            currentBlock[y][TILEMAP_SHIFT_COLS - 1] = TILEMAP_ENTRY_TILEID(0) | TILEMAP_ENTRY_PALROW(0);
        }
    }

    // Write currentBlock into screenblock map
    for (int y = 0; y < TILEMAP_SHIFT_ROWS; y++) {
        for (int x = 0; x < TILEMAP_SHIFT_COLS; x++) {
            int row = rowStart + y;
            int col = colStart + x;
            int blk = SHIFT_SCREENBLOCK_INDEX + (row / 32) * 2 + (col / 32);
            int localRow = row % 32;
            int localCol = col % 32;
            SCREENBLOCK[blk].tilemap[localRow * 32 + localCol] = currentBlock[y][x];
        }
    }

    shiftingRight = !shiftingRight;
}

