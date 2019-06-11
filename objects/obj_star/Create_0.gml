y -= obj_system.rocket_speed_cur;

scale = random_range(0.5,2);
image_yscale = clamp(obj_system.rocket_speed_cur/3, 1, 100);
image_alpha = 0.8;

if(y < 0)
{
	instance_destroy();	
}