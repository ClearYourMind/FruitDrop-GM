ball_sprite = noone
ball_scale = 1
ball_width = 0

update_ball = function (_next_ball) {
	ball_sprite = object_get_sprite(_next_ball.object)
	ball_scale = _next_ball.scale
	ball_width = sprite_get_width(ball_sprite) * ball_scale
}

