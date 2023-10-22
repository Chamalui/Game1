extends Node2D

func fire():
	print("piu-piu")
	print(global_position)

func _process(delta):
	#print((($".".rotation)*180)/PI)
	#look_at(get_global_mouse_position())
	
	#Странное поведение объекта: он поворачивается приемущественно когда курсор вне окна с игрой и обнуляет значение угла когда он становится больше шести с чем-то значения всегда разные
	#var pre = $".".position-get_global_mouse_position()
	#$".".rotation = pre.angle()+PI
	#print($".".rotation)
	
	#Тоже самое, но смог выяснить что наибольшая эфективность поворота достигается когда курсов двигается по краям экрана
	#var mouse = get_global_mouse_position()
	#var pre = atan2($".".position.y-mouse[1],mouse[0]-$".".position.x)
	#$".".rotation = pre*-1
	#print($".".rotation)
	
	#get_player_func()
	
	if Input.is_action_just_pressed("ui_select"):
		fire()
		
	#if $".".rotation < 1.5 and $".".rotation > -1.5:
	#	$Sprite2D.flip_v = true
	#else:
	#	$Sprite2D.flip_v = false
	var direction = Input.get_vector("left", "right", "up", "down").normalized()
	
	if direction.x > 0:
		$Sprite2D.flip_v = false
		#print(direction.x)
	elif direction.x < 0:
		$Sprite2D.flip_v = true
		#print(direction.x)
	
	
	
	
