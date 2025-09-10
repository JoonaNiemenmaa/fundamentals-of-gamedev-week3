class_name Player extends CharacterBody2D

const MAX_HEALTH = 3
const MOVE_SPEED = 300

#@onready var main: Main = get_tree().get_current_scene()
@export var ui: UI
var cur_health = MAX_HEALTH

func _process(_delta: float) -> void:
	if ui:
		ui.update_health(cur_health)
		if cur_health <= 0:
			cur_health = MAX_HEALTH
			ui.reset_score()


func _physics_process(_delta: float) -> void:
	var move_x = Input.get_axis("left", "right")
	var move_y = Input.get_axis("up", "down")

	var move = Vector2(move_x, move_y).normalized() * MOVE_SPEED

	self.velocity = move

	move_and_slide()
