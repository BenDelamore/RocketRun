/// @description

if (!global.win && !global.lose)
{
	if (instance_exists(obj_player))
	{
		if (point_distance(x, y, obj_player.x, obj_player.y) < 72)
		{
			if (keyboard_check_pressed(ord("E")))
			{
				is_being_held = true;
			}
		
			if (keyboard_check_released(ord("E")) && is_being_held)
			{
				is_being_held = false;
			}
			
			image_index = is_being_held ? 2 : 1;
		}
		else
		{
			image_index = 0;
			is_being_held = false;
		}
	}
}
else
{
	is_being_held = false;
}
