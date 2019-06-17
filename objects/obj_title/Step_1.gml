if (mx != mouse_x || my != mouse_y)
{
	if (obj_messagebox.message_timer <= 0)
	{
		scr_message("This game is keyboard controlled", 5);
	}	
}