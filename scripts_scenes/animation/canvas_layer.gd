extends CanvasLayer

signal on_transition_finished
@onready var cr = $ColorRect
@onready var ap = $AnimationPlayer

func _ready() -> void:
	cr.visible = false
	on_transition_finished.emit()
	ap.animation_finished.connect(_on_animation_finished)
	
func _on_animation_finished(anim_name):
	if anim_name == "fade_to_black":
		ap.play("fade_to_normal")
	elif anim_name == "fade_to_normal":
		cr.visible = false
		on_transition_finished.emit()

func transition():
	cr.visible = true
	ap.play("fade_to_black")
