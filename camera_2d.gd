extends Camera2D

@onready var time = $Time
@onready var pwr = $Power
@onready var pwrIndic = $Power/Sprite2D
@onready var map = $Map

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if (get_viewport().get_mouse_position().x >= 750 and offset.x < 250):
		offset.x += 5
		time.global_position.x += 5
		pwr.global_position.x += 5
		pwrIndic.global_position.x += 5
		map.global_position.x += 5

	if (get_viewport().get_mouse_position().x <= 250 and offset.x > -250):
		offset.x -= 5
		time.global_position.x -= 5
		pwr.global_position.x -= 5
		pwrIndic.global_position.x -= 5
		map.global_position.x -= 5
