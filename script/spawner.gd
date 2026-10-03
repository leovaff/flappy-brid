extends Marker2D


const OBSTACLE = preload("uid://jceof3muiavy")


func _on_timer_timeout() -> void:
	var obstacle: Node2D = OBSTACLE.instantiate()
	add_child(obstacle)
