if (!global.is_paused)
{
	y -= (obj_system.rocket_speed_cur);
}

image_yscale = clamp(obj_system.rocket_speed_cur/2.5, 1, 10);

if(y < 0)
{
	instance_destroy();	
}