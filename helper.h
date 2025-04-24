#define TILEMAP_SHIFT_ROWS 4
#define TILEMAP_SHIFT_COLS 4
#define SHIFT_TILEMAP_START_ROW 3
#define SHIFT_TILEMAP_START_COL 20
#define SHIFT_SCREENBLOCK_INDEX 21

u16 currentBlock[TILEMAP_SHIFT_ROWS][TILEMAP_SHIFT_COLS];
u16 originalBlock[TILEMAP_SHIFT_ROWS][TILEMAP_SHIFT_COLS];
void animateTilemapShift();
unsigned short blendColor(unsigned short c1, unsigned short c2, int t, int max);