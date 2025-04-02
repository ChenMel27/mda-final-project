#include "gba.h"
#include "mode4.h"
#include "startInstructions.h"
#include "phaseOne.h"

int startPage = 0;
int begin = 0;

void drawStartInstructionsDialouge() {
    fillScreen4(0);

    if (startPage == 0) {
        drawString4(7, 55, "Hello and welcome", 1);
        drawString4(7, 65, "to our mountain town...", 1);
        if (BUTTON_PRESSED(BUTTON_START)) startPage++;
    } else if (startPage == 1) {
        drawString4(5, 55, "My name is Brady,", 1);
        drawString4(5, 65, "I've led tours for 30 years...", 1);
        if (BUTTON_PRESSED(BUTTON_START)) startPage++;
    } else if (startPage == 2) {
        drawString4(5, 60, "You are here to summit mount rainier...", 1);
        if (BUTTON_PRESSED(BUTTON_START)) startPage++;
    } else if (startPage == 3) {
        drawString4(5, 55, "If you want to give", 1);
        drawString4(5, 65, "survival your best shot", 1);
        drawString4(5, 75, "you have come to the right person.", 1);
        if (BUTTON_PRESSED(BUTTON_START)) startPage++;
    } else if (startPage == 4) {
        drawString4(5, 55, "Three sections await with difficulty and", 1);
        drawString4(5, 65, "I will be there to guide you in between", 1);
        drawString4(5, 75, " sections, but it's up to you to survive.", 1);
        if (BUTTON_PRESSED(BUTTON_START)) startPage++;
    } else if (startPage == 5) {
        drawString4(5, 60, "Three sections await with difficulty...", 1);
        if (BUTTON_PRESSED(BUTTON_START)) startPage++;
    } else if (startPage == 6) {
        drawString4(5, 55, "We begin with the first Ascent", 1);
        drawString4(5, 65, "to Camp Muir...", 1);
        if (BUTTON_PRESSED(BUTTON_START)) startPage++;
    } else if (startPage == 7) {
        drawString4(5, 60, "Continue down the bridge to begin.", 1);
        if (BUTTON_PRESSED(BUTTON_START)) {
            begin = 1;
        }
    }
    waitForVBlank();
    flipPages();
}
