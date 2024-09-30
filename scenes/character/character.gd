extends RigidBody2D


@export var force_intensity := -30000


func _process(_delta):
	if Input.is_action_just_pressed("jump"):
		_move()


func _move():
	var force = Vector2(0, force_intensity)
	apply_central_force(force)
