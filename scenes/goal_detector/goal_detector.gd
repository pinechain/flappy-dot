extends Area2D


func _on_body_entered(_body:Node2D):
	EventBus.on_goal_reached.trigger()