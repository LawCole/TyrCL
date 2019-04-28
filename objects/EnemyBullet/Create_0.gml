/// @description Insert description here
// You can write your code in this editor

direction_x = Player.x;
direction_y = Player.y;
// impulse = point_distance(x,y,Player.x,Player.y);
mb_direction = point_direction(x,y,direction_x,direction_y);

bullet_spd = 3;
bullet_damage = 1;

image_xscale = image_xscale*0.5;
image_yscale = image_yscale*0.5;
