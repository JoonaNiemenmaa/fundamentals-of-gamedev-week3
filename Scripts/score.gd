extends Label

var score = 0

func increment_score():
	score += 1

func _process(_delta: float) -> void:
	self.text = str(score)
