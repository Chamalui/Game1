extends CharacterBody2D


const SPEED = 200

@onready var animate = $AnimatedSprite2D

func _physics_process(delta):
	var direction = Input.get_vector("left", "right", "up", "down").normalized()
	
	if direction:
		velocity = direction * SPEED
		animate.play("Run")
	else:
		velocity = Vector2.ZERO
		animate.play("Idle")
	
	if direction.x > 0:
		$AnimatedSprite2D.flip_h = false
		#print(direction.x)
	elif direction.x < 0:
		$AnimatedSprite2D.flip_h = true
		#print(direction.x)

	
	
	move_and_slide()