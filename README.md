# The Summit Ascent  

## Finished

- **Splash Menu**  
  - Two options (“START” / “INSTRUCTIONS”) highlighted in red/black via palette swaps  
  - Navigate with UP/DOWN, confirm with START  
  - “INSTRUCTIONS” brings up a full‑screen “Game Instructions” tilemap, exit back with START  

- **Audio**  
  - mGBA debug output enabled (`mgba_open()`)  
  - Simple sound engine initialized (`setupSounds()`)  
  - Looping background track (AnimalJam) on channel A during the Start phase  
  - Placeholder for digital sound effects via `digitalSound.h`  

- **Game‑wide Instruction Screens**  
  - Four‑page dialogue overlay before Phase One  
  - Repeated two‑page overlays before each subsequent phase (Phase Two, Phase Three)  
  - Advance each slide with START  

- **Start Phase (Top‑down Town)**  
  - 4‑way movement with separate frames for up/down/left/right  
  - Tile‑map collision; guide NPC patrols, animates, and on collision leads to Phase One intro  
  - Camera centers on the player, updates background screen‑block index as you scroll  
  - Pause (START) saves your X/Y and returns you to the same spot on unpause  

- **Phase One (Side‑scroll)**  
  - Horizontal walk, jump, duck, and up‑to‑3px slope‑climb logic  
  - Rock collision resets position & deducts health  
  - Three crevasse zones each trigger a falling animation from preset coordinates  
  - Two‑layer parallax (foreground + back “day” layer)  

- **Phase Two (Side‑scroll with Hazards)**  
  - All Phase One mechanics  
  - Water tiles that damage & reset the player on contact  
  - Falling snow hazards tied to the current viewport (spawn buffer, constant speed, RNG seed)  
  - Parallax scrolling via separate BG layers  

- **Phase Three (Final Ascent)**  
  - All Phase Two mechanics  
  - “Slow‑mode” terrain throttles movement updates every 4 frames  
  - 20‑second oxygen timer using hardware timers (Timer2 → Timer3 cascade)  
  - Two 16×16 sprite digits display countdown; player palette blends as oxygen depletes  
  - Win on reaching the far right of the map  

- **Pause / Resume**  
  - Accessible in any phase or the start town via START  
  - Displays a pause screen overlay; RETURNING restores your last state without re‑initializing  

- **Health Bar System**  
  - On‑screen sprite bar (0–9 frames) updated immediately on damage  

- **Game States**  
  - `SPLASH`, `GAMEINSTRUCTIONS`, `START`, `DIALOGUE`, `PHASEONE`,  
    `DIALOGUE2`, `PHASETWO`, `DIALOGUE3`, `PHASETHREE`, `PAUSE`, `LOSE`, `WIN`  

## Controls

- **← →** Walk  
- **↑** Jump / Climb (side‑scroll) / Interact (top‑down)  
- **↓** Duck  
- **START** Pause / Advance dialogue/instruction slides  

## Flow

1. **Splash** → choose START or INSTRUCTIONS  
2. **Game Instructions** → exit back to Splash  
3. **Start Phase** → talk to guide → enter Phase One dialogue  
4. **Phase One** → complete → Phase Two dialogue  
5. **Phase Two** → complete → Phase Three dialogue  
6. **Phase Three** → reach summit → Win  
7. **At any point** → START to pause → START again to resume  

## To Do

- [ ] Polish Win/Lose screens  
- [ ] Fix pause‑menu edge cases  
- [ ] Add more music & sound effects  
- [ ] Expand level design & pickups  
