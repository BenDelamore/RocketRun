progress_value = 0;							// Linear player progress value
progress_exp = 0.67;						// Progress curve strength (lower means progress starts fast)
progress_adj = 0;							// Adjusted player progress value
rocket_accel = 1;							// Rcoket acceleration coefficient
rocket_decel = 2;							// Rocket decceleration coefficient
rocket_speed_min = 5						// Minimum rocket speed
rocket_speed_max = 30						// Maximum rocket speed
rocket_speed_cur = 20;						// Current rocket speed
rocket_dist_start = 1000					// Starting rocket distance from Earth
rocket_dist_cur	= rocket_dist_start			// Current rocket distance from Earth
end_buffer = 32;
//player_dist_start = point_distance(obj_player.x, obj_player.y, obj_endflag.x, obj_endflag.y) - end_buffer;
//player_dist_cur = player_dist_start;

global.is_paused = false;			
global.timer_max = 50						// Game timer starting value
global.timer_cur = global.timer_max;		// Game timer in seconds
global.win = false;
global.lose = false;
global.game_time = 0;

global.grv = 0.3; // Gravity

layer_vspeed("Background", -rocket_speed_cur);
