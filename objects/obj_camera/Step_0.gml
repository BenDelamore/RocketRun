//follow_x = clamp(obj_player.x, 640, room_width-640);

if (obj_EngineConsole.is_active)
{
	offset = 16;
}
else
{
	offset = 0;
}

x = lerp(x, obj_player.x, lerp_speed);
y = lerp(y, obj_player.y + offset, lerp_speed);

draw_alpha = lerp(draw_alpha, 1, 0.05);
if (global.game_time >= 5)
{
	lerp_speed = 0.1;	
}

// Screen shake
x += random_range(-shake_remain,shake_remain);
y += random_range(-shake_remain,shake_remain);
shake_remain = max(0, shake_remain - ((1/shake_length) * shake_magnitude));