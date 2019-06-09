
// NOTE: the camera view[0] is tied to obj_scroll, it doesn't follow the player object itself 

if !instance_exists(Player) {
	global.scroll_stop = false;
}

if camera_get_view_y(view_camera[0]) = 0 { global.scroll_stop = true;}
//DOESN'T WORK, CAMERA JUMPS FROM 0 TO PLAYER AND STOPS IMMEDIATELY
if global.scroll_stop == true { global.scroll_speed = 0;}

y -= global.scroll_speed; 