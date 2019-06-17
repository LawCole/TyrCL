/// @description collide with flying enemies

var dir = point_direction(other.x,other.y,x,y);
speed_push[0] += lengthdir_x(.1,dir);
speed_push[1] += lengthdir_y(.1,dir);

if mercy <= 0 {
	other.flashAlpha = 1;
	damage_buffer += ceil(other.enemy_hp_max/20);
	mercy = room_speed/6;
	other.enemy_hp -= other.enemy_hp_max/2;
}