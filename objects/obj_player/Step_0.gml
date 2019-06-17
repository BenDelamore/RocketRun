// Player control script

// Control
scr_controls();

//Switch: State
// A switch that changes between moving and interacting

// Ensure diagonal movement stays no higher than walksp
if (abs(key_right - key_left) + abs(key_down - key_up) > 1)
{
	walksp_mult = sqrt(0.5);
}
else
{
	walksp_mult = 1;
}

// Horizontal movement calculation
if (!global.is_paused)
{
	var movex = (key_right - key_left);
	hsp = lerp(hsp, movex * walksp * walksp_mult, 0.33);

	state = clamp(abs(hsp), 0, 1);
	
	// Sprite flipping
	if (hsp < -walksp * 0.7)
	{
		image_xscale = -1;
	}
	else if (hsp > walksp * 0.7)
	{
		image_xscale = 1;
	}

	var movey = 0;
	if place_meeting(x,y,obj_Ladder)
	{
		// Vertical movement calculation
		var movey = (key_down - key_up);
		vsp = lerp(vsp, movey * walksp * walksp_mult, 0.33);
		if (!place_meeting(x, y+1, obj_solid)) {state = 2;}
	}
}
else
{
	vsp = 0;
	hsp = 0;
	state = 0;
}


//clamp position to room
x = round( clamp(x, 64/2, room_width - (64/2)) );
y = round( clamp(y, 64/2, room_height - (64/2)) );

sp_cur = clamp(sp_cur, 0, sp_max + 50);

scr_move(hsp);

target_block = 0;
if (instance_exists(obj_interactable) && !global.win)
{
	target_block = instance_nearest(x, y, obj_interactable)

	if (point_distance(x, y, target_block.x, target_block.y) < 72 && !global.is_paused)
	{
		interact_in_range = true;
	
		if (key_act_p)
		{
			// State change to "Interacting"
			target_block.spawn_gem = true;
			target_block.hp = 0;
			target_block = 0;
		}
	}
	else
	{
		// State = "Moving"
		interact_in_range = false;
		target_block = 0;
	}
}

sprite_index = state_spr[state];