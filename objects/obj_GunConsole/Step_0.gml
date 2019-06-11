/// @description

if (instance_exists(obj_player))
{
	if (point_distance(x, y, obj_player.x, obj_player.y) < 72)
	{
		image_index = 1;
		if (keyboard_check_pressed(ord("E")))
		{
			var bullet = instance_create_layer(x, y, "Instances", obj_Bullet);
			bullet.x = x + spawn_x_offset;
			bullet.y = y + spawn_y_offset;
			bullet.direction = spawn_direction;
			bullet.image_angle = spawn_direction;
			bullet.speed = spawn_speed;
		}
	}
	else
	{
		image_index = 0;
	}
}

