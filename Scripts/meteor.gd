class_name Meteor extends Area2D

const MOVE_SPEED = 200
const DESTROY_THRESHOLD = 1000
const MAX_HEALTH = 3

var cur_health = MAX_HEALTH

func _physics_process(delta: float) -> void:
    position.y += MOVE_SPEED * delta
    if position.y > DESTROY_THRESHOLD or cur_health <= 0:
        queue_free()
