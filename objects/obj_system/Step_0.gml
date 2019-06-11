global.game_time += 1/room_speed;

scr_controls();

// Rocket physics calculation

rocket_speed_cur += rocket_accel/room_speed;
rocket_speed_cur -= key_ability * rocket_decel/room_speed;

rocket_speed_cur = clamp(rocket_speed_cur, rocket_speed_min, rocket_speed_max);
rocket_dist_cur -= rocket_speed_cur/60;

layer_vspeed("Background", -rocket_speed_cur);

progress_value = clamp(1 - ((rocket_dist_cur) / (rocket_dist_start)), 0, 1);
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
}

if (global.timer_cur <=0 && !global.lose)
{
	scr_message("You Crashed!", 5);
	global.lose = true;
	layer_vspeed("Background",0)
	
}