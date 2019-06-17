gemType = irandom_range(0,2);
image_speed = 0;
image_index = gemType;

target = obj_player;

age = 0;
spd = 0;
xpos = x;
ypos = y;
speed = 0;

gemValue = 1 + (gemType * 2);

alarm[0] = random_range(10,80);
