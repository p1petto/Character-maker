extends Node2D

@onready var head = $Head

enum state_head { UPPER, LOWER }
var current_state_head : state_head = state_head.LOWER : set = set_state

func set_state(new_state: int) -> void:
	current_state_head = new_state

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	match current_state_head:
		state_head.UPPER:
			head.position.y = 14
			
		state_head.LOWER:
			head.position.y = 15	
			


func _on_timer_timeout() -> void:
	if current_state_head == state_head.LOWER:
		set_state(state_head.UPPER)
	elif current_state_head == state_head.UPPER:
		set_state(state_head.LOWER)
