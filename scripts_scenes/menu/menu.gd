extends Control

func _on_start_button_down():
	get_tree().change_scene_to_file("res://scripts_scenes/world/world.tscn")

func _on_options_button_down() -> void:
	get_tree().change_scene_to_file("res://scripts_scenes/options/options.tscn")
