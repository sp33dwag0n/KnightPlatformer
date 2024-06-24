extends Node

@onready var score_label = $ScoreLabel
var score = 0

func add_score():
	score += 1
	score_label.text = "You collected\n" + str(score) + " out of 10 coins!"

func reset_score():
	score = 0
