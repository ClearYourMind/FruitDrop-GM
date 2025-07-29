initialized = false
to_destroy = false

init = function () {
	physics_fixture_bind(ball_type.fixture, id)
	phy_active = true	
	initialized = true
}

/*   Variable definitions:

ball_type as struct
just_dropped as boolean - whether it dropped from spawner. Used to apply force at start

*/

merge = function(_self, _other, _x, _y) {
// called in collision event of ob_ball
	var _index = _self.ball_type.index
	
	// Biggest balls are destroyed, not spawning anything in their place
	with ob_game_controller
		if _index + 1 < ball_types_num {
			var _ball = spawn_ball(_x, _y, ball_types[_index + 1])
		}
}
