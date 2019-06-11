global.game_time += 1/room_speed;

// Rocket physics calculation
if (key_ability)
{
	rocket_speed_cur -= rocket_decel/room_speed;
}
else
{
	rocket_speed_cur += rocket_accel/room_speed
}

rocket_speed_cur = clamp(rocket_speed_cur, rocket_speed_min, rocket_speed_max);
rocket_dist_cur -= rocket_speed_cur


if (!global.lose && !global.win)
{
	progress_value = clamp(1 - ((rocket_dist_cur) / (rocket_dist_start)), 0, 1);
}
progress_adj = power(progress_value, progress_exp);

if (progress_value == 1 && !global.win && !global.lose)
{
	scr_message("You Landed Safely!", 5);
	global.win = true;
}

// Game Timer
if (!global.win && global.timer_cur > 0 && !global.win && !global.is_paused)
{
	global.timer_cur -= 1/room_speed;
	//layer_background_alpha("Backgrounds_1",1)
}

if (global.timer_cur <=0 && !global.lose)
{
	scr_message("You Crashed!", 5);
	global.lose = true;
	layer_vspeed("Background",0)
	
}