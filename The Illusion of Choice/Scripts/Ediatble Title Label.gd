extends "res://Scripts/Title Label.gd"

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	textSpeed = 0.002
	get("custom_fonts/normal_font").size = 80

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
