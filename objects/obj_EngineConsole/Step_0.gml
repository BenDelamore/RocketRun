/// @description
if (global.game_time > 3)
{
	age++;
}
scr_controls();

if (point_distance(x, y, obj_player.x, obj_player.y) <= interact_distance)
{
	player_in_range = true;
	if (!global.win && !global.lose)
	{
		is_active = key_act;
		scr_audio("thruster");
	}
	else
	{
		is_active = false;
	}
}
else
{
	player_in_range = false;	
	is_active = false;
}
image_index = is_active;