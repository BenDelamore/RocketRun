/// @description
scr_controls();

if (!global.win && !global.lose)
{
	if (instance_exists(obj_player))
	{
		if (point_distance(x, y, obj_player.x, obj_player.y) < 72)
		{
			
			is_being_held = key_act;
			
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
