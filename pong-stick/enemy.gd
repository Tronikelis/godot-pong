extends Node2D

@export var pong_ball: Node


func _physics_process(_delta: float) -> void:
	self.position.y = pong_ball.position.y
