extends "res://Scripts/Player.gd"

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var started = false
# Called when the node enters the scene tree for the first time.
func _ready():
	freeze = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	#if !started:
		#get_node("/root/Node2D/Control/Title Label").changeText("But the white man did not come alone. His friends possessed weapons of war far beyond me. The omen made good on its promise")

func change_scene():
	var scene = "res://Levels/Stalin1.tscn"
	get_tree().change_scene(scene)
