if ball_type.index == other.ball_type.index
if not to_destroy {
	var _x = phy_collision_x[0]
	var _y = phy_collision_y[0]
	merge(self, other, _x, _y)	
	to_destroy = true
	other.to_destroy = true
}
