direction_x = mouse_x;
direction_y = mouse_y;

impulse = point_distance(x,y,direction_x,direction_y);
impulse = clamp(impulse,0,max_speed);
mb_direction = point_direction(x,y,direction_x,direction_y);

	//move in set direction
	
	var collision = collision_line(x,y, direction_x,direction_y, Solid,true,true);
	
	if (mouse_x != x) && (collision != true) {x += lengthdir_x(impulse,mb_direction);}
	if (mouse_y != y) && (collision != true) {y += lengthdir_y(impulse,mb_direction);}
	
	