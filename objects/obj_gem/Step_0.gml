age += 1/room_speed;

target_distance = point_distance(x, y, target.x, target.y);
direction = point_direction(x, y, target.x, target.y);

if (age >= 0.5)
{
	speed = (1/(target_distance/1500));
}

speed = clamp(speed, 0, 8);

if (global.lose)
{
	instance_destroy();	
}