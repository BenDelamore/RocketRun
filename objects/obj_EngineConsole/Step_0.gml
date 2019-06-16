/// @description
if (global.game_time > 3)
{
	age++;
}

scr_controls();

if (!global.win && !global.lose)
{
	if (instance_exists(obj_player))
	{
		if (point_distance(x, y, obj_player.x, obj_player.y) < 72)
		{
			
			is_being_held = key_act;
			
			//image_index = is_being_held ? 2 : 1;
			
			
			if is_being_held = 1
			{
				image_index = 1;
				
				with obj_Thruster
				{
					is_enabled = true;
				}
			}
			else
			{
				image_index = 0;
				with obj_Thruster
				{
					is_enabled = false;
				}
			}
		}
		else
		{
			image_index = 0;
			is_being_held = false;
			
			with obj_Thruster
			{
				is_enabled = false;
			}
		}
	}
}
else
{
	is_being_held = false;
	with obj_Thruster
	{
		is_enabled = false;
	}
}
