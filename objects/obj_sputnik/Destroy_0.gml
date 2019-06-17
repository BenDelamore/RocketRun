if (y > 64 && y < room_height - 64 && spawn_gem)
{
	scr_audio("break");
	repeat(8)
	{
		with (instance_create_layer(random_range(x-24, x+24), random_range(y-24, y+24), "Instances", obj_gem))
		{
			speed = 3;
			direction = random_range(0,360);
		}
	}
}