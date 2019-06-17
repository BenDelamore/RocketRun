// Main title
draw_set_color($F5F5F5);
draw_set_halign(1);
draw_set_valign(1);
draw_set_font(fnt_title);
draw_set_alpha(1);

draw_text(640, 320, "ROCKET RUSH");

draw_set_font(fnt_body);

for (var i = 0; i < 3; i++)
{
	var yy = i * 60;
	
	if (i = 0) {var item = "Start";}
	if (i = 1) {var item = "Credits"}
	if (i = 2) {var item = "Exit"}
	
	draw_set_alpha(0.9);
	if (select = i)
	{
		draw_sprite(spr_menu_select, 0, 460, y + yy);
		draw_set_color($F5F5F5);
		draw_text(room_width/2, y + 29 + yy, item);
	}
	else 
	{
		draw_set_color($F5F5F5);
		draw_text(room_width/2, y + 29 + yy, item);
	}
}
draw_set_alpha(1);

// Fade in
draw_set_alpha(1-fade_a);
draw_set_color(c_black);
draw_rectangle(0, 0, 1280, 720, 0);
draw_set_alpha(1);