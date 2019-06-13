global.game_time += 1/room_speed;

scr_controls();

// Rocket physics calculation
if (!global.win && !global.lose)
{
	rocket_speed_cur += rocket_accel/room_speed;
	
	// check EngineConsole interaction
	if (instance_exists(obj_player) && instance_exists(obj_EngineConsole))
	{
		var d = point_distance(obj_player.x, obj_player.y, obj_EngineConsole.x, obj_EngineConsole.y);
		if (d < 72)
		{
			rocket_speed_cur -= key_act * rocket_decel/room_speed;
		}
	}
	
	rocket_speed_cur = clamp(rocket_speed_cur, rocket_speed_min, rocket_speed_max);
	rocket_dist_cur -= rocket_speed_cur/60;
	//layer_vspeed("Background", -rocket_speed_cur);
	
	repeat(round(rocket_speed_cur/3))
	{
		instance_create_layer(random_range(0, room_width), room_height, "ins_stars", obj_star);
	}
}
else
{
	rocket_speed_cur = 0;
	//layer_vspeed("Background", 0);
}



progress_value = clamp(1 - ((rocket_dist_cur) / (rocket_dist_start)), 0, 1);
progress_adj = power(progress_value, progress_exp);


// Game Timer
if (!global.win && global.timer_cur > 0 && !global.win && !global.is_paused)
{
	global.timer_cur -= 1/room_speed;
}

if (rocket_dist_cur <=0 && !global.win && !global.lose)
{
	if (rocket_speed_cur > 5)
	{
		scr_message("You Crashed!", 10);
		global.lose = true;
		
	}
	else
	{
		scr_message("You Landed Safely!", 10);
		global.win = true;
	}
	rocket_dist_cur = 0;
}

