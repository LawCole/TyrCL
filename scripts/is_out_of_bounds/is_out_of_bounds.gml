// is_out_of_bounds(obj_name)
object = argument0;

var vw = camera_get_view_width(view_camera[0]); 
var vh = camera_get_view_height(view_camera[0]);

//var offset = 32;

//if(object.x >= 0 - offset) && (object.x <= vw + offset) && (object.y >= 0 - offset) && (object.y <= vh + offset) {
//      return false;
//    } else return true;
	
	
var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);

var offset = 32;

if(object.x >= 0-offset) && (object.x <= vx+vw+offset) && (object.y >= 0+vy-offset) && (object.y <= vy+vh+offset) {
      return false;
    } else return true;