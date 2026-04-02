
extends CharacterBody2D

@export var speed = 120
var player

func _ready():
    player = get_parent().get_node("Player")

func _physics_process(delta):
    var direction = (player.global_position - global_position).normalized()
    velocity = direction * speed
    move_and_slide()
