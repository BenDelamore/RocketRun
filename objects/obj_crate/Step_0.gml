scr_move_OLD(hsp,vsp);

if (global.lose)
{
	spawn_gem = 0;	
}

if (place_meeting(x,y, obj_solid) || place_meeting(x,y, obj_player) || hp <= 0)
{
	scr_block_destroy();
}

if (y < 0 || y > room_height)
{
	instance_destroy();
}


