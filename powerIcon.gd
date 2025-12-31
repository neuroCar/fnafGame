extends AnimatedSprite2D

@export var cells = 4
@export var cellW = 95

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
	
func update_visual(usage: int) -> void:
	set_frame(usage)
