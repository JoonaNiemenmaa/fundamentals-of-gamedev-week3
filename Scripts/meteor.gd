class_name Meteor extends Area2D

const MOVE_SPEED = 200
const DESTROY_THRESHOLD = 1000
const MAX_HEALTH = 3

var cur_health = MAX_HEALTH

func _physics_process(delta: float) -> void:
	position.y += MOVE_SPEED * delta
	if cur_health <= 0:
		var root_node = get_tree().get_current_scene()
		if root_node is Main:
			root_node.ui.get_child(0).increment_score()
		queue_free()
	elif position.y > DESTROY_THRESHOLD:
		queue_free()
