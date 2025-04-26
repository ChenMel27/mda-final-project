#include "hiker.h"
#include "gba.h"
#include "mode0.h"
#include "sprites.h"
#include "player.h"
#include "health.h"

// External declarations
extern SPRITE player;
extern SPRITE health;

// Frame list for animation
int animatedHikerFrames[] = {24, 26, 28, 20, 22};

void initAnimatedPlayer() {
    player.x = SCREENWIDTH / 2 - 8;
    player.y = (SCREENHEIGHT / 2 - 16) + 8;
    player.oamIndex = 0;
    player.numFrames = 5;
    player.currentFrame = 0;
    player.direction = 0;

    // Load player sprite palette and tiles
    DMANow(3, (void*)playerPal, SPRITE_PAL, playerPalLen / 2);
    DMANow(3, (void*)playerTiles, &CHARBLOCK[4], playerTilesLen / 2);
}

void updateAnimatedPlayer() {
    static int animCounter = 0;  // counter to control speed

    animCounter++;
    if (animCounter > 10) {  // change frame every ~10 updates (you can tweak 10 higher or lower)
        player.currentFrame = (player.currentFrame + 1) % player.numFrames;
        animCounter = 0;
    }
}


void drawAnimatedPlayer() {
    shadowOAM[player.oamIndex].attr0 = ATTR0_Y(player.y) | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_TALL;
    shadowOAM[player.oamIndex].attr1 = ATTR1_X(player.x) | ATTR1_MEDIUM;
    shadowOAM[player.oamIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(animatedHikerFrames[player.currentFrame], 1);

}
