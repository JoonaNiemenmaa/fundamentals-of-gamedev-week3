class_name Meteor extends Area2D

const MOVE_SPEED = 200
const DESTROY_THRESHOLD = 1000
const MAX_HEALTH = 3

@onready var main: Main = get_tree().get_current_scene()
var cur_health = MAX_HEALTH

func _physics_process(delta: float) -> void:
	position.y += MOVE_SPEED * delta
	if cur_health <= 0:
		print(main)
		if main is Main:
			main.ui.increment_score()
		queue_free()
	elif position.y > DESTROY_THRESHOLD:
		queue_free()


func _on_body_entered(body: Node2D) -> void:
	if body is Player:
		body.cur_health -= 1
		queue_free()
