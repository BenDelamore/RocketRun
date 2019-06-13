if (message_timer > 0)
{
	message_timer -= 1/60;
	age += 1;
}

if (message_timer <= 0)
{
	message_string = 0;
	age = 0;
}