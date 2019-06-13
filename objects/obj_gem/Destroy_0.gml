scr_block_destroy();
if (!global.lose)
{
	global.gems += irandom_range(12, 18) * 10;
	obj_system.gem_counter_age = 1;
}