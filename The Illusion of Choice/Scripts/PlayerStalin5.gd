extends "res://Scripts/Player.gd"

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func change_scene():
	var scene = "res://Levels/Stalin6.tscn"
	get_tree().change_scene(scene)



func _on_Area2D_body_entered(body):
	if body.name == "Player":
		get_node("/root/Node2D/Control/Title Label2").makeVisible()
		get_node("/root/Node2D/sky_background").modulate = Color("#737373")
