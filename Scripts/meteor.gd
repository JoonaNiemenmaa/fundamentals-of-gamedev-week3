extends Area2D

const MOVE_SPEED = 200
const DESTROY_THRESHOLD = 1000

func _physics_process(delta: float) -> void:
    position.y += MOVE_SPEED * delta
    if position.y > DESTROY_THRESHOLD:
        queue_free()
