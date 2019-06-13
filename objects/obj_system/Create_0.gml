progress_value = 0;							// Linear player progress value
progress_exp = 1.931;						// Progress curve strength
progress_adj = 0;							// Adjusted player progress value
rocket_accel = 0.5;							// Rcoket acceleration coefficient
rocket_decel = 1.25;						// Rocket decceleration coefficient
rocket_speed_min = 1;						// Minimum rocket speed
rocket_speed_max = 30						// Maximum rocket speed
rocket_speed_cur = 0.5;						// Current rocket speed
rocket_dist_start = 2048;					// Starting rocket distance from Earth
rocket_dist_cur	= rocket_dist_start			// Current rocket distance from Earth
end_buffer = 32;

alarm[0] = 60;

randomize();
repeat(320)
{
	instance_create_layer(random_range(0, room_width), random_range(0, room_height), "ins_stars", obj_star);
}

global.gems = 0;							// Gems collected
global.is_paused = false;			
global.timer_max = 50						// Game timer starting value
global.timer_cur = global.timer_max;		// Game timer in seconds
global.win = false;
global.lose = false;
global.game_time = 0;

global.grv = 0.3; // Gravity

upos = shader_get_uniform(shd_motion_blur,"pos");//uniform for x,y
layer_vspeed("Background", -rocket_speed_cur);
