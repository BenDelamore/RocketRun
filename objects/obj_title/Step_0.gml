fade_a = lerp(fade_a, 1, 0.02);

scr_controls();

select -= key_up_p;
select += key_down_p;
if select > 2 {select = 0;}
if select < 0 {select = 2;}
	
if (key_up_p || key_down_p)
{
	//scr_audio("tap");
}

if (key_act_p)
{
	//scr_audio("select");
	
	if (select == 0)
	{
		room_goto(rm_RocketDescent);
	}
	
	if (select == 1)
	{
		room_goto(rm_credits);
	}
	
	if (select == 2)
	{
		game_end();
	}
}

if (audio_sound_get_gain(sfx_music_safe) == 0)
{
	audio_stop_sound(sfx_music_safe)
}
