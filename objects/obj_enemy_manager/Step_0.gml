/// @description Insert description here
// You can write your code in this editor
timer -=1;

var vw = camera_get_view_width(view_camera[0]); 
var vh = camera_get_view_height(view_camera[0]);

var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);

var offset = 32;

//if(object.x >= 0-offset) && (object.x <= vx+vw+offset) && (object.y >= 0+vy-offset) && (object.y <= vy+vh+offset) {
//      return false;
//    } else return true;

if timer <= 0 {
instance_activate_region(0-offset,vy-offset,vw,vh,true);
timer = m_timer;
}