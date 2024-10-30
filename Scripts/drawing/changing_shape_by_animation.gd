extends HSlider

@onready var sprite = $"../../AnimatedSprite2D"
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_value_changed(value: float) -> void:
	var name_animation = "idle_legs_" + str(value)
	sprite.animation = name_animation
