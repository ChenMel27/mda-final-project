#include "start.h"
#include "gba.h"
#include "mode0.h"
#include "townCM.h"
#include "player.h"
#include "sprites.h"

// --- Guide Movement and Animation Variables ---

// Timing for the guide’s animation.
int guideFrameCounter = 0;
int guideFrameDelay = 6;
int guideAnimIndex = 0;

// Speed and movement direction for the guide.
// guideMoveDirection: -1 = moving left, 1 = moving right.
int guideSpeed = 1;
int guideMoveDirection = -1;

// Define patrol boundaries (set relative to the guide's initial position).
// These will be initialized in initGuideSprite.
int guidePatrolLeftBound = 0;
int guidePatrolRightBound = 0;

// Animation frames (tile X coordinates) for the guide sprite.
// For this example, assume the artwork is drawn facing left by default.
// Therefore, when moving left we use these left frames and no flip;
// when moving right we use these right frames with a flip.
int guideLeftFrames[5] = {18, 16, 14, 12, 10};
int guideRightFrames[4] = {12, 14, 16, 18};

// --- Start Player Animation Variables ---

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

// --- Sprite Structures ---

SPRITE startPlayer;
SPRITE guide;

// Background screen block index.
extern int sbb;

// --- Collision Map Function ---

inline unsigned char startColorAt(int x, int y) {
    return townCMBitmap[OFFSET(x, y, 512)];
}

// --- Initialization Functions ---

void initStartPlayer() {
    startPlayer.worldX = 0;
    startPlayer.worldY = 165;
    startPlayer.x = SCREENWIDTH / 2 - 8;
    startPlayer.y = SCREENHEIGHT / 2 - 8;
    startPlayer.width = 16;
    startPlayer.height = 16;
    startPlayer.oamIndex = 0;
    startPlayer.numFrames = 5;
    startPlayer.currentFrame = 0;
    startPlayer.isAnimating = 1;
    startPlayer.direction = RIGHT;
    startPlayer.yVel = 0;
    
    DMANow(3, (void*)playerPal, SPRITE_PAL, playerPalLen / 2);
    DMANow(3, (void*)playerTiles, &CHARBLOCK[4], playerTilesLen / 2);
}

void initGuideSprite() {
    // Set the starting position for the guide.
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
    
    // Define the patrol boundaries relative to its starting position.
    // Here the guide will move 20 pixels left and right from its starting X value.
    guidePatrolLeftBound = guide.worldX - 20;
    guidePatrolRightBound = guide.worldX + 20;
}

// --- Update Functions ---

void updateStartPlayer(int* hOff, int* vOff) {
    startPlayer.isAnimating = 0;
    int speed = 1;
    
    // Determine the four edges of the player.
    int leftX   = startPlayer.worldX;
    int rightX  = startPlayer.worldX + startPlayer.width - 1;
    int topY    = startPlayer.worldY;
    int bottomY = startPlayer.worldY + startPlayer.height - 1;
    
    // Process input for movement.
    if (BUTTON_HELD(BUTTON_RIGHT)) {
        startPlayer.isAnimating = 1;
        startPlayer.direction = RIGHT;
        int newX = startPlayer.worldX + speed;
        if (startPlayer.worldX + startPlayer.width < MAPWIDTH &&
            startColorAt(newX + startPlayer.width - 1, topY) != 0 &&
            startColorAt(newX + startPlayer.width - 1, bottomY) != 0) {
            startPlayer.worldX = newX;
        }
        if (startColorAt(newX + startPlayer.width - 1, topY) == 2 ||
            startColorAt(newX + startPlayer.width - 1, bottomY) == 2) {
            next = 1;
        }
    }
    if (BUTTON_HELD(BUTTON_LEFT)) {
        startPlayer.isAnimating = 1;
        startPlayer.direction = LEFT;
        int newX = startPlayer.worldX - speed;
        if (newX >= 0 &&
            startColorAt(newX, topY) != 0 &&
            startColorAt(newX, bottomY) != 0) {
            startPlayer.worldX = newX;
        }
    }
    if (BUTTON_HELD(BUTTON_UP)) {
        startPlayer.isAnimating = 1;
        startPlayer.direction = UP;
        int newY = startPlayer.worldY - speed;
        if (newY >= 0 &&
            startColorAt(leftX, newY) != 0 &&
            startColorAt(rightX, newY) != 0) {
            startPlayer.worldY = newY;
        }
    }
    if (BUTTON_HELD(BUTTON_DOWN)) {
        startPlayer.isAnimating = 1;
        startPlayer.direction = DOWN;
        int newY = startPlayer.worldY + speed;
        if (startPlayer.worldY < MAPHEIGHT - startPlayer.height &&
            startColorAt(leftX, newY + startPlayer.height - 1) != 0 &&
            startColorAt(rightX, newY + startPlayer.height - 1) != 0) {
            startPlayer.worldY = newY;
        }
    }
    
    // Handle animation for the start player.
    startHikerFrameCounter++;
    if (startPlayer.isAnimating && startHikerFrameCounter > startHikerFrameDelay) {
        startHikerFrame = (startHikerFrame + 1) % startPlayer.numFrames;
        startHikerFrameCounter = 0;
    } else if (!startPlayer.isAnimating) {
        startHikerFrame = 0;
        startHikerFrameCounter = 0;
    }
    
    // Center the camera on the player.
    *hOff = startPlayer.worldX - (SCREENWIDTH / 2 - startPlayer.width / 2);
    *vOff = startPlayer.worldY - (SCREENHEIGHT / 2 - startPlayer.height / 2);
    
    // Clamp the camera to the map boundaries.
    if (*hOff < 0) *hOff = 0;
    if (*vOff < 0) *vOff = 0;
    if (*hOff > MAPWIDTH - SCREENWIDTH) *hOff = MAPWIDTH - SCREENWIDTH;
    if (*vOff > MAPHEIGHT - SCREENHEIGHT) *vOff = MAPHEIGHT - SCREENHEIGHT;
    
    // Update the background screen block index.
    sbb = 20 + (*hOff / 512);
}

// Add these global variables:
int guideMoveCounter = 0;
int guideMoveDelay = 2; // Increase this value for slower movement.

void updateGuideSprite() {
    // Animate the guide sprite.
    guideFrameCounter++;
    if (guideFrameCounter > guideFrameDelay) {
        if (guideMoveDirection == -1) {
            // Cycle through 6 frames when moving left.
            guideAnimIndex = (guideAnimIndex + 1) % 5;
        } else {
            // Cycle through 5 frames when moving right.
            guideAnimIndex = (guideAnimIndex + 1) % 4;
        }
        guideFrameCounter = 0;
    }
    
    // Increment the movement counter.
    guideMoveCounter++;
    if (guideMoveCounter > guideMoveDelay) {
        // Move the guide sprite along the x-axis.
        guide.worldX += guideSpeed * guideMoveDirection;
        guideMoveCounter = 0;
    }
    
    // Reverse direction if the sprite reaches its patrol boundaries.
    if (guide.worldX < guidePatrolLeftBound) {
        guide.worldX = guidePatrolLeftBound;
        guideMoveDirection = 1;
        guideAnimIndex = 0; // Restart the right-walk animation.
    } else if (guide.worldX > guidePatrolRightBound) {
        guide.worldX = guidePatrolRightBound;
        guideMoveDirection = -1;
        guideAnimIndex = 0; // Restart the left-walk animation.
    }
}


// --- Draw Functions ---

void drawStartPlayer() {
    int screenX = startPlayer.worldX - hOff;
    int screenY = startPlayer.worldY - vOff;
    shadowOAM[startPlayer.oamIndex].attr0 =
        ATTR0_Y(screenY) | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_TALL;
    
    if (startPlayer.direction == RIGHT) {
        shadowOAM[startPlayer.oamIndex].attr1 =
            ATTR1_X(screenX) | ATTR1_MEDIUM;
        shadowOAM[startPlayer.oamIndex].attr2 =
            ATTR2_TILEID(startHikerFramesHorizontal[startHikerFrame], 1);
    } else if (startPlayer.direction == LEFT) {
        shadowOAM[startPlayer.oamIndex].attr1 =
            ATTR1_X(screenX) | ATTR1_MEDIUM | ATTR1_HFLIP;
        shadowOAM[startPlayer.oamIndex].attr2 =
            ATTR2_TILEID(startHikerFramesHorizontal[startHikerFrame], 1);
    } else if (startPlayer.direction == UP) {
        shadowOAM[startPlayer.oamIndex].attr1 =
            ATTR1_X(screenX) | ATTR1_MEDIUM;
        shadowOAM[startPlayer.oamIndex].attr2 =
            ATTR2_TILEID(startHikerFramesUp[startHikerFrame], 1);
    } else if (startPlayer.direction == DOWN) {
        shadowOAM[startPlayer.oamIndex].attr1 =
            ATTR1_X(screenX) | ATTR1_MEDIUM;
        shadowOAM[startPlayer.oamIndex].attr2 =
            ATTR2_TILEID(startHikerFramesDown[startHikerFrame], 1);
    }
}

void drawGuideSprite() {
    int screenX = guide.worldX - hOff;
    int screenY = guide.worldY - vOff;
    shadowOAM[guide.oamIndex].attr0 =
        ATTR0_Y(screenY) | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_TALL;
    
    int tileX;
    int hflip = 0;
    
    // Adjust the flip logic based on the guide artwork.
    // If the artwork is drawn facing left by default:
    //   - When moving left, no flip is necessary.
    //   - When moving right, flip the sprite.
    if (guideMoveDirection == -1) {
        tileX = guideLeftFrames[guideAnimIndex];
        hflip = 0;
    } else {
        tileX = guideRightFrames[guideAnimIndex];
        hflip = ATTR1_HFLIP;
    }
    
    shadowOAM[guide.oamIndex].attr1 =
        ATTR1_X(screenX) | ATTR1_MEDIUM | hflip;
    shadowOAM[guide.oamIndex].attr2 = ATTR2_TILEID(tileX, 9);
}

// --- Collision Checking ---

int checkPlayerGuideCollision() {
    return collision(
        startPlayer.worldX, startPlayer.worldY, startPlayer.width, startPlayer.height,
        guide.worldX, guide.worldY, guide.width, guide.height
    );
}
