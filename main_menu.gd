extends Button

@export var Scene: Resource

func _ready():
	if (self as Button).text.length() == 0:
		(self as Button).text = "REPLACE ME"
		#queue_free()

	(self as Button).pressed.connect(self._button_pressed)

func _button_pressed():
	# if scene is nil, do nothing
	if !Scene:
		return

	get_tree().change_scene_to_file(Scene.resource_path)
