extends Area2D





# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.




func _on_Danger_body_entered(body):
	GlobalSignal.emit_signal("danger_score")
	GlobalSignal.emit_signal("danger_score_2")
	queue_free()
