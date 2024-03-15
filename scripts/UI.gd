extends Control
  
var score_count = 0
  
var countdown_time = 30

func _ready():
	GlobalSignal.connect("change_score", self, "_change_score")
	GlobalSignal.connect("danger_score", self, "_danger_score")  
	$CountDownTimer.start()

	
	
	
func _change_score():
	score_count += 1
	$Label.text = "Score :" + str(score_count)
	print("Done")

func _danger_score():
	score_count -= 1
	$Label.text = "Score :" + str(score_count) 

func _on_CountDownTimer_timeout():
	countdown_time -= 1
	$TimerLabel.text = "Time :" + str(countdown_time)
	if countdown_time == 0:
		print("Game Over")
		$CountDownTimer.stop()




