if (y > 64 && y < room_height - 64 && spawn_gem)
{
	scr_audio("break");
	instance_create_layer(x, y, "Instances", obj_gem);
}