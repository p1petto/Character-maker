extends Button


func _ready():
	pass
	
	
func _on_pressed():
	if (get_node("ColorPicker").visible == false):
		get_node("ColorPicker").visible = true
	else:
		get_node("ColorPicker").visible = false


func _on_color_picker_color_changed(color):
	var normal_bg_color = StyleBoxFlat.new()
	normal_bg_color.bg_color = color
	add_theme_stylebox_override("normal", normal_bg_color)
