extends Node2D


@onready var _score := 0


func _ready():
	EventBus.on_goal_reached.sub(_increase_score)
	EventBus.on_state_changed.sub(_reset_score)


func _increase_score():
	print("ok got it")
	_change_score(_score + 1)


func _reset_score(state: Globals.State):
	if state == Globals.State.DYING:
		_change_score(0)


func _change_score(new_score: int):
	_score = new_score
	EventBus.on_score_changed.trigger(_score)
	print(_score)