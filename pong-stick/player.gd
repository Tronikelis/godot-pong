extends Node2D

@export var speed := 300


func _physics_process(delta: float) -> void:
	var direction := 0

	if Input.is_action_pressed("move_up"):
		direction = -1
	if Input.is_action_pressed("move_down"):
		direction = 1

	self.position.y += direction * speed * delta
