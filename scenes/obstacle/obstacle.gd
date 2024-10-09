class_name Obstacle
extends CharacterBody2D


@export_category("Movement")
@export var speed := 330
@export var spawn_x := 1760
@export var spawn_y_min := 480
@export var spawn_y_max := 140

@export_category("Flags")
@export var should_move_when_waiting: bool


func _ready():
	EventBus.on_state_changed.sub(_switch_state)


func _physics_process(delta):
	move_and_collide(velocity * delta)


func move():
	velocity.x = -1 * speed


func stop():
	velocity.x = 0


func respawn():
	var spawn_y = randf_range(spawn_y_max, spawn_y_min)
	position = Vector2(spawn_x, spawn_y)


func _switch_state(state: Globals.State):
	match state:
		Globals.State.DYING:
			stop()
		Globals.State.PLAYING:
			move()
		Globals.State.WAITING: 
			if should_move_when_waiting:
				move()
