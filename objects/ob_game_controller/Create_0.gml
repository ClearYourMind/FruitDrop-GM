ball_types = [
	{
		scale: 0.1,
		object: ob_ball_apple
	},
	{
		scale: 0.175,
		object: ob_ball_apple
	},
	{
		scale: 0.25,
		object: ob_ball_apple
	},
	{
		scale: 0.375,
		object: ob_ball_apple
	}
]

next_ball_type_num = -1

spawn_ball = function(_x, _ball_type) {
	instance_create_layer(_x, ob_spawner.y, "Balls", _ball_type.object, {
		image_xscale: _ball_type.scale,
		image_yscale: _ball_type.scale,
		ball_type: _ball_type
	})
	choose_next_ball()
}

choose_next_ball = function() {
// can be placed in Step event
	next_ball_type_num = (next_ball_type_num + 1) mod array_length(ball_types)
	next_ball = ball_types[next_ball_type_num]
//	var v = irandom(array_length(ball_types)-1)
//	next_ball = ball_types[v]
}

choose_next_ball()
