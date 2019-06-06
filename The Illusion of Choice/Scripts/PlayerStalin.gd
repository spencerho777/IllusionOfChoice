extends "res://Scripts/Player.gd"

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func resetPosition():
	self.position.x = 228
	self.position.y = 632

func _on_Title_Proc2_body_entered(body):
	if body.name == "Player":
		get_node("/root/Node2D/Control/Title Label2").makeVisible()


func _on_Title_Proc3_body_entered(body):
	if body.name == "Player":
		get_node("/root/Node2D/Control/Title Label3").makeVisible()
		
func change_scene():
	var scene = "res://Levels/Stalin3.tscn"
	get_tree().change_scene(scene)
