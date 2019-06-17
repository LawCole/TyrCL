/// @description 
#macro view view_camera[0]

camera_set_view_size(view,view_width,view_height);

if(instance_exists(obj_scroll))
{
	var _x = clamp(Player.x-view_width/2,0,room_width-view_width);
	var _y = clamp(obj_scroll.y-view_height/2,0,room_height-view_height);
	//var _x = obj_scroll.x;
	//var _y = obj_scroll.y;

	var _cur_x = camera_get_view_x(view);
	var _cur_y = camera_get_view_y(view);
	
	var _spd =.1;
	camera_set_view_pos(view, 
	floor(lerp(_cur_x, _x, _spd)), _y);
		
		//floor(lerp(_cur_x, _x, _spd)),
		//floor(lerp(_cur_y, _y, _spd)));
	
}