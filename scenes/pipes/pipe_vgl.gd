class_name PipeVGL
extends Object


enum State {
	LOADING,
	MOVING,
	IDLE
}


var _current_state = State.LOADING
var _pipe: Pipe


func _init(pipe: Pipe):
	_pipe = pipe


func on_loading_requested():
	if _current_state == State.IDLE:
		_switch_state(State.LOADING)


func on_moving_requested():
	if _current_state == State.LOADING:
		_switch_state(State.MOVING)
		_pipe.move()


func on_idle_requested():
	if _current_state == State.MOVING:
		_switch_state(State.IDLE)


func _switch_state(state: State):
	_current_state = state