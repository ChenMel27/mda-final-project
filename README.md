# The Summit Ascent

---

## Requirements Checklist

| Feature                                | Status    | Notes                                           |
|----------------------------------------|-----------|-------------------------------------------------|
| Splash menu with navigation            | ✅         | Two options (Start / Instructions)              |
| Game-wide instruction screens          | ✅         | Before each Phase                               |
| Top-down movement                      | ✅         | Start Phase                                     |
| Side-scrolling movement                | ✅         | Phase 1, 2, 3                                   |
| Tilemap collision detection            | ✅         | Start Phase, Phase 1, 2, 3                       |
| Jumping and ducking                    | ✅         | Platformer sections                             |
| Health system                          | ✅         | 0–9 health sprite system                        |
| Pause/resume system                    | ✅         | Press SELECT anywhere                           |
| Camera scrolling                       | ✅         | Start Phase + Platformer Phases                  |
| Simultaneous music and sound effects   | ✅         | BGM + SFX during gameplay                       |
| Win condition                          | ✅         | Reach summit in Phase Three                     |
| Lose condition                         | ✅         | Health depletes to zero                         |

---

## Extras

| Extras                              | Description                                                           |
|-----------------------------------------------|-----------------------------------------------------------------------|
| Cheat system (two cheats)                    | Speed cheat (Phase 1) and Oxygen tank cheat (Phase 3)                 |
| Mosaic pixelation effect                     | Simulates brain fog when oxygen is low                                |
| Palette blending tied to player condition    | Player sprite color fades/changes as oxygen depletes                 |
| Dynamic tilemap modification                 | Bridge tiles appear after wall touch in Phase 3                      |
| Countdown timer using hardware cascade       | Oxygen countdown timer built with Timer 2 → Timer 3 cascading        |
| Animated backgrounds at win/lose screens     | Parallax scrolling continues even after ending                       |


## 🎮 Game Overview

### Splash Menu
- Two options ("START" / "INSTRUCTIONS") highlighted by palette swaps.
- Navigate using UP and DOWN.
- Confirm selection using START.
- Instructions page explains controls and objectives.

---

### Audio
- Background looping music (AnimalJam) on Channel A during the Start Phase.
- Non-looping ambient or area-specific music on Channel A during climbing phases.
- Sound effects (such as hazard collisions) on Channel B.

---

### Instruction Screens
- Full-screen dialogue-based instruction overlays before entering each phase.
- Player advances through pages using START.
- Provides narrative context and phase objectives.

---

### Start Phase (Top‑down Town)
- Top-down 4-way player movement with animated directional frames.
- Tilemap collision detection prevents leaving designated paths.
- Guide NPC patrols along a set range.
- Talking to the Guide triggers dialogue instructions.
- Camera follows player smoothly with scrolling.
- Cheat Activation: After talking to the guide, interact with a shaking bush to unlock the **speed cheat** (player shrinks, moves faster, and color-cycles rapidly).
    - Subpixel movement is handled using fixed-point arithmetic. Internally, playerSubPixelX accumulates velocity in units finer than a single screen pixel, and the player’s visible worldX coordinate is derived using a right-shift operation (>> 3). This technique allows for smooth, variable-speed movement even on low-resolution GBA hardware.

---

### Phase One (Side‑scroll)
- Horizontal walking, climbing, jumping, and ducking.
- Rock collisions reset position and reduce health.
- Crevasse tiles trigger falling animations at preset locations.
- Two-layer parallax scrolling: foreground and background move independently.
- Cheat Effect: If cheat activated, faster movement and smaller sprite for tighter obstacle dodging.

---

### Phase Two (Side‑scroll + Hazards)
- Same mechanics from Phase One.
- Additional falling snow sprite hazards (spawn relative to camera).
- Snow objects cause health loss on collision and respawn offscreen.
- Water tiles deal damage if player steps in them.
- Maintains parallax scrolling backgrounds.
- Sound effects continue playing simultaneously with background music.

---

### Phase Three (Summit Ascent)
- All previous mechanics carry over.
- "Slow terrain" reduces movement frequency to every 4 frames.
- **Oxygen Timer System**:
  - 20-second countdown timer implemented using GBA hardware Timer2 and Timer3.
  - Oxygen depletion triggers sprite palette darkening over time.
  - At less than 3 seconds remaining, **Mosaic pixelation effect** starts simulating brain fog.
- Cheat Activation: Touch the left wall to spawn a bridge and reach an oxygen tank, disabling the timer.
- Visual effects and pixelation increase difficulty if oxygen runs out.

---

### Win State
- Triggered by reaching the far right of Phase Three.
- Plays victory music (WinAudio).
- Displays a multi-layer parallax scrolling scene (mountain summit).
- Animated player sprite continues to move on victory screen.
- Press START to return to the Splash screen.

---

### Lose State
- Triggered if health drops to zero or if oxygen timer expires without cheat.
- Plays sad "game over" sound effect.
- Lose screen includes animated parallax background scrolling.
- Press START to return to the Splash screen.

---

## 🎮 Controls

| Button       | Action                                               |
|--------------|------------------------------------------------------|
| LEFT/RIGHT   | Walk left or right                                   |
| UP           | Climb or Jump (side-scroller) / Move up (top-down)   |
| DOWN         | Duck (side-scroller) / Move down (top-down)          |
| START        | Advance Dialogue / Select option                     |
| SELECT       | Pause or Resume                                      |

---

## Flow

1. **Splash Menu** → choose START or INSTRUCTIONS.
2. **Instructions Screen** → read game controls and goals, return to splash.
3. **Start Phase** → walk around town, talk to the guide NPC to unlock Phase One.
4. **Phase One (Mountain Lower Slopes)** → platforming hazards, environmental challenges.
5. **Phase Two (Glacier Traverse)** → falling snow hazards + parallax scrolling.
6. **Phase Three (Summit Push)** → oxygen countdown, pixelation under hypoxia, final ascent.
7. **Win State** → reach summit, celebrate with parallax scrolling + animated sprite.
8. **Lose State** → depleted health triggers lose screen + parallax background.

---

## Special Mechanics Summary
- **Collision Detection**: Based on collision map color values per pixel.
- **Animated Tiles / Flashing Bridges**: Bridge tiles animate when unlocked after talking to guide.
- **Snow Hazard Logic**: Randomized snow spawn relative to camera viewport.
- **Timer Cascade**: Hardware timers manage oxygen depletion across Phase Three.
- **Mosaic Pixelation**: Oxygen stress is visualized through screen distortion.
- **Sprite Color Cycling**: Cheat mode alters sprite palettes dynamically in Phase One.

---