extends Node2D

func fire():
	print("piu-piu")
	
func get_player_func():
	var pld = get_parent().direction()
	
	#print(pld)
	
	#if pld.x > 0:
	#	$Sprite2D.flip_v = false
		#print(pld)
		#print(direction.x)
	#elif pld.x < 0:
	#	$Sprite2D.flip_v = true
		#print(direction.x)

func _process(delta):
	#print($".".rotation)
	#look_at(get_global_mouse_position())
	
	get_player_func()
	
	if Input.is_action_just_pressed("ui_select"):
		fire()
		
	#if $".".rotation < 1.5 and $".".rotation > -1.5:
	#	$Sprite2D.flip_v = true
	#else:
	#	$Sprite2D.flip_v = false
	
	
	
	
