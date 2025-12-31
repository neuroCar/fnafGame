extends Label

@onready var timer = $Timer
@onready var powerIndicator = $Sprite2D



var power = round(999.0/10.0)
var usage = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	timer.timeout.connect(_on_timer_timeout)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Input.is_action_pressed("POWERTEST"):
		usage = 1
	else:
		usage = 0
	powerIndicator.set_frame(usage)

func _on_timer_timeout() -> void:
	power -= usage
	text = str(power) + "%"
