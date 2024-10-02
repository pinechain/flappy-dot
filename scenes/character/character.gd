class_name Character
extends RigidBody2D


@export var force_intensity := -30000
var _vgl := CharacterVGL.new()

@onready var _is_dead := false


func _ready():
	_vgl.on_waiting_requested()
	_pause()


func _process(_delta):
	if Input.is_action_just_pressed("jump") and not _is_dead:
		_vgl.on_playing_requested()
		_resume()
		_move()


func _on_body_entered(_body:Node):
	_vgl.on_dying_requested()
	_stop()


func _move():
	var force = Vector2(0, force_intensity)
	apply_central_force(force)


func _pause():
	freeze = true


func _resume():
	freeze = false


func _stop():
	_is_dead = true
