if not initialized
	init()

if to_destroy {
	instance_destroy()
	exit
}

if just_dropped {
	just_dropped = false
	phy_speed_y = 4
}
