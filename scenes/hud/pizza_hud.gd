extends Control


func _ready():
	EventBus.on_score_changed.sub(_change_score)
	EventBus.on_state_changed.sub(_finish_game)


func _change_score(new_score: int):
	$Score.text = str(new_score)


func _finish_game(state: Globals.State):
	if state == Globals.State.DYING:
		$GameOver.visible = true
