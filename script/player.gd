extends CharacterBody2D


func _physics_process(delta: float) -> void:
	velocity.y += get_gravity().y * 0.05
	if Input.is_action_just_pressed("jump"):
		velocity.y = -1000
	move_and_slide()
	
	if get_last_slide_collision() != null:
		get_tree().reload_current_scene() #TODO: Trocar por tela de game over
	

func _on_screen_exited() -> void:
	get_tree().reload_current_scene() #TODO: Trocar por tela de game over
  
