# The Summit Ascent  

## Finished
- **Start Phase (Top-down):**  
  A functioning start phase where the player can walk around a town environment and interact with a guide to progress to the main climb.
- **Dialogue System:**  
  Mode 4 dialogue slides with controls explanation and setup.
- **Phase One (Side-scroll):**  
  A side-scrolling phase where the animated player can walk, jump, and duck. Includes animation, collision detection, terrain climbing, and health loss upon touching water and rock.
- **Phase Two (Side-scroll with Hazards):**  
  Adds falling snow hazards and water that reduce health on collision. 
  Includes parallax scrolling.
- **Phase Three (Final Ascent):**  
  Final climb with dangerous terrain and snow hazards. 
  Health-based gameplay continues with win condition at the map edge.
- **Health Bar System:**  
  A sprite health bar that visually updates from full to empty using tile frames (max 9). 
  Displays in all side-scrolling phases.

- **Game States:**
  - `SPLASH` – Title screen
  - `START` – Top-down town
  - `DIALOGUE` – Instruction slides
  - `PHASEONE` – Side-scrolling level (Rocks and water)
  - `PHASETWO` – Side-scrolling level (Snow and water)
  - `PHASETHREE` – Side-scrolling level (Final level - Snow)
  - `PAUSE` – Static splash-style pause screen
  - `LOSE` – Static lose screen
  - `WIN` – Static win screen

- **Player & Guide Sprites:**
  - Player has animated frames and ducking pose.
  - Collision with guide triggers dialogue.
  - Player loses health when colliding with danger tiles.

## What Still Needs to be Added

- [ ] **Improved Win/Lose Screens**
- [ ] **Pause Menu Bug Fixes**
- [ ] **Music & Sound Effects**
- [ ] **More Level Design & Environmental Obstacles**
- [ ] **Healing / Pickups Mechanics and Cheat**

---

## Known Bugs
- **Sprite Flicker Between States:**  
  May be caused by `shadowOAM` not being reset or DMA timing.
- **Pause State**  
---

## Controls

- `← →` Walk  
- `↑` Jump (side-scroll) / Interact (top-down)  
- `↓` Duck (side-scroll)  
- `START` Pause game / Advance dialogue  


## Navigation Flow

1. **Start Phase (Top-down Town)**  
   Move around using arrow keys. Find and collide with the guide NPC to enter the dialogue state.

2. **Dialogue Slides**  
   Press `START` to flip through instructional slides.

3. **Phase One**  
   Use directional controls to move, jump, and duck. Colliding with water or brown rocks reduces health.

4. **Phase Two**  
   Dodge falling snow while going through terrain. Snow and water contact resets position and reduces health.

5. **Phase Three (Final Push)**  
   Reach the far right side to win. Snow contact resets position and reduces health.


