class_name PongWall
extends Area2D

enum Type {
	WALL,
	DEATH,
	PLAYER,
}

@export var type := Type.WALL
