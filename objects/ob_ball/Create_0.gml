initialized = false

init = function () {
	//fix = physics_fixture_create()
	//width = sprite_get_width(sprite_index) * image_xscale * 0.5
	//physics_fixture_set_circle_shape(fix, width)
	//physics_fixture_set_collision_group(fix, 1)
	//physics_fixture_set_restitution(fix, 0.25)
	//physics_fixture_set_density(fix, 0.8)
	
	physics_fixture_bind(ball_type.fixture, id)
	phy_active = true
	
	initialized = true
	//physics_fixture_delete(fix)
}

/*   Variable definitions:

ball_type as struct

*/
