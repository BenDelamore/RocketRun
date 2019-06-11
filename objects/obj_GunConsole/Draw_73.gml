/// @description

if (is_being_held)
{
	if (frames_held > 90 && frames_held < 110)
	{
		draw_set_color(c_yellow);
		draw_set_alpha(0.5);
	}
	else
	{
		draw_set_color(c_aqua);
		draw_set_alpha(0.3);
	}
	
	draw_circle(x - 400, y - 100, 200 - (2*frames_held), false);
}
