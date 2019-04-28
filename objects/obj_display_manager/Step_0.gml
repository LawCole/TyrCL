/// @description zoom window

if (keyboard_check_pressed(ord("Z")))
{
	zoom++;
	clamp(zoom,1,max_zoom);
	
	window_set_size(ideal_width*zoom,ideal_height*zoom);
	surface_resize(application_surface,ideal_width*zoom,ideal_height*zoom);
	alarm[0]=1;
}

