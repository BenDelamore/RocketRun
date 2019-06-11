var hsp = argument[0];



// Basic collisions and gravity

// Calculate gravity
vsp += global.grv;


if (global.is_paused)
{
	hsp = 0;
}


#region //  ---- COLLISIONS ----

// Horizontal Collision
if (place_meeting(x + hsp, y, obj_solid) && collisons)
{
	while(!place_meeting(x + sign(hsp), y, obj_solid))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

// Vertical Collision
if (place_meeting(x, y + vsp, obj_solid) && collisons)
{
	while(!place_meeting(x, y + sign(vsp), obj_solid))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

// Spin character on death
if (!collisons)
{
	image_angle += 8;
}

#endregion