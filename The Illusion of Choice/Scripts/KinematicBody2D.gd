extends KinematicBody2D

export (int) var speed = 200
export (int) var jumpHeight = 500


var velocity = Vector2()
var gravity = jumpHeight * 2.5
var freeze = false

func _init():
	self.position.x = 100
	self.position.y = 600


func get_input():
	if !freeze:
		var walkSpeedMultiplier = 2 if is_on_floor() else 1
		if Input.is_action_pressed('ui_right'):
			velocity.x = speed
		elif Input.is_action_pressed('ui_left'):
			velocity.x = -speed
		else:
			velocity.x = 0
	
		if Input.is_action_just_pressed('ui_down'):
	    	velocity.y = jumpHeight
		if Input.is_action_pressed('ui_up') and is_on_floor():
			velocity.y = -jumpHeight
			
	else:
		velocity.x = 0


func _physics_process(delta):
	velocity.y += gravity * delta
	get_input()
	velocity = move_and_slide(velocity, Vector2(0, -1))

func _on_Title_Proc_body_entered(body):
	if body.name == "Player":
		get_node("/root/Node2D/Control/Title Label").makeVisible()


func _on_Goal_body_entered(body):
	print("Toggling Light")
	freeze = true
	var light = get_node("/root/Node2D/Light2D")
	light.toggleEnergy()

func change_scene():
	var scene = "res://Levels/Level1.tscn"
	get_tree().change_scene(scene)