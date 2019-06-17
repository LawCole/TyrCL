
// NOTE: the camera view[0] is tied to obj_scroll, it doesn't follow the player object itself 

//if !instance_exists(Player) {
//	global.scroll_stop = false;
//}


switch (scroll_state) {
    case scroll_state.init:
		for (var i = startup_delay; i > 0; --i) {scroll_state = scroll_state.scroll;}
        break;
	case scroll_state.scroll:
		global.scroll_speed = scroll_spd_internal;
		y -= global.scroll_speed; 
		if camera_get_view_y(view_camera[0]) <= 0 {scroll_state = scroll_state.scroll_stop;}
		break;
	case scroll_state.scroll_wait:
		
		break;
	case scroll_state.scroll_stop:
		global.scroll_speed = 0;
		break;
    default:
        // code here
        break;
}

// BACKGROUND PARALLAX

layer_y("TILE_foreground", y*0.075);
layer_y("TILE_above_ground", y*0.05);
layer_y("TILE_ground", y*0.025);

layer_x("TILE_foreground", ceil(Player.x - camera_get_view_width(view_camera[0])/2)*0);
layer_x("TILE_above_ground", ceil(Player.x - camera_get_view_width(view_camera[0])/2)*0);
layer_x("TILE_ground", + ceil(Player.x - camera_get_view_width(view_camera[0])/2)*0);