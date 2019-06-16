draw_self();

if ((frac(age/5) == 0 || age > 40) && age < 120)
{
	draw_sprite(spr_block_target, 0, x, y);
}

/*
if is_being_held = false
{
	thruster_image += 1

	draw_sprite(spr_rocket_thruster,thruster_image,x,32)

	if thruster_image >= 2
	{
		thruster_image = 0
	}
}
else
{
	thruster_image += 1
	
	draw_sprite(spr_rocket_thruster, thruster_image, x, 32)
	
	if thruster_image >= 5
	{
		thruster_image = 3
	}
}