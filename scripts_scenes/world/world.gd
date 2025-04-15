extends Node2D

@onready var player: CharacterBody2D = $player
@onready var fps: Label = $player/UI/FPS/FPS

func _on_transition_body_entered(body: Node2D):
	if body.has_method("player"):
		get_tree().change_scene_to_file("res://scripts_scenes/mountain/mountain.tscn")

func _physics_process(delta):
	var FPS = Engine.get_frames_per_second()
	$player/UI/FPS/FPS.text = "FPS: %d" % int(FPS)

func _on_area_2d_body_entered(body: Node) -> void:
	if body.name == "player" and body.has_method("teleport"):
		body.teleport(500, 700)
