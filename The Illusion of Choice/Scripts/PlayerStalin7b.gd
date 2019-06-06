extends "res://Scripts/Player.gd"

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	print(self.modulate)

func change_scene():
	var scene = "res://Levels/End Screen.tscn"
	get_tree().change_scene(scene)
	

func _process(delta):
	#147, 31, 31
	var p = ((1200 - self.position.x) / 1200)
	if p > (147.0 / 255.0):
		self.modulate.r = p
		
	if p > (31.0 / 255.0):
		self.modulate.g = p
		self.modulate.b = p