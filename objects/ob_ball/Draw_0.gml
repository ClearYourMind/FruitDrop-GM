
draw_self()

if debug {
	physics_draw_debug()
	draw_set_color(c_black)
	draw_text_transformed(x-10, y, string(ball_type.index), 1.5, 1.5, 0)
	draw_set_color(c_white)
}
