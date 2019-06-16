if (global.game_time > 17)
{
	age++;
}

if (point_distance(x, y, obj_player.x, obj_player.y) <= interact_distance)
{
	player_in_range = true;
}
else
{
	player_in_range = false;	
}

scr_controls();

if (!global.win && !global.lose && !global.is_paused)
{
	if (instance_exists(obj_player))
	{
		if (point_distance(x, y, obj_player.x, obj_player.y) < 72)
		{
			is_in_range = true;
			
			if (key_act_p)
			{
			
				frames_held = 0;
			}
			
			is_being_held = key_act;
			is_in_sweet_spot = frames_held > sweet_spot_min && frames_held < sweet_spot_max;
		
			if (key_act_p && is_being_held && !global.is_paused)
			{
				var bullet = instance_create_layer(x, y, "Instances", obj_Bullet);
				bullet.x = x + spawn_x_offset;
				bullet.y = y + spawn_y_offset;
				bullet.direction = spawn_direction;
				bullet.image_angle = spawn_direction;
				bullet.speed = spawn_speed;
				
				if (is_in_sweet_spot)
				{
					obj_player.sp_cur += 50; // Increase player score.
				}
			}
			
			image_index = is_being_held ? 2 : 1;
			
		}
		else
		{
			is_in_range = false;
		}
	}

	if (is_being_held)
	{
		frames_held += 1;
	}
}
