scr_controls();

if (global.end_time > 2)
{
	show_card = true;
}

if (show_card)
{
	y = lerp(y, 0, 0.15);
	draw_alpha = lerp(draw_alpha, 1, 0.1);
}
else
{
	y = lerp(y, -64, 0.15);
	draw_alpha = lerp(draw_alpha, 0, 0.1);
}


if (key_act_p && age >= 180)
{
	room_goto(rm_title);
}