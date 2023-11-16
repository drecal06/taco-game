extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

# In your dying screen script
extends Control

# Handle input events in the dying screen
func _input(event):
	if event.is_action_pressed("ui_accept"):
		emit_signal("restart_game")

# Custom signal emitted when player wants to restart the game
signal restart_game

# You can emit this signal when a specific input or button is pressed in the dying screen


func _on_control_pressed():
	pass # Replace with function body.
