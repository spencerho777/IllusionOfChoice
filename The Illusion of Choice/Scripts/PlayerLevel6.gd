extends "res://Scripts/Player.gd"

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var decision = "whites"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func whichScene():
	var scene = "res://Levels/Level8.tscn" if decision == "whites" else "res://Levels/Level7.tscn"
	return scene

func change_scene():
	var scene = whichScene()
	get_tree().change_scene(scene)

func resetPosition():
	self.position.x = 600
	self.position.y = 530

func _on_Goal2_body_entered(body):
	if body.name == "Player":
		decision = "brothers"
		print("Toggling Light")
		freeze = true
		var light = get_node("/root/Node2D/Light2D")
		light.toggleEnergy()
