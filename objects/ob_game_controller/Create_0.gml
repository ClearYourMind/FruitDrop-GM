ball_types = [
	{
		scale: 0.125,
		object: ob_ball,
		index: 0,
		fixture: noone
	},
	{
		scale: 0.175,
		object: ob_ball,
		index: 1,
		fixture: noone
	},
	{
		scale: 0.25,
		object: ob_ball,
		index: 2,
		fixture: noone
	},
	{
		scale: 0.325,
		object: ob_ball,
		index: 3,
		fixture: noone
	},
	{
		scale: 0.425,
		object: ob_ball,
		index: 4,
		fixture: noone
	},
	{
		scale: 0.5625,
		object: ob_ball,
		index: 5,
		fixture: noone
	},
	{
		scale: 0.675,
		object: ob_ball,
		index: 6,
		fixture: noone
	},
	{
		scale: 0.8,
		object: ob_ball,
		index: 7,
		fixture: noone
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
	physics_fixture_set_restitution(fix, 0.25)
	physics_fixture_set_density(fix, 1.125)
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
	instance_create_layer(_x, _y, "Balls", _ball_type.object, {
		image_xscale: _ball_type.scale,
		image_yscale: _ball_type.scale,
		ball_type: _ball_type
	})
}

choose_next_ball = function() {
	var v = irandom(4 - 1)
	next_ball = ball_types[v]
	next_ball_type_num = v
	
	ob_spawner.update_ball(next_ball)	
}

merge_balls = function(_self, _other, _x, _y) {
// called in collision event of ob_ball
	var _index = _self.ball_type.index
	
	// Biggest balls are destroyed, not spawning anything in their place
	if _index + 1 < ball_types_num
		spawn_ball(_x, _y, 	ball_types[_index + 1])
}
