player_direction = point_direction(obj_player.x, obj_player.y, x, y)
direction = random_range(player_direction-120,player_direction+120);
speed = random_range(2,4);
alarm[0] = random_range(25,50);
motion_set(direction, speed);

image_speed = 0;

hsp = 0;
vsp = 0;
collisons = true;
grounded = false;
palpha = 1;
fadeout = false;