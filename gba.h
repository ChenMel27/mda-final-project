#ifndef GBA_H 
#define GBA_H

// Typedefs
typedef signed char s8;
typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;
typedef signed int s32;
typedef unsigned int u32;
typedef signed long long s64;
typedef unsigned long long u64;

// Display constants
#define SCREENHEIGHT 160 // Height of the GBA display
#define SCREENWIDTH  240 // Width of the GBA display

// Pointer to the start of video memory
extern volatile unsigned short *videoBuffer;

// Finds 1D position from 2D coordinates
#define OFFSET(x, y, width) ((y) * (width) + (x))

// Display control register
#define REG_DISPCTL (*(volatile unsigned short *)0x4000000)

// Bits for display control register
#define MODE(x) ((x) & 7) // Sets GBA video mode (REG_DISPCTL)
#define DISP_BACKBUFFER (1 << 4) // Displays backbuffer for page flipping (REG_DISPCTL)
#define BG_ENABLE(x) (1 << (8 + (x % 4))) // Enables specified background (REG_DISPCTL)
#define SPRITE_ENABLE (1 << 12) // Enable sprites (REG_DISPCTL)


#define REG_DISPSTAT (*(volatile unsigned short*)0x4000004)
#define REG_IE       (*(volatile unsigned short*)0x4000200)
#define REG_IF       (*(volatile unsigned short*)0x4000202)
#define REG_IME      (*(volatile unsigned short*)0x4000208)
#define REG_INTERRUPT ((void (**)())0x3007FFC)

#define IRQ_VBLANK  (1 << 0)
#define DISPSTAT_VBLANK_IRQ (1 << 3)


// Read-only, holds which scanline is being drawn
#define REG_VCOUNT (*(volatile unsigned short *)0x4000006)

// Waits until scanline has just become 160
void waitForVBlank();

// Checks for collision between two rectangles
int collision(int x1, int y1, int width1, int height1, int x2, int y2, int width2, int height2);

// Color
#define BG_PALETTE ((unsigned short *)0x5000000)
#define RGB(R, G, B) (((R) & 31) | ((G) & 31) << 5 | ((B) & 31) << 10)
#define BLACK   RGB(0, 0, 0)
#define WHITE   RGB(31, 31, 31)
#define GRAY    RGB(15, 15, 15)
#define RED     RGB(31, 0, 0)
#define GREEN   RGB(0, 31, 0)
#define BLUE    RGB(0, 0, 31)
#define CYAN    RGB(0, 31, 31)
#define MAGENTA RGB(31, 0, 31)
#define YELLOW  RGB(31, 31,0)

// Buttons
#define REG_BUTTONS (*(volatile unsigned short *)0x04000130) // Buttons down register
#define BUTTON_A         (1<<0) // Mask for button A (REG_BUTTONS or REG_KEYCNT)
#define BUTTON_B         (1<<1) // Mask for button B (REG_BUTTONS or REG_KEYCNT)
#define BUTTON_SELECT    (1<<2) // Mask for button SELECT (REG_BUTTONS or REG_KEYCNT)
#define BUTTON_START     (1<<3) // Mask for button START (REG_BUTTONS or REG_KEYCNT)
#define BUTTON_RIGHT     (1<<4) // Mask for RIGHT button (REG_BUTTONS or REG_KEYCNT)
#define BUTTON_LEFT      (1<<5) // Mask for LEFT button (REG_BUTTONS or REG_KEYCNT)
#define BUTTON_UP        (1<<6) // Mask for UP button (REG_BUTTONS or REG_KEYCNT)
#define BUTTON_DOWN      (1<<7) // Mask for DOWN button (REG_BUTTONS or REG_KEYCNT)
#define BUTTON_RSHOULDER (1<<8) // Mask for RIGHT SHOULDER button (REG_BUTTONS or REG_KEYCNT)
#define BUTTON_LSHOULDER (1<<9) // Mask for LEFT SHOULDER button (REG_BUTTONS or REG_KEYCNT)

// Button checks
extern unsigned short oldButtons; // Keeps track of buttons pressed in previous frame
extern unsigned short buttons; // Keeps track of buttons pressed in current frame
#define BUTTON_HELD(key)    (~(buttons) & (key)) // Checks if a button is currently pressed
#define BUTTON_PRESSED(key) (!(~(oldButtons) & (key)) && (~(buttons) & (key))) // Checks if a button is currently pressed and wasn't in the previous frame

// DMA
typedef volatile struct {  
    volatile void* src;  
    volatile void* dest;  
    unsigned int ctrl;
} DMAChannel;

// Start of DMA channels 
#define DMA ((DMAChannel*)0x040000B0)

// DMA bits
#define DMA_DESTINATION_INCREMENT (0 << 21) // Increment destination (move "forwards" in memory)
#define DMA_DESTINATION_DECREMENT (1 << 21) // Decrement destination (move "backwards" in memory)
#define DMA_DESTINATION_FIXED     (2 << 21) // Keep destination fixed
#define DMA_DESTINATION_RESET     (3 << 21) // Reset destination to beginning when repeating
#define DMA_SOURCE_INCREMENT      (0 << 23) // Increment source (move "forwards" in memory)
#define DMA_SOURCE_DECREMENT      (1 << 23) // Decrement source (move "backwards" in memory)
#define DMA_SOURCE_FIXED          (2 << 23) // Keep source fixed
#define DMA_REPEAT (1 << 25) // Repeats every time 
#define DMA_16     (0 << 26) // Copy 2 bytes at a time
#define DMA_32     (1 << 26) // Copy 4 bytes at a time
#define DMA_AT_NOW     (0 << 28) // Start DMA immediately
#define DMA_AT_VBLANK  (1 << 28) // Start DMA at VBlank
#define DMA_AT_HBLANK  (2 << 28) // Start DMA at HBlank
#define DMA_AT_REFRESH (3 << 28) // DMA1 and DMA2, refill FIFO once empty. DMA3, transfer starts at scaline==2 and repeats until scanline==162
#define DMA_IRQ (1 << 30) // Request an interrupt once DMA is finished
#define DMA_ON  (1 << 31) // Enable DMA!!!

// Immediately begins a DMA transfer using parameters
void DMANow(int channel, volatile void* src, volatile void* dest, unsigned int ctrl);


// =================================== TIMERS ====================================

// Controllers
#define REG_TM0CNT *(volatile unsigned short*)0x4000102
#define REG_TM1CNT *(volatile unsigned short*)0x4000106
#define REG_TM2CNT *(volatile unsigned short*)0x400010A
#define REG_TM3CNT *(volatile unsigned short*)0x400010E

// Timer values
#define REG_TM0D       *(volatile unsigned short*)0x4000100
#define REG_TM1D       *(volatile unsigned short*)0x4000104
#define REG_TM2D       *(volatile unsigned short*)0x4000108
#define REG_TM3D       *(volatile unsigned short*)0x400010C

// Timer flags
#define TIMER_ON      (1<<7)
#define TIMER_OFF     (0<<7)
#define TM_IRQ        (1<<6)
#define TM_CASCADE    (1<<2)
#define TM_FREQ_1     0
#define TM_FREQ_64    1
#define TM_FREQ_256   2
#define TM_FREQ_1024  3
// Define the hardware register addresses for blending
#define REG_BLDCNT (*(volatile unsigned short*)0x4000050)
#define REG_BLDY   (*(volatile unsigned short*)0x4000052)

// Bit masks for REG_BLDCNT:

// Effect bits: set the blend mode (here, we use the standard blend effect).
#define BLDCNT_EFFECT_NONE   0
#define BLDCNT_EFFECT_BLEND  (1 << 6)  // Standard blend mode

// Target bits: specify which backgrounds/objects are affected by the blend.
#define BLDCNT_TGT1_BG0      (1 << 0)
#define BLDCNT_TGT1_BG1      (1 << 1)
#define BLDCNT_TGT1_BG2      (1 << 2)
#define BLDCNT_TGT1_BG3      (1 << 3)
#define BLDCNT_TGT1_OBJ      (1 << 4)  // Sprites (objects)
#define BLDCNT_TGT1_BD       (1 << 5)  // Backdrop

// REG_BLDY is used to set the blend intensity (0 = no blend, 16 = full blend)

#endif