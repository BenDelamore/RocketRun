if (abs(speed) > 0.2)
{
	speed -= 0.05;
}
else
{
	speed = 0;
}

scr_move_OLD(hsp, vsp);

if (fadeout)
{
	palpha -= 0.05;
	if (palpha <= 0)
	{
		instance_destroy();
	}
}