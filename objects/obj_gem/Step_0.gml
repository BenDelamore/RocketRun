age += 1/room_speed;

target_distance = point_distance(x, y, target.x, target.y);
direction = point_direction(x, y, target.x, target.y);

if (age >= 0.3)
{
	spd = (1/(target_distance/1500));
}
speed = lerp(speed, spd, 0.1);
speed = clamp(speed, 0, 8);

if (global.lose)
{
	instance_destroy();	
}