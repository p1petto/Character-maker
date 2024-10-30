extends HSlider

@export var parent_node: Node 

@onready var sprite = parent_node.get_node("AnimatedSprite2D")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_value_changed(value: float) -> void:
	var name_node = str(parent_node.name)
	var name_animation = "idle_down_" + name_node.to_lower() + "_" + str(value)
	sprite.animation = name_animation
