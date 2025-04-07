// -----------------------------------------------------------------------------
// File: health.c
// Summary: Manages and updates the player's health bar using sprite tiles.
// -----------------------------------------------------------------------------

#include "health.h"
#include "sprites.h"

// Health bar sprite
SPRITE health;

// Initializes health bar with default values.
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
    // Number of hits a player can take before deactivating and losing
    health.active = 9;
}

// Disables animation each frame (placeholder).
void updateHealth() {
    health.isAnimating = 0;
}

// Draws the health sprite frame based on current health value.
void drawHealth() {
    int frameIndex = 9 - health.active;
    if (frameIndex < 0) frameIndex = 0;
    if (frameIndex > 8) frameIndex = 8;

    int row = healthBarFrames[frameIndex][0];
    int col = healthBarFrames[frameIndex][1];

    shadowOAM[health.oamIndex].attr0 = ATTR0_Y(health.worldY) | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_WIDE;
    shadowOAM[health.oamIndex].attr1 = ATTR1_X(health.worldX) | ATTR1_SMALL;
    shadowOAM[health.oamIndex].attr2 = ATTR2_TILEID(row, col);
}

// Tile indices for 9 health bar states in 'player' sprite sheet.
int healthBarFrames[9][2] = {
    {6, 5}, {6, 6}, {6, 7},
    {10, 5}, {10, 6}, {10, 7},
    {14, 5}, {14, 6}, {14, 7}
};