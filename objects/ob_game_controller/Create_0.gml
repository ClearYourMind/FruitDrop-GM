ball_types = [
	{
		scale: 0.08,
		object: ob_ball,
		index: 0,
		fixture: noone,
		color: c_red
	},
	{
		scale: 0.12,
		object: ob_ball,
		index: 1,
		fixture: noone,
		color: c_blue
	},
	{
		scale: 0.2,
		object: ob_ball,
		index: 2,
		fixture: noone,
		color: make_color_rgb(192, 0, 128)
	},
	{
		scale: 0.31,
		object: ob_ball,
		index: 3,
		fixture: noone,
		color: c_orange
	},
	{
		scale: 0.425,
		object: ob_ball,
		index: 4,
		fixture: noone,
		color: c_green
	},
	{
		scale: 0.5625,
		object: ob_ball,
		index: 5,
		fixture: noone,
		color: make_color_rgb(255, 128, 128) // pink
	},
	{
		scale: 0.675,
		object: ob_ball,
		index: 6,
		fixture: noone,
		color: make_color_rgb(128, 0, 32) // brown
	},
	{
		scale: 0.8,
		object: ob_ball,
		index: 7,
		fixture: noone,
		color: make_color_rgb(255, 32, 96) // magenta
	}
]

ball_types_num = array_length(ball_types)

// make fixture for each ball type to be reused later
for (var i=0; i<ball_types_num; i++) {
	var bt = ball_types[i]
	var fix = physics_fixture_create()
	var width = sprite_get_width(object_get_sprite(bt.object)) * bt.scale * 0.5
	physics_fixture_set_circle_shape(fix, width)
	physics_fixture_set_collision_group(fix, 1)
	physics_fixture_set_restitution(fix, 0.10)
	physics_fixture_set_angular_damping(fix, 1)
	physics_fixture_set_density(fix, 1.75)
	physics_fixture_set_friction(fix, 0.10)
	// add fixture to ball_type struct
	ball_types[i].fixture = fix
}

//debug info output
show_debug_message("Ball types:")
for (var i=0; i<ball_types_num; i++)
	show_debug_message(ball_types[i])
show_debug_message("_________")

next_ball_type_num = -1
next_ball = noone

spawn_ball = function(_x, _y, _ball_type) {
	return instance_create_layer(_x, _y, "Balls", _ball_type.object, {
		image_xscale: _ball_type.scale,
		image_yscale: _ball_type.scale,
		image_blend: _ball_type.color,
		ball_type: _ball_type
	})
}

choose_next_ball = function() {
	var v = irandom(4 - 1)
	next_ball = ball_types[v]
	next_ball_type_num = v
	
	ob_spawner.update_ball(next_ball)	
}

drop_ready = true
