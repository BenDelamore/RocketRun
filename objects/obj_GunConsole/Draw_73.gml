/// @description draw is_being_held circle

if (is_being_held)
{
	if (is_in_sweet_spot)
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
