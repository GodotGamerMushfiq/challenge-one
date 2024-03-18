extends KinematicBody2D

export var player_speed = 200


func _process(delta):
	var direction := Vector2.ZERO

	if Input.is_action_pressed("up_p2"):
		direction.y = -1
	if Input.is_action_pressed("down_p2"):
		direction.y = 1
	if Input.is_action_pressed("left_p2"):
		direction.x = -1
	if Input.is_action_pressed("right_p2"):
		direction.x = 1


	direction = direction.normalized()
	
	move_and_slide(direction * player_speed)




func _ready():
	pass # Replace with function body.



