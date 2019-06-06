extends "res://Scripts/Title Label 70.gd"

var wait_time = 0
var done = false

func ready():
	textSpeed = 0.002
	get("custom_fonts/normal_font").size = 70

func makeVisible():
	self.makingVisible = true
	wait_time = OS.get_ticks_msec()

func _process(delta):
	if makingVisible:
		var vis = get("percent_visible")
		if vis < 1.0:
			set("percent_visible", vis + textSpeed)
		elif OS.get_ticks_msec() - wait_time >= 8000 and !done:
			print(OS.get_ticks_msec(), " ", wait_time)
			nextScene()
			done = true
		elif OS.get_ticks_msec() - wait_time >= 11000:
			get_node("/root/Node2D/Player").change_scene()

func nextScene():
	get_node("/root/Node2D/Audio").play()
	get_node("/root/Node2D/Blackout").visible = true