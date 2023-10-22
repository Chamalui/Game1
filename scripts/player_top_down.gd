#My gaym 1
extends CharacterBody2D


const SPEED = 200

@onready var animate = $AnimatedSprite2D

func _animation_flip(player_direction):
	if player_direction.x > 0:
		$AnimatedSprite2D.flip_h = false
		#print(direction.x)
	elif player_direction.x < 0:
		$AnimatedSprite2D.flip_h = true
		#print(direction.x)
		
func direction():
	#var direction = Input.get_vector("left", "right", "up", "down").normalized()
	var a = "1"

func _physics_process(delta):
	var direction = Input.get_vector("left", "right", "up", "down").normalized()
	#direction()
	
	_animation_flip(direction)
	
	if direction:
		velocity = direction * SPEED
		animate.play("Run")
	else:
		velocity = Vector2.ZERO
		animate.play("Idle")
	
	
		

	
	move_and_slide()
