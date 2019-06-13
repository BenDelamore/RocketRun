var hsp = argument[0];

// Basic collisions and gravity

// Calculate gravity



if (global.is_paused)
{
	hsp = 0;
}
else
{
	vsp += global.grv;	
}

#region //  ---- COLLISIONS ----

// Horizontal Collision
if (place_meeting(x + hsp, y, obj_solid) && collisons)
{
	var xc = instance_place(x + hsp, y, obj_solid)
	
	while(!place_meeting(x + sign(hsp), y, obj_solid))
	{
		x = x + sign(hsp);
	}
	if (xc.collisons)
	{
		hsp = 0;
	}
}
x = x + hsp;

// Vertical Collision
if (place_meeting(x, y + vsp, obj_solid) && collisons)
{
	var yc = instance_place(x, y + vsp, obj_solid)
	
	while(!place_meeting(x, y + sign(vsp), obj_solid))
	{
		y = y + sign(vsp);
	}
	if (yc.collisons)
	{
		vsp = 0;
	}
}
y = y + vsp;

// Spin character on death
if (!collisons)
{
	image_angle += 8;
}

#endregion