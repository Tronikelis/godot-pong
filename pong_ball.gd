class_name PongBall
extends Area2D

@export var speed := 200

var direction := Vector2.LEFT
var bounces := 0


func _ready() -> void:
	self.connect("area_entered", self._on_area_entered)


func _on_area_entered(area: PongWall) -> void:
	assert(area is PongWall)
	SignalBus.pong_ball_collided.emit(self, area)

	direction = direction.bounce((-area.position).normalized())

	if area.type == area.Type.PLAYER || area.type == area.Type.ENEMY:
		bounces = 0
	else:
		bounces += 1


func _physics_process(delta: float) -> void:
	var bounce_factor: float = bounces + 1
	bounce_factor = (log(bounce_factor * 100) / log(100)) * 2

	self.position += direction * speed * delta * bounce_factor
