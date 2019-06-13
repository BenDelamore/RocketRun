/// @description

if (!global.win && !global.lose)
{
	if (instance_exists(obj_player))
	{
		if (point_distance(x, y, obj_player.x, obj_player.y) < 72)
		{
			is_in_range = true;
			
			if (keyboard_check_pressed(ord("E")))
			{
				is_being_held = true;
				frames_held = 0;
			}
			
			is_in_sweet_spot = frames_held > sweet_spot_min && frames_held < sweet_spot_max;
		
			if (keyboard_check_released(ord("E")) && is_being_held)
			{
				is_being_held = false;
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
			
		}
		else
		{
			is_in_range = false;
			is_being_held = false;
		}
	}

	if (is_being_held)
	{
		frames_held += 1;
	}
}
else
{
	is_being_held = false;
}
