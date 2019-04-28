/// @description draw menu

text_x = window_get_width()/2;

draw_set_halign(fa_center);
draw_set_valign(fa_top);

for (var i = 0; i < (max_menu_value+1); i++;)
   {
   if i == selected_value {
	draw_set_color(c_yellow);
   } else {
	   draw_set_color(c_white);
	   }
   draw_text(text_x, i* 32 , menu_option[i]);
   }
