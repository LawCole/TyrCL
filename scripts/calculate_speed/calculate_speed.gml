//calculates vertical/horizontal speed based on change of position of instance between steps

var direction_step = point_direction(xprevious,yprevious,x,y);
var distance_step = point_distance(xprevious,yprevious,x,y);

hspd = lengthdir_x(distance_step,direction_step);
hspd = clamp(hspd,0,max_speed);
vspd = lengthdir_y(distance_step,direction_step);
vspd = clamp(vspd,0,max_speed);