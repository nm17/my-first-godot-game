extends KinematicBody2D

const UP = Vector2(0, -1)
var motion = Vector2()
const GRAVITY = 20
const SPEED = 200
const JUMP_HEIGHT = 300

func _physics_process(delta):
	motion.y += 10
	
	if Input.is_action_pressed("ui_right"):
		motion.x = SPEED
		
	elif Input.is_action_pressed("ui_left"):
		motion.x = -SPEED
	else:
		motion.x = 0
	
	if is_on_floor() and Input.is_action_pressed("ui_up"):
		motion.y = -JUMP_HEIGHT
	
	motion = move_and_slide(motion, UP, true)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
