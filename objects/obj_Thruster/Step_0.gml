
image_speed = 1

if (!obj_EngineConsole.is_active)
{
	if image_index >= 3
	{
		image_index = 0;
	}
}
else
{
	if image_index <= 2
	{
		image_index = 3;
	}
	scr_screen_shake(1.25, 1);
}
