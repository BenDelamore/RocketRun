if (y > 64 && y < room_height - 64 && spawn_gem)
{
	instance_create_layer(x, y, "Instances", obj_gem);
}