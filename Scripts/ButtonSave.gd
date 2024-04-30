extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pressed():
	#var sprite = get_node("../CharacterSprite")
	#var animation = sprite.get_animation()
	#var frames = sprite.get_sprite_frames()
	#var texture = frames.get_frame_texture(animation, 0)
	#var image = Image.new()
	var texturerect = get_node("../TextureRect")
	var subviewport = get_node("../SubViewportContainer/SubViewport")
	var screen = subviewport.get_texture().get_image()
	screen.save_png("screen/screenshot.png")

