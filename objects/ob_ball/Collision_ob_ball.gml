if ball_type.index == other.ball_type.index
if not to_destroy {
	var _x = phy_collision_x[0]
	var _y = phy_collision_y[0]
	//var _ball1 = self.id
	//var _ball2 = other.id
	ob_game_controller.merge_balls(self, other, _x, _y)
	to_destroy = true
	other.to_destroy = true
}

// PROBLEM:
// Each instance in collided pair run same actions!
// One collision handled twice


	//var _x = phy_collision_x[0]
	//var _y = phy_collision_y[0]
	//var _index = ball_type.index
	
	//with ob_game_controller {
	//	var new_ball = merged_ball(_index)
	//	spawn_ball(_x, _y, new_ball)
	//}

//	with other
//		instance_destroy()
