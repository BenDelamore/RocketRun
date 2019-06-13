xspark = irandom(sprite_width)
yspark = irandom(sprite_height);

instance_create_layer(x + xspark,y + yspark, "Instances", obj_gem_sparkle);
alarm[0] = random_range(10,80);
