class_name UI extends Control

@onready var score_text: Label = $Score
@onready var health_text: Label = $HP

var score: int = 0

func increment_score():
	score += 1

func _process(_delta: float) -> void:
	score_text.text = "Score: %s" % score
