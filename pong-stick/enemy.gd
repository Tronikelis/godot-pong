extends Node2D

@export var pong_ball: PongBall
@export var speed := 100


func _physics_process(delta: float) -> void:
	var direction := 0

	if self.position.y < pong_ball.position.y:
		direction = 1
	else:
		direction = -1

	var add_y := speed * direction * delta
	var abs_add_y: float = abs(add_y)

	var abs_pong_y: float = abs(pong_ball.position.y)
	var abs_self_y: float = abs(self.position.y)

	var delta_y: float = abs(abs_pong_y - abs_self_y)

	if delta_y < abs_add_y:
		add_y = delta_y * direction

	self.position.y += add_y
