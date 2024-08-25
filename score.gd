extends Label


func _ready() -> void:
	self.text = "0"
	SignalBus.pong_ball_collided.connect(self.on_ball_collided)


func on_ball_collided(_ball: Area2D, area: PongWall) -> void:
	if area.type == area.Type.PLAYER:
		self.incrementScore()


func setText(new: String) -> void:
	self.text = new


func incrementScore() -> void:
	var current := int(self.text)
	self.setText(str(current + 1))
