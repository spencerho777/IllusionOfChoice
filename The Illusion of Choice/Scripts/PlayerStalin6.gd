extends "res://Scripts/Player.gd"

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var decision = "home"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func change_scene():
	var scene = "res://Levels/Stalin7.tscn" if decision == "home" else "res://Levels/Stalin7b.tscn"
	get_tree().change_scene(scene)


func _on_Office_body_entered(body):
	if body.name == "Player":
		decision = "office"
		freeze = true
		var light = get_node("/root/Node2D/Light2D")
		light.toggleEnergy()
