extends HSlider

@onready var LeftArmm = $"../../Arms/LeftArm"
@onready var RightArmm = $"../../Arms/RightArm"

var x_L: int
var x_R: int

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	x_L = LeftArmm.position.x
	x_R = RightArmm.position.x

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_value_changed(value: float) -> void:
	RightArmm.position.x = x_R + value
	LeftArmm.position.x = x_L - value
