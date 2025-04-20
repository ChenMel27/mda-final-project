# The Summit Ascent  

## Finished

- **Splash Menu**  
  - Two options (“START” / “INSTRUCTIONS”) highlighted in red/black via palette swaps  
  - Navigate with UP/DOWN, confirm with START  
  - “INSTRUCTIONS” brings up a full‑screen “Game Instructions” tilemap, exit back with START  

- **Audio**   
  - Looping background track (AnimalJam) on channel A during the Start phase  
  - Non looping background adventure sound on channel B after talking to guide after Start phase

- **Game‑wide Instruction Screens**  
  - Dialogue overlay before Phase One  
  - Repeated two‑page instructions before each phase
  - Go to each slide with START  

- **Start Phase (Top‑down Town)**  
  - 4‑way movement with separate frames for up/down/left/right  
  - Tile‑map collision; guide NPC patrols, animates, and on collision leads to Phase One intro  
  - Camera centers on the player + updates background screen‑block index as you scroll  
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
  - Accessible in any phase besides phase 3 or the start town via START  
  - Shows a pause screen

- **Health Bar System**  
  - Sprite bar (0–9 frames) updated on damage  

## Controls

- **← →** Walk  
- **↑** Jump / Climb (side‑scroll) / Up (top‑down)  
- **↓** Duck  / Down (top‑down) 
- **START** Pause / Advance dialogue/instruction slides  

## Flow

1. **Splash** → choose START or INSTRUCTIONS  
2. **Game Instructions** → exit back to Splash  
3. **Start Phase** → talk to guide → enter Phase One dialogue  
4. **Phase One** → complete → Phase Two dialogue  
5. **Phase Two** → complete → Phase Three dialogue  
6. **Phase Three** → reach summit → Win  
7. **At any point** → START to pause → START again to resume  