scr_move_OLD(hsp,vsp);
image_angle += rsp;

if (global.lose)
{
	spawn_gem = 0;	
	//scr_block_destroy();
}

if (place_meeting(x,y, obj_solid) || place_meeting(x,y, obj_player) || hp <= 0)
{
	scr_block_destroy();
}

