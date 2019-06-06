extends "res://Scripts/Player.gd"

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var wait = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("/root/Node2D/Blackout").modulate.a = 0
	wait = OS.get_ticks_msec()
	
func _process(delta):
	if OS.get_ticks_msec() - wait > 6000:
		fadeInBlackout()

func change_scene():
	var scene = "res://Levels/End Screen.tscn"
	get_tree().change_scene(scene)
	
func fadeInBlackout():
	get_node("/root/Node2D/Blackout").modulate.a = get_node("/root/Node2D/Blackout").modulate.a + 0.02
	if get_node("/root/Node2D/Blackout").modulate.a >= 3:
		change_scene()