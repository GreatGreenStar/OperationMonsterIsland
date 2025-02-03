extends Node2D

@onready var hoku : Sprite2D = $Hoku
@onready var spotTwo: Marker2D = $SpotTwo


func _unhandled_input(event: InputEvent) -> void:
	var tween = create_tween()
	
	if Input.is_action_just_pressed("ui_left"):
		tween.tween_property(hoku, "position", Vector2(hoku.position.x - 10, hoku.position.y), 0.1)
		
	if Input.is_action_just_pressed("ui_right"):
		tween.tween_property(hoku, "position", Vector2(hoku.position.x + 10, hoku.position.y), 0.1)
	
	if Input.is_action_just_pressed("ui_up"):
		tween.tween_property(hoku, "position", Vector2(hoku.position.x, hoku.position.y - 10), 0.1)
	
	if Input.is_action_just_pressed("ui_down"):
		tween.tween_property(hoku, "position", Vector2(hoku.position.x, hoku.position.y + 10), 0.1)
