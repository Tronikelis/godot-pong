class_name Score
extends Node2D

@onready var label: Label = $Label
@export var increment_on: PongWall.Type


func _ready() -> void:
	label.text = "0"
	SignalBus.pong_ball_collided.connect(self.on_ball_collided)


func on_ball_collided(_ball: Area2D, area: PongWall) -> void:
	if area.type == increment_on:
		self.incrementScore()


func incrementScore() -> void:
	var current := int(label.text)
	label.text = str(current + 1)
