extends CharacterBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _animation_flip(monster_direction):
	if monster_direction.x > 0:
		$AnimatedSprite2D.flip_h = false
		#print(direction.x)
	elif monster_direction.x < 0:
		$AnimatedSprite2D.flip_h = true
		#print(direction.x)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
