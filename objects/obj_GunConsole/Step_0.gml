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
	if (player_in_range)
	{
		
		var delta_angle = key_up - key_down;
		spawn_direction_cur += delta_angle * image_xscale;
		spawn_direction_cur = clamp(spawn_direction_cur, spawn_direction_min, spawn_direction_max);
		
		if (key_act_p)
		{
			scr_audio("laser");
			var bullet = instance_create_layer(x, y, "Instances", obj_Bullet);
			bullet.x = x + spawn_x_offset;
			bullet.y = y + spawn_y_offset;
			bullet.direction = spawn_direction_cur - spawn_direction_ini;
			bullet.image_angle = spawn_direction_cur - spawn_direction_ini;
			bullet.speed = spawn_speed;
		}
		image_index = key_act_p ? 2 : 1;
	}
}