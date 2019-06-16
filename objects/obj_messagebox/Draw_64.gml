draw_set_font(fnt_body);
draw_set_color(c_white);
draw_set_halign(1);
draw_set_valign(0);

//draw_text(1280/2, 64, string(age));

if (message_timer > 0)
{
	if ((frac(age/5) = 0) || age > 25)
	{
		draw_text(1280/2, 48, string(message_string));
	}
}