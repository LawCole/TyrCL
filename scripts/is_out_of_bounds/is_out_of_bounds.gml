// is_out_of_bounds(obj_name)
object = argument0;

var vw = camera_get_view_width(view_camera[0]); 
var vh = camera_get_view_height(view_camera[0]);

if(object.x >= 0) && (object.x <= vw) && (object.y >= 0) && (object.y <= vh) {
      return false;
    } else return true;
	
	
//var vx = camera_get_view_x(view_camera[0]);
//var vy = camera_get_view_y(view_camera[0]);


//if(object.x >= 0) && (object.x <= vx) && (object.y >= 0) && (object.y <= vy) {
//      return false;
//    } else return true;