// play a sound of a defined type

var sound_type;
sound_type=argument0;

if (global.sound) 
{
	switch (sound_type)
	{
		case "tap": // navigate menu
		audio_play_sound(sfx_tap,64,0);
		break;
		
		case "select": // select menu
		audio_play_sound(sfx_select,64,0);
		break;
		
		case "music": //background music
		audio_sound_gain(sfx_music_title, 0, 2000)
		audio_sound_gain(sfx_music_safe, .33, 0)
		if (!audio_is_playing(sfx_music_safe))
		{
			audio_play_sound(sfx_music_safe,64,1);
		}
		break;
		
		case "musicT": //background music
		audio_sound_gain(sfx_music_safe, 0, 1000)
		audio_sound_gain(sfx_music_title, .4, 1000)
		if (!audio_is_playing(sfx_music_title))
		{
			audio_play_sound(sfx_music_title,64,1);
		}
		break;
		
		case "break": // break block
		audio_play_sound(sfx_break, 64, 0);
		audio_sound_pitch(sfx_break, 1.1 - random(0.2));
		break;
		
		case "laser": // Gun fire
		audio_play_sound(sfx_laser, 64, 0);
		audio_sound_pitch(sfx_laser, 1.1 - random(0.2));
		break;
		
		case "thruster":
		if (obj_EngineConsole.is_active)
		{
			if (!audio_is_playing(sfx_thruster))
			{
				audio_sound_pitch(sfx_thruster, 0.7);
				audio_play_sound(sfx_thruster,64,1);
			}
		}
		else
		{
			audio_stop_sound(sfx_thruster);
		}
		break;
		
		/*
		case "danger": // danger level 1
		var danger2_value = 1 - (clamp(abs(obj_player.y - obj_water.y)/128 ,0 ,1 ));
		audio_sound_gain(sfx_static, danger2_value * 0.5, 0);
		if (!global.is_dead && abs(obj_player.y - obj_water.y) < 128)
		{
			if (!audio_is_playing(sfx_static))
			{
				audio_play_sound(sfx_static, 16, 1);
			}
		}
		else
		{
			audio_stop_sound(sfx_static);	
		}
		break;
		*/
		
		case "death": // player or animal death
		if (!audio_is_playing(sfx_death) && !global.is_dead)
		{
			audio_play_sound(sfx_death,64,0);
		}
		break;
		
		case "coin": // coin pickup
		audio_play_sound(sfx_coin,64,0);
		audio_sound_pitch(sfx_coin, 1.1 - random(0.2));
		break;
	}
}
else
{
	audio_stop_all();	
}