extends AnimatedSprite2D

func _on_color_picker_button_color_changed(color):
	material.set("shader_parameter/newcolor1",color)
	pass 


func _on_color_picker_button_2_color_changed(color):
	material.set("shader_parameter/newcolor2",color)
	pass


func _on_color_picker_button_3_color_changed(color):
	material.set("shader_parameter/newcolor3",color)
	pass 
	



func _on_color_picker_color_changed(color):
	material.set("shader_parameter/newcolor1",color)
	material.set("shader_parameter/newcolor2", color)
	material.set("shader_parameter/newcolor3", color)
	material.set("shader_parameter/newcolor4", color)
	material.set("shader_parameter/newcolor5", color)
	pass 
