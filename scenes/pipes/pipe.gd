class_name Pipe
extends CharacterBody2D


@export var speed := 330
@export var spawn_x := 1760
@export var spawn_y_min := 480
@export var spawn_y_max := 140


@onready var _vgl = PipeVGL.new(self)


func _ready():
	pass


func _process(_delta):
	if (Input.is_action_pressed("start")):
		_vgl.on_moving_requested()


func _physics_process(delta):
	move_and_collide(velocity * delta)


func move():
	velocity.x = -1 * speed


func stop():
	velocity.x = 0


func respawn():
	var spawn_y = randf_range(spawn_y_max, spawn_y_min)
	position = Vector2(spawn_x, spawn_y)