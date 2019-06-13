scr_controls();

if (global.end_time > 120)
{
	show_card = true;
}

if (global.end_time > 30 && !grade_set)
{
	gems_lost = global.gems_before_end - global.gems;
	if (global.land_speed >= 0)
	{
		grade_value = 0;
	}
	if (global.land_speed > 4)
	{
		grade_value = 1;
	}
	if (global.land_speed > 7)
	{
		grade_value = 2;
	}
	if (global.land_speed > 11)
	{
		grade_value = 3;
	}
	if (global.land_speed > 15)
	{
		grade_value = 4;
	}
	if (global.land_speed > 19)
	{
		grade_value = 5;
	}
	grade_set = true;
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