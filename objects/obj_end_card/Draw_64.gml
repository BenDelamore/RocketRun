if (draw_alpha > 0 && grade_set)
{
	draw_set_alpha(draw_alpha * 0.1);
	draw_set_color($f5f5f5);
	draw_rectangle(0, 0, 1280, 720, 0);
	
	draw_set_alpha(draw_alpha);

	draw_sprite(spr_end_card_back, 0, 462, 150 + y);
	
	draw_set_font(fnt_title);
	draw_set_halign(1);
	draw_set_valign(0);
	draw_set_color($f5f5f5);
	
	draw_text(640, 176 + y, grade[grade_value]);
	
	draw_set_font(fnt_body_small);
	draw_text_ext(640, 366 + y, end_text[grade_value], 24, 280);
	
	draw_text(640, 514 + y, gem_text[grade_value]);
	
	draw_set_halign(2);
	draw_text(685, 436 + y, global.gems_before_end);
	draw_text(685, 470 + y, "- " + string(global.gems_lost));
	
}

draw_set_alpha(1);
