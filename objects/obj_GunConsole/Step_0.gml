/// @description

if (instance_exists(obj_player))
{
	if (point_distance(x, y, obj_player.x, obj_player.y) < 72)
	{
		image_index = 1;
		is_being_held = keyboard_check(ord("E"));
		
		if (keyboard_check_pressed(ord("E")))
		{
			frames_held = 0;
		}
		
		if (keyboard_check_released(ord("E")))
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
		is_being_held = false;
	}
}

if (is_being_held)
{
	frames_held += 1;
}
