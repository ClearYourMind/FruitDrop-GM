initialized = false
to_destroy = false

init = function () {
	physics_fixture_bind(ball_type.fixture, id)
	phy_active = true
	
	initialized = true
}

/*   Variable definitions:

ball_type as struct

*/
