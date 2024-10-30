extends Node2D

@export var coordsY: PackedInt32Array

enum state { UPPER, LOWER }
var current_state : state = state.LOWER : set = set_state

func set_state(new_state: int) -> void:
	current_state = new_state

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if coordsY.size() >= 2:
		match current_state:
			state.UPPER:
				position.y = coordsY[1]
				
			state.LOWER:
				position.y = coordsY[0]
	



func _on_timer_timeout() -> void:
		if current_state == state.LOWER:
			set_state(state.UPPER)
		elif current_state == state.UPPER:
			set_state(state.LOWER)
