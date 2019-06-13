age += 1/room_speed;

target_distance = point_distance(x, y, target.x, target.y);
direction = point_direction(x, y, target.x, target.y);

if (age >= 0.3)
{
	speed += 0.5;
	//spd = (1/(target_distance/1500));
	//x = lerp(x, obj_player.x,0.05);
	//y = lerp(y, obj_player.y,0.05);
}
//speed = lerp(speed, spd, 0.1);
//speed = clamp(speed, 0, 8);

if (global.lose)
{
	instance_destroy();	
}