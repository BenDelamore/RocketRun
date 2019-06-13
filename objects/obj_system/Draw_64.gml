// UI gradients
draw_sprite_ext(spr_ui_grad, 0, 0, 0, 1280, 1, 0, c_white, 0.25);
draw_sprite_ext(spr_ui_grad, 0, 0, 720, 1280, -1, 0, c_white, 0.25);

draw_set_color($F5F5F5);
draw_set_alpha(1);

// Stamina bar bg
//draw_rectangle(64, 63, 265, 69, 0);

// Progress bar bg
draw_set_alpha(0.75);
draw_rectangle(127, 656-1, 1280-127, 656+5+1, 0);

// Timer bar bg
//draw_rectangle(539, 72, 741, 78, 0);

draw_set_alpha(1.0);
draw_set_font(fnt_body);
draw_set_halign(0);
draw_set_valign(1);

//debug text
draw_text(16, 128, rocket_dist_cur);
draw_text(16, 160, rocket_speed_cur);

// Progress bar text
draw_text(128, 632, "Progress to Destination")

draw_set_halign(2);
// Progress bar value
draw_text(1280-127, 632, progress_value);

// Score
draw_set_alpha(0.9);
if (gem_counter_age <= 25)
{
	draw_set_alpha(1);
}
draw_sprite(spr_gem, 3, 1280-144, 44);
if (frac(gem_counter_age/5) == 0 || gem_counter_age > 25)
{
	draw_text(1280-48, 48, global.gems);
}
draw_set_alpha(0.5);
draw_line(1280-160, 66, 1280-48, 66);
draw_set_alpha(1);

draw_set_color($339933);
// Stamina bar
//draw_rectangle(65, 64, 200 * clamp((obj_player.sp_cur/obj_player.sp_max), 0, 1) + 64, 68, 0);

draw_set_color($583AE9);
// Timer bar
//draw_rectangle(540, 73, (200 * (global.timer_cur/global.timer_max)) + 540, 77, 0);

draw_set_color($333333);
if (global.win) {draw_set_color($367a1f);}
if (global.lose) {draw_set_color($2626d9);}
//Progress bar
draw_rectangle(128, 656, round(1024 * progress_adj + 128), 656+5, 0);