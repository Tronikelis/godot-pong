class_name PongWall
extends Area2D

enum Type {
	WALL,
	DEATH,
	PLAYER,
	ENEMY,
}

@export var type := Type.WALL
