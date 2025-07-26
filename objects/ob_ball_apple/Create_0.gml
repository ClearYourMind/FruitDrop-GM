initialized = false

//init = function () {
//	fix = physics_fixture_create()
//	width = sprite_get_width(sprite_index) * image_xscale * 0.5
//	physics_fixture_set_circle_shape(fix, width)
//	physics_fixture_set_collision_group(fix, 1)
//	physics_fixture_set_restitution(fix, 0.25)
//	physics_fixture_set_density(fix, 0.8)
	
//	physics_fixture_bind(fix, id)
//	phy_active = true
	
//	initialized = true
//}

init = function() {
	shape = path_duplicate(pt_ball_apple)
	path_rescale(shape, image_xscale, image_yscale)
	initialized = true

	fix = physics_fixture_create()
	physics_fixture_set_polygon_shape(fix)
	show_debug_message("-------------")
	for (i=0; i<path_get_number(shape); i++) {
		physics_fixture_add_point(fix, path_get_point_x(shape, i), path_get_point_y(shape, i))
		show_debug_message("shape point {0}, {1}", path_get_point_x(shape, i), path_get_point_y(shape, i))
	}
	physics_fixture_set_collision_group(fix, 1)
	physics_fixture_set_restitution(fix, 0.25)
	physics_fixture_set_density(fix, 0.8)
	
	physics_fixture_bind(fix, id)
	phy_active = true
	
}
