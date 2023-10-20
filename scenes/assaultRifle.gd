extends Node2D

func fire():
	print("piu-piu")

func _process(delta):
	print($".".rotation)
	look_at(get_global_mouse_position())
	
	if Input.is_action_just_pressed("ui_select"):
		fire()
		
	if $".".rotation < 1.5 and $".".rotation > -1.5:
		$Sprite2D.flip_v = true
	else:
		$Sprite2D.flip_v = false
