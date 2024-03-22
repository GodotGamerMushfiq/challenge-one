extends Area2D




func _ready():
	pass




func _on_Area2D_body_entered(body):
	if body.is_in_group("player1"):
		GlobalSignal.emit_signal("change_score") 
		queue_free()
	if body.is_in_group("player2"):
		GlobalSignal.emit_signal("change_score_2")
		queue_free()
