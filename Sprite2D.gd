extends Sprite2D
func _init():
	print("hello world")

var speed = 400
var angularSpeed = PI

#func _process(delta):
	#var direction = 0
	#if Input.is_action_pressed("ui_left"):
		#direction = -1
	#if Input.is_action_pressed("ui_right"):
		#direction = 1
#
	#rotation += angularSpeed * direction * delta
	#var velocity = Vector2.ZERO
	#if Input.is_action_pressed("ui_up"):
		#velocity = Vector2.UP.rotated(rotation) * speed
	#if Input.is_action_pressed("ui_down"):
		#velocity = Vector2.DOWN.rotated(rotation)*speed
	#position += velocity*delta


func _process(delta):
	rotation += angularSpeed * delta
	var velocity = Vector2.UP.rotated(rotation) * speed
	position += velocity * delta

func _on_button_pressed():
	#pass # Replace with function body.
	set_process(not is_processing())

func _ready():
	var timer = get_node("Timer")
	timer.timeout.connect(_on_timer_timeout)

func _on_timer_timeout():
	print("timer..")
	visible = not visible
