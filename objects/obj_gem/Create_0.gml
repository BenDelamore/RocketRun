gemType = irandom_range(0,2);
image_speed = 0;
image_index = gemType;

target = obj_player;
target_distance = point_distance(x, y, target.x, target.y);
direction = point_direction(x, y, target.x, target.y)

age = 0;
speed = 0;

gemValue = 1 + (gemType * 2);

alarm[0] = random_range(10,80);
