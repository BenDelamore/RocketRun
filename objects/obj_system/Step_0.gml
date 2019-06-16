global.game_time += 1/room_speed;

scr_controls();

// Rocket physics calculation
if (!global.win && !global.lose)
{
	if (!global.is_paused)
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
		rocket_dist_cur -= rocket_speed_cur/room_speed;
	
		// Spawn stars
		repeat(ceil(rocket_speed_cur/4))
		{
			instance_create_layer(random_range(0, room_width), random_range(room_height - 64, room_height + 64), "ins_stars", obj_star);
		}
	
		// Spawn crates
	
		if ((random(1)) <= 0.08 )
		{
			with (instance_create_depth(random_range(0, room_width), room_height, 120, obj_crate))
			{
				vsp = random_range(-2, -7);
				rsp = random_range(-2, 2);
				collisons = false;
			}
		}
	}
	
}
else
{
	rocket_speed_cur = 0;
}

progress_value = clamp(1 - ((rocket_dist_cur) / (rocket_dist_start)), 0, 1);
progress_adj = power(progress_value, progress_exp);

gem_counter_age++;

if (rocket_dist_cur <=0 && !global.win && !global.lose)
{
	// Assess performance
	scr_message("Rocket Landed. Analysing Performance", 5);
	global.gems_before_end = global.gems;
	if (!global.end_time > 0)
	{
		global.land_speed = rocket_speed_cur;
	}
	
	with (obj_end_card)
	{
		if (global.land_speed >= 0)
		{
			grade_value = 0;
		}
		if (global.land_speed > 4)
		{
			grade_value = 1;
			global.gems *= 0.8;
		}
		if (global.land_speed > 7)
		{
			grade_value = 2;
			global.gems *= 0.6;
		}
		if (global.land_speed > 11)
		{
			grade_value = 3;
			global.gems *= 0.4;
		}
		if (global.land_speed > 15)
		{
			grade_value = 4;
			global.gems *= 0.2;
		}
		if (global.land_speed > 19)
		{
			grade_value = 5;
			global.gems *= 0.0;
		}
		global.gems = round(global.gems);
		global.gems_lost = global.gems_before_end - global.gems;
		grade_set = true;
	}

	global.win = true;
	rocket_dist_cur = 0;
}

if (global.win || global.lose)
{
	global.end_time += 1/room_speed;	
}