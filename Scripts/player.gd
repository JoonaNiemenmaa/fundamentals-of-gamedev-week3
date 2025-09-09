class_name Player extends CharacterBody2D

const MOVE_SPEED = 300

func _physics_process(delta: float) -> void:
    var move_x = Input.get_axis("left", "right")
    var move_y = Input.get_axis("up", "down")

    var move = Vector2(move_x, move_y).normalized() * MOVE_SPEED

    self.velocity = move

    move_and_slide()
