/// @description DISPLAY PROPERTIES

ideal_width = 0;
ideal_height = 256;

zoom = 1;
max_zoom = 1;

aspect_ratio = display_get_width()/display_get_height();

ideal_width = round(ideal_height*aspect_ratio);
//ideal_height = round(ideal_height/aspect_ratio);

//PIXEL PERFECT SCALING
if(display_get_width() mod ideal_width !=0)
{
	var d = round(display_get_width()/ideal_width);
	ideal_width = display_get_width()/d;
}
if(display_get_height() mod ideal_height !=0)
{
	var d = round(display_get_height()/ideal_height);
	ideal_height = display_get_width()/d;
}

//check for odd numbers
if (ideal_width & 1)
	ideal_width++;
if (ideal_height & 1)
	ideal_height++;	
	
//calculate max zoom
max_zoom = floor(display_get_width()/ideal_width);
	
for (var i=1; i <=room_last; i++)
{
	if (room_exists(i))
	{
		//room_set_view(i,0,true,0,0,ideal_width,ideal_height,0,0,ideal_width,ideal_height,0,0,0,0,-1);
		room_set_view_enabled(i,true);
	}
}

surface_resize(application_surface,ideal_width,ideal_height);
display_set_gui_size(ideal_width,ideal_height);
window_set_size(ideal_width,ideal_height);

room_goto(room_next(room));