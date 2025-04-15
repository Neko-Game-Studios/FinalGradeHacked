extends CharacterBody2D

var SPEED = 40
var player_chase = false
var player = null
var current_dir = "none"
var health = 60
var player_in_attack_zone = false
var can_take_damage = true


func _on_detect_body_entered(body):
	player = body
	player_chase = true

func _on_detect_body_exited(_body):
	player = null
	player_chase = false

func _on_box_hitbox_body_entered(body):
	if body.has_method("player"):
		player_in_attack_zone = true

func _on_enemy_hitbox_body_exited(body):
	if body.has_method("player"):
		player_in_attack_zone = false

func deal_with_damage():
	if player_in_attack_zone and Global.player_current_attack == true:
		if can_take_damage == true:
			health = health - 20
			$take_damage_cooldown.start()
			can_take_damage = false
			print("Slime health = ", health)
			if health <= 0:
				health = 0


func _on_take_damage_cooldown_timeout():
	can_take_damage = true
