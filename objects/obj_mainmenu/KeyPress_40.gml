/// @description go down in menu, if at the bottom, loop around

if selected_value < max_menu_value { 
	selected_value ++; 
	} else { selected_value = 0; }