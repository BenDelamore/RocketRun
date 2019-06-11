progress_value = 0;							// Linear player progress value
progress_exp = 2;							// Progress curve strength
progress_adj = 0;							// Adjusted player progress value
rocket_accel = 1;							// Rcoket acceleration coefficient
rocket_decel = 3;							// Rocket decceleration coefficient
rocket_speed_min = 2;						// Minimum rocket speed
rocket_speed_max = 30						// Maximum rocket speed
rocket_speed_cur = 15;						// Current rocket speed
rocket_dist_start = 500;					// Starting rocket distance from Earth
rocket_dist_cur	= rocket_dist_start			// Current rocket distance from Earth
end_buffer = 32;

global.is_paused = false;			
global.timer_max = 50						// Game timer starting value
global.timer_cur = global.timer_max;		// Game timer in seconds
global.win = false;
global.lose = false;
global.game_time = 0;

global.grv = 0.3; // Gravity

upos = shader_get_uniform(shd_motion_blur,"pos");//uniform for x,y
layer_vspeed("Background", -rocket_speed_cur);
