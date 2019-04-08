direction_x = mouse_x;
direction_y = mouse_y;

impulse = point_distance(x,y,mouse_x,mouse_y);
mb_direction = point_direction(x,y,direction_x,direction_y);

	//move in set direction
	
	if mouse_x != x {x += lengthdir_x(impulse,mb_direction);}
	if mouse_y != y {y += lengthdir_y(impulse,mb_direction);}