class_name CharacterVGL
extends Object


var _state : Globals.State


func _init():
	on_waiting_requested()


func on_waiting_requested():
	if _state == Globals.State.DYING:
		_switch_state(Globals.State.WAITING)


func on_playing_requested():
	if _state == Globals.State.WAITING:
		_switch_state(Globals.State.PLAYING)


func on_dying_requested():
	if _state == Globals.State.PLAYING:
		_switch_state(Globals.State.DYING)


func _switch_state(state: Globals.State):
	_state = state
	EventBus.on_state_changed.trigger(state)
	print("Switching to ", state)