walksp = 4.1; // Horizontal movement speed

//boost_mult = 2; // multiplier for boost speed
//fatigue_mult = 0.20 // multiplier for running out of stamina

hp_max = 200
hp_cur = hp_max;

sp_max = 200
sp_cur = 1;

target_block = 0;

// State variables
hsp = 0;
vsp = 0;
collisons = true;
interact_in_range = false;
state = 0;

//State check sprites
state_spr[0] = spr_player_normal;
state_spr[1] = spr_player_walking;
state_spr[2] = spr_player_ladder;

draw_xscale = 1;
draw_yscale = 1;