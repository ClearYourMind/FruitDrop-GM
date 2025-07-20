initialized = false

function init() {
	initialized = true

	fix = physics_fixture_create()
	width = sprite_get_width(sprite_index) * image_xscale * 0.5
	physics_fixture_set_circle_shape(fix, width)
	show_debug_message(width)
	physics_fixture_set_collision_group(fix, 1)
	physics_fixture_set_density(fix, 0.5)
	
	physics_fixture_bind(fix, id)
	phy_active = true
}
