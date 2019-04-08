/// @description Insert description here
// You can write your code in this editor

//MOVE BULLET

x += lengthdir_x(bullet_spd,mb_direction);
y += lengthdir_y(bullet_spd,mb_direction);

//CHECK FOR COLLISION WITH PLAYER OR OUT OF BOUNDS

var checkOOB = is_out_of_bounds(self);
//var player_collision = collision_point(Player.x,Player.y,Player,false,false);

if checkOOB == true {
	instance_destroy(self);
}

//if player_collision == true {
//	instance_destroy(self);
//	Player.damage_buffer += bullet_damage;
//}