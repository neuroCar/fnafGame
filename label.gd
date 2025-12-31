extends Label

@onready var timer = $Timer
var hour = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	timer.timeout.connect(_on_timer_timeout)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if hour == 0:
		timer.wait_time = 90
	elif hour == 6:
		timer.stop()
	else:
		timer.wait_time = 89

func _on_timer_timeout() -> void:
	hour += 1
	text = str(hour) + " AM"
