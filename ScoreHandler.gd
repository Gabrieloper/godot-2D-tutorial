extends Node

var score
var HUD
# Called when the node enters the scene tree for the first time.
func _ready():
	HUD = $"../HUD"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_score_timer_timeout():
	score += 1
	HUD.update_score(score)
	
func _on_game_start():
	score = 0
	HUD.update_score(score)
	
