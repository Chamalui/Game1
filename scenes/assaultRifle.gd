extends Node2D

var bullet_speed = 1500
var bullet = preload("res://scenes/bullet.tscn")

func fire():
	print("piu-piu")
	print(global_position.x,"позоция пушки")
	print(get_global_mouse_position().x,"позиция курсора")
	print(global_position.x - get_global_mouse_position().x,"разница расстояний курсора и пушки")
	var velocity = Vector2()
	var bullet_instance = bullet.instantiate()
	bullet_instance.position = get_global_position()
	bullet_instance.rotation_degrees = rotation_degrees
	#bullet_instance.apply_impulse(Vector2(),Vector2(bullet_speed,0).rotated(rotation))
	bullet_instance.linear_velocity = Vector2(bullet_speed,0).rotated(rotation)
	get_tree().get_root().call_deferred("add_child",bullet_instance)
	#velocity = Vector2(bullet_speed, 0).rotated(bullet_instance.rotation)
	

func _process(delta):
	#print((($".".rotation)*180)/PI)
	look_at(get_global_mouse_position())
	
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
		
	#print(bullet.position)
	#if $".".rotation < 1.5 and $".".rotation > -1.5:
	#	$Sprite2D.flip_v = true
	#else:
	#	$Sprite2D.flip_v = false
	var direction = Input.get_vector("left", "right", "up", "down").normalized()
	
	#if direction.x > 0:
	#	$Sprite2D.flip_v = false
		#print(direction.x)
	#elif direction.x < 0:
	#	$Sprite2D.flip_v = true
		#print(direction.x)
		
	if global_position.x - get_global_mouse_position().x < 0:
		$Sprite2D.flip_v = false
	else:
		$Sprite2D.flip_v = true
