extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:
	#var texturerect = $"../SubViewportContainer/SubViewport/Node2D"
	var subviewport = $"../SubViewportContainer/SubViewport"
	var screen = subviewport.get_texture().get_image()
	screen.save_png("screen/screenshot.png")
	get_tree().quit()
