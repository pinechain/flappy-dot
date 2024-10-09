extends Node


# General game states
var on_state_changed := ParamEvent.new()


# Score structure
var on_score_changed := ParamEvent.new()
var on_goal_reached := Event.new()