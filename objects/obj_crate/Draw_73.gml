draw_self();

if (player_in_range)
{
	draw_sprite(spr_block_target, 0, x, y);
	draw_sprite(spr_key_e, 0, x, y-48);
}