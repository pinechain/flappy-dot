- ~~Create a game world with a floor.~~

- ~~Add an object that represents the main character. Apply a constant force to the character so it falls to the floor.~~
	- ~~Only in PLAYING state~~
	- ~~In LOADING state, the character stays still~~
	- ~~In DYING state, the character ignores input from player~~

- ~~Pipe~~
	- ~~Min: 480px~~
	- ~~Max: 140px~~
	- ~~Distance: 330px~~
	- ~~Destroy: -60px~~
	- ~~Spawn: 1430px~~
	- ~~Max pipes: 8~~
	- ~~States~~
		- ~~LOADING: Pipe is waiting for the game start, outside the screen~~
			- ~~Position: initial~~
			- ~~Speed: 0~~
		- ~~MOVING: Pipe is moving towards the left-hand side~~
			- ~~Position: ?~~
			- ~~Speed: TBD~~
		- ~~IDLE: Pipe is completely stopped, triggered when player dies~~
			- ~~Position: current~~
			- ~~Speed: 0~~

- ~~Add obstacles on the left of the game area. The obstacles should slide across the screen toward the right. The obstacles will appear in pairs, with a vertical gap between them.~~
	- ~~Gaps have fixed size~~
		- ~~Build a pipe asset with a max height value and duplicate it leaving a gap between them~~
	- ~~Obstacles have a fixed distance between them~~
		- ~~Only generate three obstacles and teleport them whenever they would be generated~~
	- ~~Gaps vary procedurally in height~~
		- ~~Roll a random height value between min and max height~~
    
- ~~Detect when the character collides with the floor or obstacles, and reset the game when a collision occurs.~~
- Add a basic game-over screen to display the player’s score.
	- Change to DYING state
		- HUD animation for game over takes place
		- Character ignores input from player
	
- Accumulate one point for each obstacle that the player passes. Display the score.
	- Use the EventBus + Event architecture

- Add some background art! Try layering the background and scrolling at a different rate to the foreground obstacles. This is called Parallax scrolling.

- Add some sounds that will play each time the player gains a point, and when the player loses.

--------------------------------------------

- Track the high-score between play sessions and display the high score alongside the current score.