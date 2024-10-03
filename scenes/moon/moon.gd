extends Path2D


@export var speed := 0.01


func _process(delta):
	get_node("%PathFollow2D").progress_ratio += speed * delta