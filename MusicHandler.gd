extends Node

var BGMposition = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	$BGM.play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func handleGameStartMusic():
	BGMposition = $BGM.get_playback_position()
	if BGMposition == 0:
		$BGM.play()
	else:
		$BGM.seek(BGMposition)

func handleEndGameMusic():
	$BGM.stop()
	BGMposition = 0
	$DeathSound.play()
