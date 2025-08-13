class_name Player extends CharacterBody2D

@export var max_speed := 1200.0
var direction := Vector2.ZERO


func _physics_process(delta: float) -> void:
	var axis := Input.get_axis("left", "right")
	print("axis: " + str(axis))
	if axis < 0.0:
		direction = Vector2.LEFT
	elif axis > 0.0:
		direction = Vector2.RIGHT
	elif axis == 0.0:
		direction = Vector2.ZERO
	velocity = direction * max_speed * delta
	move_and_slide()
