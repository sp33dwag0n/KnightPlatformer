extends Node

@onready var score_label = $"../Labels/ScoreLabel"
@onready var message = $"../Labels/Message"


var coin_count = 0
var score = 0

func _ready():
	coin_count = get_child_count()
	message.text = "Mada Mada!"
	score_label.text = "You collected\n0 out of " + str(coin_count) + " coins!"

func add_score():
	score += 1
	if score == coin_count:
		message.text = "Naisu!"
	
	score_label.text = "You collected\n" + str(score) + " out of " + str(coin_count) + " coins!"
	
