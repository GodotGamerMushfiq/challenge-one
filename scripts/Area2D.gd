extends Area2D




func _ready():
	pass




func _on_Area2D_body_entered(body):
	GlobalSignal.emit_signal("change_score")
	queue_free()
