extends CharacterBody2D

const SPEED = 100
var player : Node2D

func _ready():
	player = get_parent().get_node("Player")

func _physics_process(delta):
	if player:
		var dir = (player.global_position - global_position).normalized()
		velocity = dir * SPEED
		move_and_slide()
