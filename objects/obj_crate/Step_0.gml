scr_move_OLD(hsp,vsp);
image_angle += rsp;

if (point_distance(x, y, obj_player.x, obj_player.y) <= interact_distance)
{
	player_in_range = true;
}
else
{
	player_in_range = false;	
}

if (global.lose)
{
	spawn_gem = 0;	
	//scr_block_destroy();
}

if (place_meeting(x,y, obj_solid) || place_meeting(x,y, obj_player) || hp <= 0)
{
	scr_block_destroy();
}

if (y < 0 || y > room_height)
{
	instance_destroy();
}


