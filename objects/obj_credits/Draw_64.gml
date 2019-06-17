if (room=room_last)
{
	draw_set_font(fnt_body);
	draw_set_color($f5f5f5);
	draw_set_halign(1);
	draw_set_valign(0);

	draw_text(640, 128, "CREATED BY");

	draw_set_font(fnt_body);

	draw_text(640, 256,"Ben Delamore (Scytheralin)");

	draw_text(640, 256+64,"Ryan Wilkinson (Wilkozox)");

	draw_text(640, 256+128,"Elijah Shadbolt (Cress)");
	
	draw_text(640, 256+192,"David Morris (Pixelgrapher)");

}

// Fade in
draw_set_alpha(1-fade_a);
draw_set_color(c_black);
draw_rectangle(0, 0, 1280, 720, 0);
draw_set_alpha(1);