//if not initialized
//	exit

////draw_set_color(c_white)
////draw_set_alpha(0.5)
////draw_self()
////draw_set_alpha(1)
////draw_path(shape, x, y, false)

draw_self()

//for (i=1; i<path_get_number(shape); i++)
//	draw_circle(x + path_get_point_x(shape, i), y + path_get_point_y(shape, i), 2, false)

if debug
	physics_draw_debug()
