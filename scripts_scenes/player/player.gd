extends CharacterBody2D

var player_alive = true
var attack_ip = false
const SPEED = 200
var current_dir = "none"

func teleport(x, y):
	position = Vector2(x, y)
	move_and_slide()

func _ready():
	#teleport(500, 700)
	pass

func _physics_process(delta):
	player_movment(delta)
	var x_pos = position.x
	var y_pos = position.y
	print("X: ", x_pos, " Y: ", y_pos)

func player_movment(_delta):
	var move_vector = Vector2.ZERO
	if move_vector.length() > 0:
		velocity = move_vector * SPEED
		if move_vector.x > 0.5:
			current_dir = "right"
		elif move_vector.x < -0.5:
			current_dir = "left"
		elif move_vector.y > 0.5:
			current_dir = "down"
		elif move_vector.y < -0.5:
			current_dir = "up"

		play_anim(1)
	else:
		if Input.is_action_pressed("right"):
			current_dir = "right"
			play_anim(1)
			velocity.x = SPEED
			velocity.y = 0.0
		elif Input.is_action_pressed("left"):
			current_dir = "left"
			play_anim(1)
			velocity.x = -SPEED
			velocity.y = 0.0
		elif Input.is_action_pressed("down"):
			current_dir = "down"
			play_anim(1)
			velocity.y = SPEED
			velocity.x = 0.0
		elif Input.is_action_pressed("up"):
			current_dir = "up"
			play_anim(1)
			velocity.y = -SPEED
			velocity.x = 0.0
		else:
			play_anim(0)
			velocity = Vector2.ZERO
	move_and_slide()

func play_anim(movement):
	var dir = current_dir
	var anim = $AnimatedSprite2D

	if dir == "right":
		anim.flip_h = false
		anim.play("side_walk" if movement == 1 else "side_idle")

	if dir == "left":
		anim.flip_h = true
		anim.play("side_walk" if movement == 1 else "side_idle")

	if dir == "up":
		anim.flip_h = false
		anim.play("back_walk" if movement == 1 else "back_idle")

	if dir == "down":
		anim.flip_h = false
		anim.play("front_walk" if movement == 1 else "front_idle")
