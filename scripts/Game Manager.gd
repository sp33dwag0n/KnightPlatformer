extends Node

@onready var score_label = $ScoreLabel
@onready var message = $Message

const COINS = 17
var score = 0
var input = true

func add_score():
	score += 1
	if score == COINS:
		message.text = "Naisu!"
	else:
		message.text = "Mada Mada!"
	
	score_label.text = "You collected\n" + str(score) + " out of " + str(COINS) + " coins!"
	
