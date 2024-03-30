extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_game_over():
	$ScoreTimer.stop()
	$MobTimer.stop()
	$StartTimer.stop()

func _on_game_start():
	$StartTimer.start()
	
func _on_start_timer_timeout():
	$MobTimer.start()
	$ScoreTimer.start()
