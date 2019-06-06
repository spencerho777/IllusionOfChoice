extends "res://Scripts/Player.gd"

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
# Called when the node enters the scene tree for the first time.
var madeDecision = false

func _ready():
	pass # Replace with function body.

func change_scene():
	var scene
	if Global.decision1 == "spare":
		scene = "res://Levels/Level5.tscn"
	else:
		scene = "res://Levels/Level5b.tscn"
	get_tree().change_scene(scene)


func _on_Interact_body_entered(body):
	if body.name == "Player":
		body.toggleInteract()
		get_node("/root/Node2D/White Man/Interact Text").toggleVisible()

func _on_Interact_body_exited(body):
	if body.name == "Player":
		body.toggleInteract()
		get_node("/root/Node2D/White Man/Interact Text").toggleVisible()
		
func toggleInteract():
	canInteract = !canInteract

func _on_Goal_body_entered(body):
	if body.name == "Player":
		if !madeDecision:
			get_node("/root/Node2D//Control/Title Label").visible = false
			Global.decision1 = "spare"
			freeze = true
			get_node("/root/Node2D/Control/Result Text").changeText("I left him alone. He hasn't done anything")
			
func interact():
	if !madeDecision:
		get_node("/root/Node2D//Control/Title Label").visible = false
		get_node("/root/Node2D/White Man").die()
		get_node("/root/Node2D/Control/Result Text").changeText("I decided to rid of the problem immediately")
		madeDecision = true
		Global.decision1 = "kill"
		
func toggleLight():
	var light = get_node("/root/Node2D/Light2D")
	light.toggleEnergy()