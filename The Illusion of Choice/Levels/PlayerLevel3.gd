extends "res://Scripts/Player.gd"

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func change_scene():
	var scene = "res://Levels/Level4.tscn"
	get_tree().change_scene(scene)

func _on_Secondary_Text_Proc_body_entered(body):
	print(body.name, OS.get_ticks_msec())
	if body.name == "Player":
		get_node("/root/Node2D/Control/Secondary Text").makeVisible()
		
func resetPosition():
	self.position.x = 100
	self.position.y = 65
