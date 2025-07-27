/// @desc Drop ball

if position_empty(mouse_x, mouse_y) 
if position_empty(ob_spawner.x, ob_spawner.y) {
	spawn_ball(ob_spawner.x, ob_spawner.y, next_ball)
	choose_next_ball()
}

