
image_speed = 1

if is_enabled = false
{
	if image_index >= 3
	{
		image_index = 0
	}
}
else
{
	if image_index <= 2
	{
		image_index = 3
	}
}
